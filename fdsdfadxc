local VALID_KEYS = {
	["HungAPI"] = true,
}

local userKey = getgenv().Nah
if not userKey or not VALID_KEYS[userKey] then
	repeat task.wait()
    until game:IsLoaded()
    game.Players.LocalPlayer:Kick("[hungquan99] Invalid key/usage.")
end

local detectedExecutor = "Unknown"
local function exists(func)
    return pcall(function() return func and type(func) == "function" end)
end
local environmentData = {
    ["Identify Executor"] = exists(identifyexecutor) and identifyexecutor(),
    ["Get Executor Name"] = exists(getexecutorname) and getexecutorname(),
    ["Check Synapse"] = exists(syn) and "Synapse",
    ["Check Secure Call"] = exists(secure_call) and "Has secure_call",
    ["Check Set Clipboard"] = exists(setclipboard) and "Has setclipboard",
    ["Check Hook Function"] = exists(hookfunction) and "Has hookfunction",
    ["Check Replace Closure"] = exists(replaceclosure) and "Has replaceclosure",
    ["Check Read File"] = exists(readfile) and "Has readfile",
    ["Check Write File"] = exists(writefile) and "Has writefile",
    ["Check Debug Get Info"] = exists(debug) and exists(debug.getinfo) and "Has debug.getinfo",
    ["Check Crypt"] = exists(crypt) and "Has crypt module",
    ["Check Get Hidden GUI"] = exists(get_hidden_gui) and "Has get_hidden_gui",
    ["Check Websocket"] = exists(websocket) and "Has websocket",
    ["Check Get Prop Value"] = exists(getpropvalue) and "Has getpropvalue",
}
for key, value in pairs(environmentData) do
    if value and value ~= true then
        detectedExecutor = value
    break
    end
end
if environmentData["Identify Executor"] then
    detectedExecutor = environmentData["Identify Executor"]
elseif environmentData["Get Executor Name"] then
    detectedExecutor = environmentData["Get Executor Name"]
end
if detectedExecutor:lower():find("xeno") or detectedExecutor:lower():find("solara") or detectedExecutor:lower():find("nezur") then
    repeat task.wait()
    until game:IsLoaded()
    game.Players.LocalPlayer:Kick("YOUR EXECUTORS IS NOT SUPPORTED FOR THIS SCRIPT, use executor level 7+")

else

	clonefunc = clonefunction(clonefunction) or function(a)
		return a
	end

	local deletefile = clonefunc(delfile)
	local pc = clonefunc(pcall)
	local floor = clonefunc(math.floor)
	local toNum = clonefunc(tonumber)
	local s_byte = clonefunc(string.byte)
	local s_char = clonefunc(string.char)
	local s_gsub = clonefunc(string.gsub)
	local s_sub = clonefunc(string.sub)
	local s_find = clonefunc(string.find)
	local s_format = clonefunc(string.format)
	local o_date = clonefunc(os.date)
	local t_insert = clonefunc(table.insert)
	local t_concat = clonefunc(table.concat)
	local cf = clonefunc(cloneref)
	local HttpService = cf(game:GetService("HttpService"))

	local reqm = http_request or request or (syn and syn.request) or httprequest
	local req = clonefunc(reqm)

	local hq99 = {}

	-- Binary to binary string
	local function b2b(b)
		local r = ""
		for i = 7, 0, -1 do
			r = r .. (floor(b / (2^i)) % 2 == 1 and "1" or "0")
		end
		return r
	end

	-- String to XZ format
	local function s2xz(s)
		local r = ""
		for i = 1, #s do
			r = r .. b2b(s_byte(s, i))
		end
		return s_gsub(s_gsub(r, "1", "X"), "0", "Z")
	end

	-- XZ to String
	local function xz2s(xz)
		local b = s_gsub(s_gsub(xz, "X", "1"), "Z", "0")
		local t = {}
		for i = 1, #b, 8 do
			local c = s_sub(b, i, i + 7)
			if #c == 8 then
				t_insert(t, s_char(toNum(c, 2)))
			end
		end
		return t_concat(t)
	end

	-- Caesar encrypt
	local function caesarEncrypt(str, shift)
		local r = {}
		for i = 1, #str do
			local byte = s_byte(str, i)
			t_insert(r, s_char((byte + shift) % 256))
		end
		return t_concat(r)
	end

	-- Caesar decrypt
	local function caesarDecrypt(str, shift)
		local r = {}
		for i = 1, #str do
			local byte = s_byte(str, i)
			t_insert(r, s_char((byte - shift) % 256))
		end
		return t_concat(r)
	end

	-- Final encryption with Caesar + XZ
	local function enc(s)
		return caesarEncrypt(s2xz(s), 7)
	end

	-- Final decryption with Caesar + XZ
	local function dec(r)
		return {
			body = xz2s(caesarDecrypt(r.body or "", 7)),
			statusCode = toNum(xz2s(caesarDecrypt(r.status_code or "0", 7))) or 0,
			headers = HttpService:JSONDecode(xz2s(caesarDecrypt(r.headers or "{}", 7)))
		}
	end

	local function HttpRequest(o)
		local b = enc(HttpService:JSONEncode(o))
		local s, r = pc(function()
			a = req({
				Url = "https://spy.pandadevelopment.net/ahs", -- replace with your url
				Method = "POST",
				Headers = {["Content-Type"] = "application/json"},
				Body = HttpService:JSONEncode({Encrypted = true, Data = b})
			})
			return a
		end)
		if s and r then
		local d
		local succ, result = pcall(function()
			return HttpService:JSONDecode(r.Body)
		end)
		if succ then
			d = result
		else
		d = r.Body
		end
			local j = dec(d)
			return {Body = j.body, StatusCode = j.statusCode, Headers = j.headers}
		end
	end

	-- Simple GET
	hq99.HttpGet = function(u)
		local r = HttpRequest({
			Url = u,
			Method = "GET",
			Headers = {
			["User-Agent"] = "hq99Core"
			}
		})
		return r.Body
	end

	-- Simple POST
	hq99.HttpPost = function(u, h, b)
		return HttpRequest({
			Url = u,
			Method = "POST",
			Headers = h or {
			["Content-Type"] = "application/json"},
			Body = HttpService:JSONEncode(b or {})
		})
	end

	hq99.getVersion = function()
	return "Custom Secure - a2.1", "Custom"
	end

	hq99.CrashUser = function()
	getgenv().CrashSecure = true
	end

	hq99.request = HttpRequest

	local funcs; funcs = setmetatable({}, {
		__index = function(_, key)
			if key == "HttpGet" then
				return hq99.HttpGet
			elseif key == "HttpPost" then
				return hq99.HttpPost
			elseif key == "request" then
				return hq99.request
			elseif key == "CrashUser" then
				return hq99.CrashUser
			elseif key == "getVersion" then
				return hq99.getVersion
			else
				return nil
			end
		end,
		__newindex = function(_, key, _)
			pcall(function()
				local Players = game:GetService("Players")
				Players.LocalPlayer:Kick("Attempt to tamper with AHS: " .. tostring(key))
				task.wait(1)
				while true do end
			end)
		end,
		__metatable = "Tampering with Anti Http Spy, is not allowed!"
	})

	return funcs
end
