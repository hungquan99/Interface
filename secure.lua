--[[
    HungQuan99 • Anti-HTTP-Spy  v2.0-rev1
    • Improved integrity check (uses debug metadata, not raw pointer)
    • Kicks/crashes on real tampering but lets clean environments run
--]]

--------------------------------------------------------------------
--  🔐 INTERNAL HELPERS
--------------------------------------------------------------------
local clonefunc  = clonefunction(clonefunction) or function(v) return v end
local pcall      = clonefunc(pcall)
local floor      = clonefunc(math.floor)
local tonumber   = clonefunc(tonumber)
local s_byte     = clonefunc(string.byte)
local s_char     = clonefunc(string.char)
local s_sub      = clonefunc(string.sub)
local s_gsub     = clonefunc(string.gsub)
local t_insert   = clonefunc(table.insert)
local t_concat   = clonefunc(table.concat)
local cloneref   = clonefunc(cloneref)

local HttpService = cloneref(game:GetService("HttpService"))
local Players     = cloneref(game:GetService("Players"))

local raw_request = http_request or request or (syn and syn.request) or httprequest
local request     = clonefunc(raw_request)

--------------------------------------------------------------------
--  🔍 TAMPER-DETECTION UTILITIES
--------------------------------------------------------------------
local function kick(reason)
    Players.LocalPlayer:Kick(reason or "Anti-HTTP-Spy: tampering detected")
    task.wait(1)
    while true do end
end

-- returns hooked:boolean , message:string
local function isHooked(func, name)
    -- removed / not a function?
    if typeof(func) ~= "function" then
        return true, "Missing function: "..name
    end

    -- C-closures from Roblox / exploit should report info.what == "C"
    if debug and debug.getinfo then
        local ok, info = pcall(debug.getinfo, func, "S")
        if ok and info and info.what == "Lua" then
            return true, "Hooked function: "..name
        end
    end

    return false, ""
end

-- check critical APIs
do
    local toCheck = {
        {request,                   "request"},
        {HttpService.JSONEncode,    "HttpService.JSONEncode"},
        {HttpService.JSONDecode,    "HttpService.JSONDecode"},
    }
    for _, pair in ipairs(toCheck) do
        local hooked, msg = isHooked(pair[1], pair[2])
        if hooked then
            kick("Detected: "..msg)
        end
    end
end

--------------------------------------------------------------------
--  🔑 ENCRYPTION / OBFUSCATION
--------------------------------------------------------------------
local function b2b(b)
    local r = ""
    for i = 7, 0, -1 do
        r ..= (floor(b / 2^i) % 2 == 1 and "1" or "0")
    end
    return r
end

local function s2xz(s)
    local r = ""
    for i = 1, #s do
        r ..= b2b(s_byte(s, i))
    end
    return s_gsub(s_gsub(r, "1", "X"), "0", "Z")
end

local function xz2s(xz)
    local b = s_gsub(s_gsub(xz, "X", "1"), "Z", "0")
    local out = {}
    for i = 1, #b, 8 do
        local byteStr = s_sub(b, i, i + 7)
        if #byteStr == 8 then
            t_insert(out, s_char(tonumber(byteStr, 2)))
        end
    end
    return t_concat(out)
end

local function caesar(str, shift)
    local out = {}
    for i = 1, #str do
        t_insert(out, s_char((s_byte(str, i) + shift) % 256))
    end
    return t_concat(out)
end

local function enc(s) return caesar(s2xz(s),  7) end
local function dec(r) return caesar(r, -7) end

--------------------------------------------------------------------
--  🕸️ REQUEST WRAPPER WITH STACK-OVERFLOW TEST
--------------------------------------------------------------------
local function wrap(f)
    return function(...)
        local co = coroutine.create(f)
        local ok, err = coroutine.resume(co, ...)
        if not ok then error(err, 2) end
    end
end

local function Overflow(func)
    for _ = 1, 300 do func = wrap(func) end
    return func
end

local function HttpRequest(payload)
    -- provoke a stack-overflow if the original request got replaced by Lua
    local okOverflow = pcall(Overflow(request))
    if not okOverflow then
        kick("Request tampering detected")
    end

    local encPayload = enc(HttpService:JSONEncode(payload))

    local success, resp = pcall(function()
        return request({
            Url     = "https://hungquan99.xyz/ahs",
            Method  = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body    = HttpService:JSONEncode({Encrypted = true, Data = encPayload})
        })
    end)

    if not success or not resp then
        return {Body = "", StatusCode = 0, Headers = {}}
    end

    local ok, decoded = pcall(HttpService.JSONDecode, HttpService, resp.Body)
    if not ok then
        return {Body = "", StatusCode = resp.StatusCode or 0, Headers = {}}
    end

    local j = (function(d)
        return {
            body       = xz2s(dec(d.body or "")),
            statusCode = tonumber(xz2s(dec(d.status_code or "0"))) or 0,
            headers    = HttpService:JSONDecode(xz2s(dec(d.headers or "{}")))
        }
    end)(decoded)

    return {Body = j.body, StatusCode = j.statusCode, Headers = j.headers}
end

--------------------------------------------------------------------
--  📡 PUBLIC API
--------------------------------------------------------------------
local api = {}

function api.HttpGet(url)
    return HttpRequest({
        Url     = url,
        Method  = "GET",
        Headers = {["User-Agent"] = "hq99Secure"}
    }).Body
end

function api.HttpPost(url, headers, body)
    return HttpRequest({
        Url     = url,
        Method  = "POST",
        Headers = headers or {["Content-Type"] = "application/json"},
        Body    = HttpService:JSONEncode(body or {})
    })
end

function api.getVersion()  return "Enhanced Secure - v2.0-rev1", "AHS" end
function api.CrashUser()   while true do task.spawn(function() end) end end
api.request = HttpRequest  -- expose low-level wrapper

--------------------------------------------------------------------
--  🛡️ READ-ONLY FACADE
--------------------------------------------------------------------
local proxy = setmetatable({}, {
    __index = api,
    __newindex = function(_, key, _)
        kick("Attempt to tamper with AHS: "..tostring(key))
    end,
    __metatable = "Protected: Anti-HTTP-Spy system"
})

return proxy
