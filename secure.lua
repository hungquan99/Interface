local clonefunc = clonefunction(clonefunction) or function(v) return v end

local delfile = clonefunc(delfile)
local pcall = clonefunc(pcall)
local floor = clonefunc(math.floor)
local tonumber = clonefunc(tonumber)
local s_byte = clonefunc(string.byte)
local s_char = clonefunc(string.char)
local s_sub = clonefunc(string.sub)
local s_gsub = clonefunc(string.gsub)
local s_find = clonefunc(string.find)
local s_format = clonefunc(string.format)
local o_date = clonefunc(os.date)
local t_insert = clonefunc(table.insert)
local t_concat = clonefunc(table.concat)
local cloneref = clonefunc(cloneref)
local HttpService = cloneref(game:GetService("HttpService"))

local raw_request = http_request or request or (syn and syn.request) or httprequest
local request = clonefunc(raw_request)

-- Tamper Protection
local function detectTampering()
    local ok, res = pcall(function()
        return getfenv(1)
    end)
    if not ok or typeof(debug) ~= "table" then
        game:GetService("Players").LocalPlayer:Kick("Tampering detected [env/debug]")
        task.wait(1)
        while true do end
    end
end

detectTampering()

-- Function identity check (clone vs hook detection)
local function isHooked(func, name)
    if not func then return true end
    local original = clonefunc(func)
    return original ~= func, "Hooked function: " .. name
end

local hookedFuncs = {
    {request, "request"},
    {HttpService.JSONEncode, "HttpService.JSONEncode"},
    {HttpService.JSONDecode, "HttpService.JSONDecode"},
}

for _, v in pairs(hookedFuncs) do
    local hooked, msg = isHooked(unpack(v))
    if hooked then
        game:GetService("Players").LocalPlayer:Kick("Detected: " .. msg)
        task.wait(1)
        while true do end
    end
end

-- Encoding/Encryption Logic
local function b2b(b)
    local r = ""
    for i = 7, 0, -1 do
        r = r .. (floor(b / (2^i)) % 2 == 1 and "1" or "0")
    end
    return r
end

local function s2xz(s)
    local r = ""
    for i = 1, #s do
        r = r .. b2b(s_byte(s, i))
    end
    return s_gsub(s_gsub(r, "1", "X"), "0", "Z")
end

local function xz2s(xz)
    local b = s_gsub(s_gsub(xz, "X", "1"), "Z", "0")
    local t = {}
    for i = 1, #b, 8 do
        local c = s_sub(b, i, i + 7)
        if #c == 8 then
            t_insert(t, s_char(tonumber(c, 2)))
        end
    end
    return t_concat(t)
end

local function caesarEncrypt(str, shift)
    local r = {}
    for i = 1, #str do
        t_insert(r, s_char((s_byte(str, i) + shift) % 256))
    end
    return t_concat(r)
end

local function caesarDecrypt(str, shift)
    local r = {}
    for i = 1, #str do
        t_insert(r, s_char((s_byte(str, i) - shift) % 256))
    end
    return t_concat(r)
end

local function enc(s)
    return caesarEncrypt(s2xz(s), 7)
end

local function dec(r)
    return {
        body = xz2s(caesarDecrypt(r.body or "", 7)),
        statusCode = tonumber(xz2s(caesarDecrypt(r.status_code or "0", 7))) or 0,
        headers = HttpService:JSONDecode(xz2s(caesarDecrypt(r.headers or "{}", 7)))
    }
end

-- Overflow-based hook test
local function wrap(f)
    return function(...)
        local t = coroutine.create(f)
        local ok, err = coroutine.resume(t, ...)
        if not ok then error(err, 2) end
    end
end

local function Overflow(f)
    for _ = 1, 300 do
        f = wrap(f)
    end
    return f
end

-- HTTP Protection Layer
local function HttpRequest(o)
    local test = pcall(Overflow(request))
    if not test then
        game:GetService("Players").LocalPlayer:Kick("Request tampering detected.")
        task.wait(1)
        while true do end
    end

    local encPayload = enc(HttpService:JSONEncode(o))

    local success, response = pcall(function()
        return request({
            Url = "https://hungquan99.xyz/ahs",
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = HttpService:JSONEncode({Encrypted = true, Data = encPayload})
        })
    end)

    if success and response then
        local ok, decoded = pcall(function()
            return HttpService:JSONDecode(response.Body)
        end)
        if ok then
            local j = dec(decoded)
            return {Body = j.body, StatusCode = j.statusCode, Headers = j.headers}
        end
    end
end

-- Public API
local hq99 = {}

hq99.HttpGet = function(url)
    local r = HttpRequest({
        Url = url,
        Method = "GET",
        Headers = {["User-Agent"] = "hq99Secure"}
    })
    return r.Body
end

hq99.HttpPost = function(url, headers, body)
    return HttpRequest({
        Url = url,
        Method = "POST",
        Headers = headers or {["Content-Type"] = "application/json"},
        Body = HttpService:JSONEncode(body or {})
    })
end

hq99.getVersion = function()
    return "Enhanced Secure - v2.0", "AHS"
end

hq99.CrashUser = function()
    getgenv().CrashSecure = true
    while true do task.spawn(function() end) end
end

hq99.request = HttpRequest

-- Lock exposed functions
local funcs = setmetatable({}, {
    __index = function(_, key)
        return hq99[key]
    end,
    __newindex = function(_, key, _)
        game:GetService("Players").LocalPlayer:Kick("Tampering attempt: " .. tostring(key))
        task.wait(1)
        while true do end
    end,
    __metatable = "Protected: Anti HTTP Spy system."
})

return funcs
