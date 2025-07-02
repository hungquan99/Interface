--// Globals
local print = print
local error = error
local setmetatable = setmetatable
local rawset = rawset
local rawget = rawget
local pairs = pairs
local newproxy = newproxy
local getmetatable = getmetatable
local typeof = typeof
local assert = assert
local tostr = tostring
--// bit32
local bit32_bxor = bit32.bxor
local bit32_rrotate = bit32.rrotate

-- os
local os_clock = os.clock
local os_time = os.time

-- string
local string_format = string.format
local string_sub = string.sub
local string_pack = string.pack

--// buffer
local buffer_copy = buffer.copy
local buffer_fill = buffer.fill
local buffer_create = buffer.create
local buffer_fromstring = buffer.fromstring
local buffer_len = buffer.len
local buffer_readu8 = buffer.readu8
local buffer_readu16 = buffer.readu16
local buffer_readu32 = buffer.readu32
local buffer_tostring = buffer.tostring
local buffer_writestring = buffer.writestring
local buffer_writeu8 = buffer.writeu8
local buffer_writeu16 = buffer.writeu16
local buffer_writeu32 = buffer.writeu32

--// math
local math_floor = math.floor
local math_random = math.random

--// Internal
local _ENV = getfenv()
local _VERSION = (if _VERSION:find(("Lune\0"):gsub("\0", "")) then "\0Lune" else "Luau")
local request = (_VERSION == "\0Lune" and require("@lune/net").request or request)
local gethwid = (_VERSION == "\0Lune" and function()
	return "spxnso"
end or gethwid or function()
	return string.gsub(game:GetService("RbxAnalyticsService"):GetClientId(), "-", "")
end)

local __START__ = os_clock()
local __USER_KEY__ = function(...)
	do while true do end end
end
local __CRASH__ = function(num)
	print("[" .. num .. "]: Crashed")
end
local __JUMPS__ = 0

local __SERVICE__ = function(...)
	__CRASH__(0) do while true do end end
end

local __SILENTMODE__ = function(...)
	__CRASH__(16) do while true do end end
end

local __PRINT__ = function(...)
	if not __SILENTMODE__ then
		print(...)
	end
end

__JUMPS__ += 4.5 -- 4.5
-- antihooks
local __JUNK_CODE__ = function(expectedType, ...)
	if expectedType == "table" then
		local junkTbl = {}
		local maxIdx = math_random(2, 10)
		if maxIdx < 2 and maxIdx > 10 then
			__CRASH__(1) do while true do end end
		end

		for i = 1, math_random(2, 10) do
			local randomStr = tostring({}) .. math_random(1e6, 1e6 + 1e6)
			junkTbl[randomStr] = tostring({}) .. math_random(1e6, 1e6 + 1e6)
		end
		return junkTbl
	else
		expectedType = "table"
		return __JUNK_CODE__("table", __JUNK_CODE__("table"))
	end
end

-- check if a given func is a cclosure
local __IS_C_CLOSURE__ = function(closure)
	local s1 = (pcall(function()
		setfenv(closure, getfenv(closure))
	end))

	return not s1
end

-- thanks liker
local __C_STACK_OVERFLOW__ = function(closure)
	for _ = 1, 198 do
		closure = coroutine.wrap(closure)
	end

	local s, e = pcall(closure)
	if (not s) and string.find(e, "C stack overflow") then
		return true
	end

	return false
end

local __WRAP_CLOSURE__ = function(closure)
	local totalWrapped = 0

	local wrapFunc = function(f)
		return function(f1)
			return f1
		end
	end

	local wrapReturn = function(f)
		totalWrapped = totalWrapped + 1
		if totalWrapped == 82 then
			totalWrapped = 0
			return f
		end

		return wrapFunc(function(f1)
			return f1
		end)(f)
	end
	return wrapReturn(closure)
end

local __WRAP_TABLE__ = function(secret)
	local totalWrapped = 0

	local wrapFunc = function(tbl)
		return {
			__index = function()
				return tbl
			end,
		}
	end

	local wrapReturn = function(tbl)
		totalWrapped = totalWrapped + 1
		if totalWrapped == 82 then
			totalWrapped = 0
			return tbl
		end

		return wrapFunc({
			__index = function()
				return tbl
			end,
		}).__index()
	end

	return wrapReturn(secret)
end

local errors = 0
do
	xpcall(tostring, function()
		errors += 1
	end)
	xpcall(setmetatable, function()
		errors += 1
	end)
	xpcall(setfenv, function()
		errors += 1
	end)
	xpcall(buffer.tostring, function()
		errors += 1
	end)

	if errors ~= 4 then
		__CRASH__(2) do while true do end end
	end
end

__JUMPS__ += 5.5 -- 10

__JUMPS__ += 123 -- 133
--// External
local Pelinda = {}
Pelinda.__index = Pelinda

function Pelinda.GetKeyLink(content)
	___SERVICE__ = content.Service
	or (function(...)
		__CRASH__(6) do while true do end end
	end)(___SERVICE__, __JUNK_CODE__("table"))

	local RevenueMode = game:HttpGet("https://pandadevelopment.net/api/revenue-mode?service=" .. ___SERVICE__)
	local Mode = (RevenueMode):match('{"revenueMode":"(.-)"}')

	if Mode == "SECUREDLINKVERTISE" or Mode == "SECUREDLOOTLABS" or Mode == "SECUREDLINKVERTISEANDLOOTLABS" then
		return "https://pandadevelopment.net/getkey/proceed_hwid?service=" .. ___SERVICE__ .. "&hwid=" .. gethwid()
	else
		return "https://pandadevelopment.net/getkey?service=" .. ___SERVICE__ .. "&hwid=" .. gethwid()
    end
end

function Pelinda.Init(content)
	local task = (if _VERSION:find("Luau") then task else require("@lune/task"))
	local junk = __JUNK_CODE__("table")


	--// Expected:
	--// content.Service: string, content.SilentMode: boolean, content.Key

	--// for gc enjoyers
	local content = content
	local securityLevel = content.SecurityLevel or 1
	content.Callback = function(...)
		__CRASH__(7) do while true do end end
	end

	local smType = type(__SILENTMODE__)

	task.spawn(function()
		junk[setmetatable] = __C_STACK_OVERFLOW__(setmetatable) or not __IS_C_CLOSURE__(setmetatable)
		junk[tostring] = __C_STACK_OVERFLOW__(setmetatable) or not __IS_C_CLOSURE__(setmetatable)
		junk[math.random] = __C_STACK_OVERFLOW__(math.random) or not __IS_C_CLOSURE__(math.random)
		while smType == "function" do
			for i, v in pairs(junk) do
				if v == true then
					do
						__CRASH__(8) do while true do end end
						for i, v in pcall do
						end
					end
				end
			end
			smType = type(__SILENTMODE__)
			task.wait(math_random(0.001, 0.01))
		end
		junk["nil"] = "os.time"
	end)

	__SERVICE__ = content.Service
		or (function(...)
			__CRASH__(9) do while true do end end
		end)(__SERVICE__, __JUNK_CODE__("table"))

	__SILENTMODE__ = if content.SilentMode ~= nil
		then content.SilentMode
		else (function(...)
			__CRASH__(10) do while true do end end
		end)(__SILENTMODE__, __JUNK_CODE__("table"))

	__LICENSE_KEY__ = content.Key
		or (function(...)
			__CRASH__(11) do while true do end end
		end)(__LICENSE_KEY__, __JUNK_CODE__("table"))

	local __USER_ENV__ = getfenv(2)

	return setmetatable({ Validated = __JUNK_CODE__("table"), APIKey = math_random(1e6, 1e6 + 1e6) }, {
		__index = function(self, idx)
			local tbl = __JUNK_CODE__("table")
			__CRASH__(12) do while true do end end
			return rawget(tbl, idx)
		end,
		__newindex = function(self, idx)
			local tbl = __JUNK_CODE__("table")
			__CRASH__(13) do while true do end end
			return rawset(tbl, idx)
		end,
		__tostring = function(self, idx)
			__CRASH__(14) do while true do end end
			return tostring(__JUNK_CODE__("table"))
		end,
		__call = __WRAP_CLOSURE__(function(...)
			local Rng = {
				["\0generateSeed"] = function()
					local time = os.time()
					local clock = os.clock()
					local pid = math.floor(math.random() * 1e6)

					local seed = (time * 1664525 + clock + pid) % (2 ^ 32)
					return seed
				end,

				["\0lcg"] = function(seed, count, min, max)
					local numbers = {}
					local a = 1664525
					local c = 1013904223
					local m = 2 ^ 32

					local num = seed
					for i = 1, count do
						num = (a * num + c) % m
						numbers[i] = min + (num % (max - min + 1))
					end
					return numbers
				end,
				["\0sign"] = function(num, secret)
					--// num -= (secret % 1000) ^ 2
					num += (#secret % 1000) ^ 2
					return num
				end,
			}
			local Json = function()
				local json = {}

				-- Internal functions.

				local function kind_of(obj)
					if type(obj) ~= "table" then
						return type(obj)
					end

					local i = 1

					for _ in pairs(obj) do
						if obj[i] ~= nil then
							i = i + 1
						else
							return "table"
						end
					end

					if i == 1 then
						return "table"
					else
						return "array"
					end
				end

				local function escape_str(s)
					local in_char = { "\\", '"', "/", "\b", "\f", "\n", "\r", "\t" }
					local out_char = { "\\", '"', "/", "b", "f", "n", "r", "t" }

					for i, c in ipairs(in_char) do
						s = s:gsub(c, "\\" .. out_char[i])
					end
					return s
				end

				-- Returns pos, did_find; there are two cases:
				-- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
				-- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
				-- This throws an error if err_if_missing is true and the delim is not found.
				local function skip_delim(str, pos, delim, err_if_missing)
					pos = pos + #str:match("^%s*", pos)
					if str:sub(pos, pos) ~= delim then
						if err_if_missing then
							error("Expected " .. delim .. " near position " .. pos)
						end
						return pos, false
					end
					return pos + 1, true
				end

				-- Expects the given pos to be the first character after the opening quote.
				-- Returns val, pos; the returned pos is after the closing quote character.
				local function parse_str_val(str, pos, val)
					val = val or ""
					local early_end_error = "End of input found while parsing string."
					if pos > #str then
						error(early_end_error)
					end
					local c = str:sub(pos, pos)
					if c == '"' then
						return val, pos + 1
					end
					if c ~= "\\" then
						return parse_str_val(str, pos + 1, val .. c)
					end
					-- We must have a \ character.
					local esc_map = { b = "\b", f = "\f", n = "\n", r = "\r", t = "\t" }
					local nextc = str:sub(pos + 1, pos + 1)
					if not nextc then
						error(early_end_error)
					end
					return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
				end

				-- Returns val, pos; the returned pos is after the number's final character.
				local function parse_num_val(str, pos)
					local num_str = str:match("^-?%d+%.?%d*[eE]?[+-]?%d*", pos)
					local val = tonumber(num_str)
					if not val then
						error("Error parsing number at position " .. pos .. ".")
					end
					return val, pos + #num_str
				end

				-- Public values and functions.

				function json.stringify(obj, as_key)
					local s = {}
					local kind = kind_of(obj)
					if kind == "array" then
						if as_key then error("Can't encode array as key.") end
						table.insert(s, "[")
						for i, val in ipairs(obj) do
							if i > 1 then table.insert(s, ",") end
							table.insert(s, json.stringify(val))
						end
						table.insert(s, "]")
					elseif kind == "table" then
						if as_key then error("Can't encode table as key.") end
						table.insert(s, "{")
						local first = true
						for k, v in pairs(obj) do
							if not first then table.insert(s, ",") end
							first = false
							table.insert(s, json.stringify(k, true))
							table.insert(s, ":")
							table.insert(s, json.stringify(v))
					    end
						table.insert(s, "}")
					elseif kind == "string" then
						return '"' .. escape_str(obj) .. '"'
					elseif kind == "number" then
						return as_key and '"' .. tostr(obj) .. '"' or tostr(obj)
					elseif kind == "boolean" then
						return tostr(obj)
					elseif kind == "nil" then
						return "null"
					elseif kind == "userdata" then
						return '"' .. tostr(obj) .. '"'
					else
						error("Unjsonifiable type: " .. kind)
					end
					return (function(t, sep, i, j)sep = sep or ""; i = i or 1; j = j or #t; local r = "" for k = i, j do r = r .. tostring(t[k]) if k < j then r = r .. sep end end return r end)(s)
				end

				json.null = {} -- This is a one-off table to represent the null value.

				function json.parse(str, pos, end_delim)
					pos = pos or 1
					if pos > #str then
						error("Reached unexpected end of input.")
					end
					local first = str:sub(pos, pos)
					if first == "{" then
						local obj, key, delim_found = {}, nil, true
						pos += 1
						while true do
							key, pos = json.parse(str, pos, "}")
							if key == nil then return obj, pos end
							if not delim_found then error("Comma missing between object items.") end
							pos = (skip_delim(str, pos, ":", true))
							obj[key], pos = json.parse(str, pos)
							pos, delim_found = skip_delim(str, pos, ",")
						end
					elseif first == "[" then
						local arr, val, delim_found = {}, nil, true
						pos += 1
						while true do
							val, pos = json.parse(str, pos, "]")
							if val == nil then return arr, pos end
							if not delim_found then error("Comma missing between array items.") end
							table.insert(arr, val)
							pos, delim_found = skip_delim(str, pos, ",")
					    end
					elseif first == '"' then
						return parse_str_val(str, pos + 1)
					elseif first == "-" or first:match("%d") then
						return parse_num_val(str, pos)
					elseif first == end_delim then
						return nil, pos + 1
					else
						for k, v in pairs({ ["true"] = true, ["false"] = false, ["null"] = json.null }) do
							if str:sub(pos, pos + #k - 1) == k then
								return v, pos + #k
							end
						end
						error("Invalid json syntax at position " .. pos)
					end
				end

				return json
			end
				  
			local Cryptography = __WRAP_TABLE__({
				["\0AES"] = function(masterKey)
					----------------------------------------------------------------------------------------------
					--  LOOKUP TABLES (or buffers)
					----------------------------------------------------------------------------------------------
					local S_BOX_16 = buffer_create(131072) -- 16-bit LUT S-box
					local S_MIX0 = buffer_create(65536) -- 2 . S(b0) ^ 3 . S(b1)
					local S_MIX1 = buffer_create(65536) -- S(b0) ^ S(b1)
					local INV_S_XOR = buffer_create(65536) -- InvS(b0 ^ b1)
					local INV_MIX0 = buffer_create(65536) -- 14 . b0 ^ 11 . b1
					local INV_MIX1 = buffer_create(65536) -- 13 . b0 ^ 9 . b1

					----------------------------------------------------------------------------------------------
					--  MODES
					----------------------------------------------------------------------------------------------
					local CBCMode = {
						FwdMode = function(encp, _, text, out, _, iv)
							local len = buffer_len(text) - 16
							assert(len % 16 == 0, "Input length must be a multiple of 16 bytes")
							iv = iv or buffer_create(16)
							assert(buffer_len(iv) == 16, "Initialization vector must be 16 bytes long")
							buffer_writeu32(out, 0, bit32_bxor(buffer_readu32(text, 0), buffer_readu32(iv, 0)))
							buffer_writeu32(out, 4, bit32_bxor(buffer_readu32(text, 4), buffer_readu32(iv, 4)))
							buffer_writeu32(out, 8, bit32_bxor(buffer_readu32(text, 8), buffer_readu32(iv, 8)))
							buffer_writeu32(out, 12, bit32_bxor(buffer_readu32(text, 12), buffer_readu32(iv, 12)))
							encp(out, 0, out, 0)
							for offs = 16, len, 16 do
								buffer_writeu32(
									out,
									offs,
									bit32_bxor(buffer_readu32(text, offs), buffer_readu32(out, offs - 16))
								)
								buffer_writeu32(
									out,
									offs + 4,
									bit32_bxor(buffer_readu32(text, offs + 4), buffer_readu32(out, offs - 12))
								)
								buffer_writeu32(
									out,
									offs + 8,
									bit32_bxor(buffer_readu32(text, offs + 8), buffer_readu32(out, offs - 8))
								)
								buffer_writeu32(
									out,
									offs + 12,
									bit32_bxor(buffer_readu32(text, offs + 12), buffer_readu32(out, offs - 4))
								)
								encp(out, offs, out, offs)
							end
						end,
						InvMode = function(_, decp, ciph, out, _, iv)
							local len = buffer_len(ciph) - 16
							assert(len % 16 == 0, "Input length must be a multiple of 16 bytes")
							iv = iv or buffer_create(16)
							assert(buffer_len(iv) == 16, "Initialization vector must be 16 bytes long")
							local w0 = buffer_readu32(ciph, 0)
							local w1 = buffer_readu32(ciph, 4)
							local w2 = buffer_readu32(ciph, 8)
							local w3 = buffer_readu32(ciph, 12)
							local w4, w5, w6, w7
							decp(ciph, 0, out, 0)
							buffer_writeu32(out, 0, bit32_bxor(buffer_readu32(out, 0), buffer_readu32(iv, 0)))
							buffer_writeu32(out, 4, bit32_bxor(buffer_readu32(out, 4), buffer_readu32(iv, 4)))
							buffer_writeu32(out, 8, bit32_bxor(buffer_readu32(out, 8), buffer_readu32(iv, 8)))
							buffer_writeu32(out, 12, bit32_bxor(buffer_readu32(out, 12), buffer_readu32(iv, 12)))
							for offs = 16, len, 16 do
								w4 = buffer_readu32(ciph, offs)
								w5 = buffer_readu32(ciph, offs + 4)
								w6 = buffer_readu32(ciph, offs + 8)
								w7 = buffer_readu32(ciph, offs + 12)
								decp(ciph, offs, out, offs)
								buffer_writeu32(out, offs, bit32_bxor(buffer_readu32(out, offs), w0))
								buffer_writeu32(out, offs + 4, bit32_bxor(buffer_readu32(out, offs + 4), w1))
								buffer_writeu32(out, offs + 8, bit32_bxor(buffer_readu32(out, offs + 8), w2))
								buffer_writeu32(out, offs + 12, bit32_bxor(buffer_readu32(out, offs + 12), w3))
								w0, w1, w2, w3 = w4, w5, w6, w7
							end
						end,
					}

					----------------------------------------------------------------------------------------------
					--  PADS
					----------------------------------------------------------------------------------------------
					local Pkcs7 = {
						Pad = function(text, out, segm)
							local len = buffer_len(text)
							local offs = len - len % segm
							if out then
								assert(buffer_len(out) >= len + segm, "Output buffer out of bounds")
							else
								out = buffer_create(offs + segm)
							end
							local offb = segm - len % segm
							buffer_copy(out, 0, text, 0, len)
							buffer_fill(out, len, offb, offb)
							return out
						end,
						Unpad = function(text, out, segm)
							local len = buffer_len(text)
							local offs = buffer_readu8(text, len - 1)
							local offb = len - offs
							assert(0 < offs and offs <= segm, "Got unexpected padding")
							for offb = offb, len - 2 do
								if buffer_readu8(text, offb) ~= offs then
									error("Got unexpected padding")
								end
							end
							if out then
								assert(buffer_len(out) >= offb, "Output buffer out of bounds")
							else
								out = buffer_create(offb)
							end
							buffer_copy(out, 0, text, 0, offb)
							return out
						end,
						Overwrite = nil,
					}

					----------------------------------------------------------------------------------------------
					--  RIJNDAEL FUNCTIONS
					----------------------------------------------------------------------------------------------
					-- Key expansion
					local function keySchedule(key: buffer | string, len: number, out: buffer, raw: boolean): buffer
						if raw then -- If input is buffer then copy the bytes
							buffer_copy(out, 0, key :: buffer, 0, len)
						else -- otherwise write the string into the buffer
							buffer_writestring(out, 0, key :: string, len)
						end
						local word = bit32_rrotate(buffer_readu32(out, len - 4), 8) -- Integers use little-endian codification
						local rc = 0.5 -- RCON LUT is not needed

						if len == 32 then -- AES-256, 15 key rounds
							for offs = 32, 192, 32 do
								rc = rc * 2 % 229
								word = bit32_bxor(
									buffer_readu32(out, offs - 32),
									buffer_readu16(S_BOX_16, math_floor(word / 65536) * 2) * 65536
										+ buffer_readu16(S_BOX_16, word % 65536 * 2),
									rc
								)
								buffer_writeu32(out, offs, word)

								word = bit32_bxor(buffer_readu32(out, offs - 28), word)
								buffer_writeu32(out, offs + 4, word)
								word = bit32_bxor(buffer_readu32(out, offs - 24), word)
								buffer_writeu32(out, offs + 8, word)
								word = bit32_bxor(buffer_readu32(out, offs - 20), word)
								buffer_writeu32(out, offs + 12, word)

								word = bit32_bxor(
									buffer_readu32(out, offs - 16),
									buffer_readu16(S_BOX_16, math_floor(word / 65536) * 2) * 65536
										+ buffer_readu16(S_BOX_16, word % 65536 * 2)
								)
								buffer_writeu32(out, offs + 16, word)

								word = bit32_bxor(buffer_readu32(out, offs - 12), word)
								buffer_writeu32(out, offs + 20, word)
								word = bit32_bxor(buffer_readu32(out, offs - 8), word)
								buffer_writeu32(out, offs + 24, word)
								word = bit32_bxor(buffer_readu32(out, offs - 4), word)
								buffer_writeu32(out, offs + 28, word)
								word = bit32_rrotate(word, 8)
							end
							word = bit32_bxor(
								buffer_readu32(out, 192),
								buffer_readu16(S_BOX_16, math_floor(word / 65536) * 2) * 65536
									+ buffer_readu16(S_BOX_16, word % 65536 * 2),
								64
							)
							buffer_writeu32(out, 224, word)

							word = bit32_bxor(buffer_readu32(out, 196), word)
							buffer_writeu32(out, 228, word)
							word = bit32_bxor(buffer_readu32(out, 200), word)
							buffer_writeu32(out, 232, word)
							buffer_writeu32(out, 236, bit32_bxor(buffer_readu32(out, 204), word))
						elseif len == 24 then -- AES-192, 13 key rounds
							for offs = 24, 168, 24 do
								rc = rc * 2 % 229
								word = bit32_bxor(
									buffer_readu32(out, offs - 24),
									buffer_readu16(S_BOX_16, math_floor(word / 65536) * 2) * 65536
										+ buffer_readu16(S_BOX_16, word % 65536 * 2),
									rc
								)
								buffer_writeu32(out, offs, word)

								word = bit32_bxor(buffer_readu32(out, offs - 20), word)
								buffer_writeu32(out, offs + 4, word)
								word = bit32_bxor(buffer_readu32(out, offs - 16), word)
								buffer_writeu32(out, offs + 8, word)
								word = bit32_bxor(buffer_readu32(out, offs - 12), word)
								buffer_writeu32(out, offs + 12, word)
								word = bit32_bxor(buffer_readu32(out, offs - 8), word)
								buffer_writeu32(out, offs + 16, word)
								word = bit32_bxor(buffer_readu32(out, offs - 4), word)
								buffer_writeu32(out, offs + 20, word)
								word = bit32_rrotate(word, 8)
							end
							word = bit32_bxor(
								buffer_readu32(out, 168),
								buffer_readu16(S_BOX_16, math_floor(word / 65536) * 2) * 65536
									+ buffer_readu16(S_BOX_16, word % 65536 * 2),
								128
							)
							buffer_writeu32(out, 192, word)

							word = bit32_bxor(buffer_readu32(out, 172), word)
							buffer_writeu32(out, 196, word)
							word = bit32_bxor(buffer_readu32(out, 176), word)
							buffer_writeu32(out, 200, word)
							buffer_writeu32(out, 204, bit32_bxor(buffer_readu32(out, 180), word))
						else -- AES-128, 11 key rounds
							for offs = 16, 144, 16 do
								rc = rc * 2 % 229
								word = bit32_bxor(
									buffer_readu32(out, offs - 16),
									buffer_readu16(S_BOX_16, math_floor(word / 65536) * 2) * 65536
										+ buffer_readu16(S_BOX_16, word % 65536 * 2),
									rc
								)
								buffer_writeu32(out, offs, word)

								word = bit32_bxor(buffer_readu32(out, offs - 12), word)
								buffer_writeu32(out, offs + 4, word)
								word = bit32_bxor(buffer_readu32(out, offs - 8), word)
								buffer_writeu32(out, offs + 8, word)
								word = bit32_bxor(buffer_readu32(out, offs - 4), word)
								buffer_writeu32(out, offs + 12, word)
								word = bit32_rrotate(word, 8)
							end
							word = bit32_bxor(
								buffer_readu32(out, 144),
								buffer_readu16(S_BOX_16, math_floor(word / 65536) * 2) * 65536
									+ buffer_readu16(S_BOX_16, word % 65536 * 2),
								54
							)
							buffer_writeu32(out, 160, word)

							word = bit32_bxor(buffer_readu32(out, 148), word)
							buffer_writeu32(out, 164, word)
							word = bit32_bxor(buffer_readu32(out, 152), word)
							buffer_writeu32(out, 168, word)
							buffer_writeu32(out, 172, bit32_bxor(buffer_readu32(out, 156), word))
						end
						return out
					end

					-- Block encryption
					local function encryptBlock(
						keym: buffer,
						lenm: number,
						text: buffer,
						offs: number,
						out: buffer,
						offt: number
					): ()
						-- Initialize matrix construction and round key addition
						local b0 = bit32_bxor(buffer_readu8(text, offs), buffer_readu8(keym, 0))
						local b1 = bit32_bxor(buffer_readu8(text, offs + 1), buffer_readu8(keym, 1))
						local b2 = bit32_bxor(buffer_readu8(text, offs + 2), buffer_readu8(keym, 2))
						local b3 = bit32_bxor(buffer_readu8(text, offs + 3), buffer_readu8(keym, 3))
						local b4 = bit32_bxor(buffer_readu8(text, offs + 4), buffer_readu8(keym, 4))
						local b5 = bit32_bxor(buffer_readu8(text, offs + 5), buffer_readu8(keym, 5))
						local b6 = bit32_bxor(buffer_readu8(text, offs + 6), buffer_readu8(keym, 6))
						local b7 = bit32_bxor(buffer_readu8(text, offs + 7), buffer_readu8(keym, 7))
						local b8 = bit32_bxor(buffer_readu8(text, offs + 8), buffer_readu8(keym, 8))
						local b9 = bit32_bxor(buffer_readu8(text, offs + 9), buffer_readu8(keym, 9))
						local b10 = bit32_bxor(buffer_readu8(text, offs + 10), buffer_readu8(keym, 10))
						local b11 = bit32_bxor(buffer_readu8(text, offs + 11), buffer_readu8(keym, 11))
						local b12 = bit32_bxor(buffer_readu8(text, offs + 12), buffer_readu8(keym, 12))
						local b13 = bit32_bxor(buffer_readu8(text, offs + 13), buffer_readu8(keym, 13))
						local b14 = bit32_bxor(buffer_readu8(text, offs + 14), buffer_readu8(keym, 14))
						local b15 = bit32_bxor(buffer_readu8(text, offs + 15), buffer_readu8(keym, 15))
						-- Shifts rows and setting variables for mixing columns
						local i0 = b0 * 256 + b5
						local i1 = b5 * 256 + b10
						local i2 = b10 * 256 + b15
						local i3 = b15 * 256 + b0
						local i4 = b4 * 256 + b9
						local i5 = b9 * 256 + b14
						local i6 = b14 * 256 + b3
						local i7 = b3 * 256 + b4
						local i8 = b8 * 256 + b13
						local i9 = b13 * 256 + b2
						local i10 = b2 * 256 + b7
						local i11 = b7 * 256 + b8
						local i12 = b12 * 256 + b1
						local i13 = b1 * 256 + b6
						local i14 = b6 * 256 + b11
						local i15 = b11 * 256 + b12

						for offs = 16, lenm, 16 do
							-- Use S_MIX LUTs for SubBytes and MixColumns at once, then AddRoundKey
							b0 = bit32_bxor(
								buffer_readu8(S_MIX0, i0),
								buffer_readu8(S_MIX1, i2),
								buffer_readu8(keym, offs)
							)
							b1 = bit32_bxor(
								buffer_readu8(S_MIX0, i1),
								buffer_readu8(S_MIX1, i3),
								buffer_readu8(keym, offs + 1)
							)
							b2 = bit32_bxor(
								buffer_readu8(S_MIX0, i2),
								buffer_readu8(S_MIX1, i0),
								buffer_readu8(keym, offs + 2)
							)
							b3 = bit32_bxor(
								buffer_readu8(S_MIX0, i3),
								buffer_readu8(S_MIX1, i1),
								buffer_readu8(keym, offs + 3)
							)
							b4 = bit32_bxor(
								buffer_readu8(S_MIX0, i4),
								buffer_readu8(S_MIX1, i6),
								buffer_readu8(keym, offs + 4)
							)
							b5 = bit32_bxor(
								buffer_readu8(S_MIX0, i5),
								buffer_readu8(S_MIX1, i7),
								buffer_readu8(keym, offs + 5)
							)
							b6 = bit32_bxor(
								buffer_readu8(S_MIX0, i6),
								buffer_readu8(S_MIX1, i4),
								buffer_readu8(keym, offs + 6)
							)
							b7 = bit32_bxor(
								buffer_readu8(S_MIX0, i7),
								buffer_readu8(S_MIX1, i5),
								buffer_readu8(keym, offs + 7)
							)
							b8 = bit32_bxor(
								buffer_readu8(S_MIX0, i8),
								buffer_readu8(S_MIX1, i10),
								buffer_readu8(keym, offs + 8)
							)
							b9 = bit32_bxor(
								buffer_readu8(S_MIX0, i9),
								buffer_readu8(S_MIX1, i11),
								buffer_readu8(keym, offs + 9)
							)
							b10 = bit32_bxor(
								buffer_readu8(S_MIX0, i10),
								buffer_readu8(S_MIX1, i8),
								buffer_readu8(keym, offs + 10)
							)
							b11 = bit32_bxor(
								buffer_readu8(S_MIX0, i11),
								buffer_readu8(S_MIX1, i9),
								buffer_readu8(keym, offs + 11)
							)
							b12 = bit32_bxor(
								buffer_readu8(S_MIX0, i12),
								buffer_readu8(S_MIX1, i14),
								buffer_readu8(keym, offs + 12)
							)
							b13 = bit32_bxor(
								buffer_readu8(S_MIX0, i13),
								buffer_readu8(S_MIX1, i15),
								buffer_readu8(keym, offs + 13)
							)
							b14 = bit32_bxor(
								buffer_readu8(S_MIX0, i14),
								buffer_readu8(S_MIX1, i12),
								buffer_readu8(keym, offs + 14)
							)
							b15 = bit32_bxor(
								buffer_readu8(S_MIX0, i15),
								buffer_readu8(S_MIX1, i13),
								buffer_readu8(keym, offs + 15)
							)
							-- Shift rows and setting variables for next round
							i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15 =
								b0 * 256 + b5,
								b5 * 256 + b10,
								b10 * 256 + b15,
								b15 * 256 + b0,
								b4 * 256 + b9,
								b9 * 256 + b14,
								b14 * 256 + b3,
								b3 * 256 + b4,
								b8 * 256 + b13,
								b13 * 256 + b2,
								b2 * 256 + b7,
								b7 * 256 + b8,
								b12 * 256 + b1,
								b1 * 256 + b6,
								b6 * 256 + b11,
								b11 * 256 + b12
						end

						-- Last round sets all bytes into the output buffer
						buffer_writeu32(
							out,
							offt,
							bit32_bxor(
								buffer_readu16(
									S_BOX_16,
									bit32_bxor(
										buffer_readu8(S_MIX0, i15),
										buffer_readu8(S_MIX1, i13),
										buffer_readu8(keym, lenm + 31)
									)
											* 512
										+ bit32_bxor(
												buffer_readu8(S_MIX0, i10),
												buffer_readu8(S_MIX1, i8),
												buffer_readu8(keym, lenm + 26)
											)
											* 2
								)
										* 65536
									+ buffer_readu16(
										S_BOX_16,
										bit32_bxor(
											buffer_readu8(S_MIX0, i5),
											buffer_readu8(S_MIX1, i7),
											buffer_readu8(keym, lenm + 21)
										)
												* 512
											+ bit32_bxor(
													buffer_readu8(S_MIX0, i0),
													buffer_readu8(S_MIX1, i2),
													buffer_readu8(keym, lenm + 16)
												)
												* 2
									),
								buffer_readu32(keym, lenm + 32)
							)
						)
						buffer_writeu32(
							out,
							offt + 4,
							bit32_bxor(
								buffer_readu16(
									S_BOX_16,
									bit32_bxor(
										buffer_readu8(S_MIX0, i3),
										buffer_readu8(S_MIX1, i1),
										buffer_readu8(keym, lenm + 19)
									)
											* 512
										+ bit32_bxor(
												buffer_readu8(S_MIX0, i14),
												buffer_readu8(S_MIX1, i12),
												buffer_readu8(keym, lenm + 30)
											)
											* 2
								)
										* 65536
									+ buffer_readu16(
										S_BOX_16,
										bit32_bxor(
											buffer_readu8(S_MIX0, i9),
											buffer_readu8(S_MIX1, i11),
											buffer_readu8(keym, lenm + 25)
										)
												* 512
											+ bit32_bxor(
													buffer_readu8(S_MIX0, i4),
													buffer_readu8(S_MIX1, i6),
													buffer_readu8(keym, lenm + 20)
												)
												* 2
									),
								buffer_readu32(keym, lenm + 36)
							)
						)
						buffer_writeu32(
							out,
							offt + 8,
							bit32_bxor(
								buffer_readu16(
									S_BOX_16,
									bit32_bxor(
										buffer_readu8(S_MIX0, i7),
										buffer_readu8(S_MIX1, i5),
										buffer_readu8(keym, lenm + 23)
									)
											* 512
										+ bit32_bxor(
												buffer_readu8(S_MIX0, i2),
												buffer_readu8(S_MIX1, i0),
												buffer_readu8(keym, lenm + 18)
											)
											* 2
								)
										* 65536
									+ buffer_readu16(
										S_BOX_16,
										bit32_bxor(
											buffer_readu8(S_MIX0, i13),
											buffer_readu8(S_MIX1, i15),
											buffer_readu8(keym, lenm + 29)
										)
												* 512
											+ bit32_bxor(
													buffer_readu8(S_MIX0, i8),
													buffer_readu8(S_MIX1, i10),
													buffer_readu8(keym, lenm + 24)
												)
												* 2
									),
								buffer_readu32(keym, lenm + 40)
							)
						)
						buffer_writeu32(
							out,
							offt + 12,
							bit32_bxor(
								buffer_readu16(
									S_BOX_16,
									bit32_bxor(
										buffer_readu8(S_MIX0, i11),
										buffer_readu8(S_MIX1, i9),
										buffer_readu8(keym, lenm + 27)
									)
											* 512
										+ bit32_bxor(
												buffer_readu8(S_MIX0, i6),
												buffer_readu8(S_MIX1, i4),
												buffer_readu8(keym, lenm + 22)
											)
											* 2
								)
										* 65536
									+ buffer_readu16(
										S_BOX_16,
										bit32_bxor(
											buffer_readu8(S_MIX0, i1),
											buffer_readu8(S_MIX1, i3),
											buffer_readu8(keym, lenm + 17)
										)
												* 512
											+ bit32_bxor(
													buffer_readu8(S_MIX0, i12),
													buffer_readu8(S_MIX1, i14),
													buffer_readu8(keym, lenm + 28)
												)
												* 2
									),
								buffer_readu32(keym, lenm + 44)
							)
						)
					end

					local function decryptBlock(
						keym: buffer,
						lenm: number,
						ciph: buffer,
						offs: number,
						out: buffer,
						offt: number
					): ()
						-- Initialize matrix construction and round key addition, InvSubBytes, InvShiftRows and another AddRoundKey
						local b0 = bit32_bxor(
							buffer_readu8(INV_S_XOR, buffer_readu8(ciph, offs) * 256 + buffer_readu8(keym, lenm + 32)),
							buffer_readu8(keym, lenm + 16)
						)
						local b1 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 13) * 256 + buffer_readu8(keym, lenm + 45)
							),
							buffer_readu8(keym, lenm + 17)
						)
						local b2 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 10) * 256 + buffer_readu8(keym, lenm + 42)
							),
							buffer_readu8(keym, lenm + 18)
						)
						local b3 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 7) * 256 + buffer_readu8(keym, lenm + 39)
							),
							buffer_readu8(keym, lenm + 19)
						)
						local b4 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 4) * 256 + buffer_readu8(keym, lenm + 36)
							),
							buffer_readu8(keym, lenm + 20)
						)
						local b5 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 1) * 256 + buffer_readu8(keym, lenm + 33)
							),
							buffer_readu8(keym, lenm + 21)
						)
						local b6 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 14) * 256 + buffer_readu8(keym, lenm + 46)
							),
							buffer_readu8(keym, lenm + 22)
						)
						local b7 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 11) * 256 + buffer_readu8(keym, lenm + 43)
							),
							buffer_readu8(keym, lenm + 23)
						)
						local b8 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 8) * 256 + buffer_readu8(keym, lenm + 40)
							),
							buffer_readu8(keym, lenm + 24)
						)
						local b9 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 5) * 256 + buffer_readu8(keym, lenm + 37)
							),
							buffer_readu8(keym, lenm + 25)
						)
						local b10 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 2) * 256 + buffer_readu8(keym, lenm + 34)
							),
							buffer_readu8(keym, lenm + 26)
						)
						local b11 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 15) * 256 + buffer_readu8(keym, lenm + 47)
							),
							buffer_readu8(keym, lenm + 27)
						)
						local b12 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 12) * 256 + buffer_readu8(keym, lenm + 44)
							),
							buffer_readu8(keym, lenm + 28)
						)
						local b13 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 9) * 256 + buffer_readu8(keym, lenm + 41)
							),
							buffer_readu8(keym, lenm + 29)
						)
						local b14 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 6) * 256 + buffer_readu8(keym, lenm + 38)
							),
							buffer_readu8(keym, lenm + 30)
						)
						local b15 = bit32_bxor(
							buffer_readu8(
								INV_S_XOR,
								buffer_readu8(ciph, offs + 3) * 256 + buffer_readu8(keym, lenm + 35)
							),
							buffer_readu8(keym, lenm + 31)
						)
						-- Setting variables for inverse mixing columns
						local i0 = b0 * 256 + b1
						local i1 = b1 * 256 + b2
						local i2 = b2 * 256 + b3
						local i3 = b3 * 256 + b0
						local i4 = b4 * 256 + b5
						local i5 = b5 * 256 + b6
						local i6 = b6 * 256 + b7
						local i7 = b7 * 256 + b4
						local i8 = b8 * 256 + b9
						local i9 = b9 * 256 + b10
						local i10 = b10 * 256 + b11
						local i11 = b11 * 256 + b8
						local i12 = b12 * 256 + b13
						local i13 = b13 * 256 + b14
						local i14 = b14 * 256 + b15
						local i15 = b15 * 256 + b12

						for offs = lenm, 16, -16 do
							-- Use INV_MIX LUTs for InvMixColumns, shift, InvSubBytes and finally AddRoundKey
							b0 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i0) * 256 + buffer_readu8(INV_MIX1, i2)
								),
								buffer_readu8(keym, offs)
							)
							b1 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i13) * 256 + buffer_readu8(INV_MIX1, i15)
								),
								buffer_readu8(keym, offs + 1)
							)
							b2 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i10) * 256 + buffer_readu8(INV_MIX1, i8)
								),
								buffer_readu8(keym, offs + 2)
							)
							b3 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i7) * 256 + buffer_readu8(INV_MIX1, i5)
								),
								buffer_readu8(keym, offs + 3)
							)
							b4 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i4) * 256 + buffer_readu8(INV_MIX1, i6)
								),
								buffer_readu8(keym, offs + 4)
							)
							b5 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i1) * 256 + buffer_readu8(INV_MIX1, i3)
								),
								buffer_readu8(keym, offs + 5)
							)
							b6 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i14) * 256 + buffer_readu8(INV_MIX1, i12)
								),
								buffer_readu8(keym, offs + 6)
							)
							b7 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i11) * 256 + buffer_readu8(INV_MIX1, i9)
								),
								buffer_readu8(keym, offs + 7)
							)
							b8 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i8) * 256 + buffer_readu8(INV_MIX1, i10)
								),
								buffer_readu8(keym, offs + 8)
							)
							b9 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i5) * 256 + buffer_readu8(INV_MIX1, i7)
								),
								buffer_readu8(keym, offs + 9)
							)
							b10 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i2) * 256 + buffer_readu8(INV_MIX1, i0)
								),
								buffer_readu8(keym, offs + 10)
							)
							b11 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i15) * 256 + buffer_readu8(INV_MIX1, i13)
								),
								buffer_readu8(keym, offs + 11)
							)
							b12 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i12) * 256 + buffer_readu8(INV_MIX1, i14)
								),
								buffer_readu8(keym, offs + 12)
							)
							b13 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i9) * 256 + buffer_readu8(INV_MIX1, i11)
								),
								buffer_readu8(keym, offs + 13)
							)
							b14 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i6) * 256 + buffer_readu8(INV_MIX1, i4)
								),
								buffer_readu8(keym, offs + 14)
							)
							b15 = bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i3) * 256 + buffer_readu8(INV_MIX1, i1)
								),
								buffer_readu8(keym, offs + 15)
							)
							-- Setting variables for next round
							i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15 =
								b0 * 256 + b1,
								b1 * 256 + b2,
								b2 * 256 + b3,
								b3 * 256 + b0,
								b4 * 256 + b5,
								b5 * 256 + b6,
								b6 * 256 + b7,
								b7 * 256 + b4,
								b8 * 256 + b9,
								b9 * 256 + b10,
								b10 * 256 + b11,
								b11 * 256 + b8,
								b12 * 256 + b13,
								b13 * 256 + b14,
								b14 * 256 + b15,
								b15 * 256 + b12
						end

						-- Last round sets all bytes into the output buffer
						buffer_writeu32(
							out,
							offt,
							bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i7) * 256 + buffer_readu8(INV_MIX1, i5)
								),
								buffer_readu8(keym, 3)
							)
									* 16777216
								+ bit32_bxor(
									buffer_readu8(
										INV_S_XOR,
										buffer_readu8(INV_MIX0, i10) * 256 + buffer_readu8(INV_MIX1, i8)
									),
									buffer_readu8(keym, 2)
								) * 65536
								+ bit32_bxor(
									buffer_readu8(
										INV_S_XOR,
										buffer_readu8(INV_MIX0, i13) * 256 + buffer_readu8(INV_MIX1, i15)
									),
									buffer_readu8(keym, 1)
								) * 256
								+ bit32_bxor(
									buffer_readu8(
										INV_S_XOR,
										buffer_readu8(INV_MIX0, i0) * 256 + buffer_readu8(INV_MIX1, i2)
									),
									buffer_readu8(keym, 0)
								)
						)
						buffer_writeu32(
							out,
							offt + 4,
							bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i11) * 256 + buffer_readu8(INV_MIX1, i9)
								),
								buffer_readu8(keym, 7)
							)
									* 16777216
								+ bit32_bxor(
									buffer_readu8(
										INV_S_XOR,
										buffer_readu8(INV_MIX0, i14) * 256 + buffer_readu8(INV_MIX1, i12)
									),
									buffer_readu8(keym, 6)
								) * 65536
								+ bit32_bxor(
									buffer_readu8(
										INV_S_XOR,
										buffer_readu8(INV_MIX0, i1) * 256 + buffer_readu8(INV_MIX1, i3)
									),
									buffer_readu8(keym, 5)
								) * 256
								+ bit32_bxor(
									buffer_readu8(
										INV_S_XOR,
										buffer_readu8(INV_MIX0, i4) * 256 + buffer_readu8(INV_MIX1, i6)
									),
									buffer_readu8(keym, 4)
								)
						)
						buffer_writeu32(
							out,
							offt + 8,
							bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i15) * 256 + buffer_readu8(INV_MIX1, i13)
								),
								buffer_readu8(keym, 11)
							)
									* 16777216
								+ bit32_bxor(
									buffer_readu8(
										INV_S_XOR,
										buffer_readu8(INV_MIX0, i2) * 256 + buffer_readu8(INV_MIX1, i0)
									),
									buffer_readu8(keym, 10)
								) * 65536
								+ bit32_bxor(
									buffer_readu8(
										INV_S_XOR,
										buffer_readu8(INV_MIX0, i5) * 256 + buffer_readu8(INV_MIX1, i7)
									),
									buffer_readu8(keym, 9)
								) * 256
								+ bit32_bxor(
									buffer_readu8(
										INV_S_XOR,
										buffer_readu8(INV_MIX0, i8) * 256 + buffer_readu8(INV_MIX1, i10)
									),
									buffer_readu8(keym, 8)
								)
						)
						buffer_writeu32(
							out,
							offt + 12,
							bit32_bxor(
								buffer_readu8(
									INV_S_XOR,
									buffer_readu8(INV_MIX0, i3) * 256 + buffer_readu8(INV_MIX1, i1)
								),
								buffer_readu8(keym, 15)
							)
									* 16777216
								+ bit32_bxor(
									buffer_readu8(
										INV_S_XOR,
										buffer_readu8(INV_MIX0, i6) * 256 + buffer_readu8(INV_MIX1, i4)
									),
									buffer_readu8(keym, 14)
								) * 65536
								+ bit32_bxor(
									buffer_readu8(
										INV_S_XOR,
										buffer_readu8(INV_MIX0, i9) * 256 + buffer_readu8(INV_MIX1, i11)
									),
									buffer_readu8(keym, 13)
								) * 256
								+ bit32_bxor(
									buffer_readu8(
										INV_S_XOR,
										buffer_readu8(INV_MIX0, i12) * 256 + buffer_readu8(INV_MIX1, i14)
									),
									buffer_readu8(keym, 12)
								)
						)
					end

					----------------------------------------------------------------------------------------------
					--  SUBSTITUTION BOX AND MIX COLUMNS CALCULATOR
					----------------------------------------------------------------------------------------------
					do
						local S_BOX = buffer_create(256) -- Temporary LUT
						local INV_S_BOX = buffer_create(256) -- S[i] = j <=> InvS[j] = i
						-- GF multiplication temporary LUTs
						local MUL3 = buffer_create(256)
						local MUL9 = buffer_create(256)
						local MUL11 = buffer_create(256)
						local p = 1
						local q = 1
						local t
						-- Galois Field (256) multiplication
						local function gfmul(a, b) --wikipedia.org/wiki/Rijndael_MixColumns#Implementation_example
							local p = 0

							for _ = 0, 7 do
								if b % 2 == 1 then
									p = bit32_bxor(p, a)
								end

								if a >= 128 then
									a = bit32_bxor(a * 2 % 256, 27)
								else
									a = a * 2 % 256
								end
								b = math_floor(b / 2)
							end
							return p
						end

						-- S-box and Inverse S-box computing
						buffer_writeu8(S_BOX, 0, 99) -- Zero has no inverse
						for _ = 1, 255 do --wikipedia.org/wiki/Rijndael_S-box#Example_implementation_in_C_language
							p = bit32_bxor(p, p * 2, if p < 128 then 0 else 27) % 256
							q = bit32_bxor(q, q * 2)
							q = bit32_bxor(q, q * 4)
							q = bit32_bxor(q, q * 16) % 256
							if q >= 128 then
								q = bit32_bxor(q, 9)
							end

							t = bit32_bxor(
								q,
								q % 128 * 2 + q / 128,
								q % 64 * 4 + q / 64,
								q % 32 * 8 + q / 32,
								q % 16 * 16 + q / 16,
								99
							) -- ROTL8 trick
							buffer_writeu8(S_BOX, p, t)
							buffer_writeu8(INV_S_BOX, t, p)
							-- GF LUTs can be computed in the same iteration
							buffer_writeu8(MUL3, p, gfmul(3, p))
							buffer_writeu8(MUL9, p, gfmul(9, p))
							buffer_writeu8(MUL11, p, gfmul(11, p))
						end

						-- Final permament LUTs computing
						local pb, g2, g14, g13
						t = 0
						for i = 0, 255 do
							p = buffer_readu8(S_BOX, i)
							pb = p * 256
							g2, g13, g14 = gfmul(2, p), gfmul(13, i), gfmul(14, i)
							for j = 0, 255 do
								q = buffer_readu8(S_BOX, j)
								buffer_writeu16(S_BOX_16, t * 2, pb + q) -- Elements occupy two bytes
								buffer_writeu8(INV_S_XOR, t, buffer_readu8(INV_S_BOX, bit32_bxor(i, j)))
								buffer_writeu8(S_MIX0, t, bit32_bxor(g2, buffer_readu8(MUL3, q)))
								buffer_writeu8(S_MIX1, t, bit32_bxor(p, q))
								buffer_writeu8(INV_MIX0, t, bit32_bxor(g14, buffer_readu8(MUL11, j)))
								buffer_writeu8(INV_MIX1, t, bit32_bxor(g13, buffer_readu8(MUL9, j)))
								t += 1
							end
						end
					end

					----------------------------------------------------------------------------------------------
					--  MAIN FUNCTIONS
					----------------------------------------------------------------------------------------------
					local function newidx(_, idx)
						return error(`{idx} cannot be assigned to`)
					end
					local function tostr()
						return "AesCipher"
					end

					local function expandKey(key, output) -- Key expansion
						local raw = typeof(key) == "buffer"
						local len = if raw then buffer_len(key) else #key
						local lenx = if len == 32
							then 240
							elseif len == 24 then 208
							elseif len == 16 then 176
							else error("Key must be either 16, 24 or 32 bytes long")
						return keySchedule(key, len, output or buffer_create(lenx), raw)
					end

					local function fromKey(roundKeys, mode, pad)
						local len: number? = buffer_len(roundKeys)
						local lenm: number?
						local key: string?
						local keyst: string? = buffer_tostring(roundKeys)
						if len == 240 then
							lenm = 192
							key = string_sub(keyst :: string, 1, 32)
						elseif len == 208 then
							lenm = 160
							key = string_sub(keyst :: string, 1, 24)
						elseif len == 176 then
							lenm = 128
							key = string_sub(keyst :: string, 1, 16)
						else
							error("Round keys must be either 240, 208 or 128 bytes long")
						end

						-- Object internal properties
						local keym: buffer? = roundKeys
						local mode: any = mode or CBCMode
						local fwd = mode.FwdMode
						local inv = mode.InvMode
						local segm = mode.SegmentSize or 16
						local pad: any = pad or Pkcs7
						local pd = pad.Pad
						local upd = pad.Unpad
						local cipher = newproxy(true)
						local meta = getmetatable(cipher) -- userdatas cannot share the same metatable in Luau
						-- Object internal methods
						local function encp(plaintext, offset, output, offsetOut)
							encryptBlock(keym :: buffer, lenm :: number, plaintext, offset, output, offsetOut)
						end
						local function decp(ciphertext, offset, output, offsetOut)
							decryptBlock(keym :: buffer, lenm :: number, ciphertext, offset, output, offsetOut)
						end
						local function enc(self: AesCipher, plaintext, output, ...)
							local raw = typeof(plaintext)
							local text = if raw == "buffer"
								then plaintext :: buffer
								elseif raw == "string" then buffer_fromstring(plaintext)
								else error(`Unable to cast {raw} to buffer`) -- Type cast
							output = typeof(output) == "buffer" and output
							if self ~= cipher then -- If method is called on other cipher, then call it on the correct one
								return self:Encrypt(text, output :: buffer, ...)
							elseif lenm then
								local out = pd(text, output, segm)
								fwd(encp, decp, if pad.Overwrite == false then text else out, out, mode, ...)
								return out
							else
								error("AesCipher object's already destroyed")
								return buffer_create(0) -- Dummy return for type checking
							end
						end
						local function encb(self, plaintext, offset, output, offsetOut)
							if self ~= cipher then
								self:EncryptBlock(plaintext, offset, output, offsetOut)
							elseif lenm then
								encryptBlock(
									keym :: buffer,
									lenm :: number,
									plaintext,
									offset,
									output or plaintext,
									offsetOut or offset
								)
							else
								error("AesCipher object's already destroyed")
							end
						end
						local function dec(self: AesCipher, ciphertext, output, ...)
							local raw = typeof(ciphertext)
							local ciph = if raw == "buffer"
								then ciphertext :: buffer
								elseif raw == "string" then buffer_fromstring(ciphertext)
								else error(`Unable to cast {raw} to buffer`)
							output = typeof(output) == "buffer" and output
							if self ~= cipher then
								return self:Decrypt(ciph, output :: buffer, ...)
							elseif lenm then
								local ovw = pad.Overwrite
								local text = if ovw == nil
									then buffer_create(buffer_len(ciph))
									elseif ovw then ciph
									else output or buffer_create(buffer_len(ciph))
								inv(encp, decp, ciph, text, mode, ...)
								return upd(text, output, segm)
							else
								error("AesCipher object's already destroyed")
								return buffer_create(0)
							end
						end
						local function decb(self, ciphertext, offset, output, offsetOut)
							if self ~= cipher then
								self:DecryptBlock(ciphertext, offset, output, offsetOut)
							elseif lenm then
								decryptBlock(
									keym :: buffer,
									lenm :: number,
									ciphertext,
									offset,
									output or ciphertext,
									offsetOut or offset
								)
							else
								error("AesCipher object's already destroyed")
							end
						end
						local function destroy(self: AesCipher): ()
							if self ~= cipher then
								self:Destroy()
							elseif lenm then
								keyst, keym, lenm, fwd, inv, mode, pad, key, len =
									nil, nil, nil, nil, nil, nil, nil, nil, nil
							else
								error("AesCipher object's already destroyed")
							end
						end

						-- Metatable settings
						meta.__index = function(_, idx)
							return if idx == "Encrypt"
								then enc
								elseif idx == "Decrypt" then dec
								elseif idx == "EncryptBlock" then encb
								elseif idx == "DecryptBlock" then decb
								elseif idx == "Destroy" then destroy
								elseif lenm then (if idx == "Key"
									then key
									elseif idx == "RoundKeys" then keyst
									elseif idx == "Mode" then mode
									elseif idx == "Padding" then pad
									elseif idx == "Length" then len
									else error(`{idx} is not a valid member of AesCipher`))
								else error("AesCipher object's already destroyed")
						end
						meta.__newindex = newidx
						meta.__tostring = tostr
						meta.__len = function(): number
							return len or error("AesCipher object's destroyed")
						end
						meta.__metatable = "AesCipher object: Metatable's locked"
						return cipher
					end
					return fromKey(expandKey(masterKey), CBCMode, Pkcs7)
				end,
				["\0ECC"] = function(rng)
					local carry = function(out)
						for i = 0, 15 do
							out[i] = out[i] + 0x10000
							local c = out[i] / 0x10000 - (out[i] / 0x10000) % 1
							if i < 15 then
								out[i + 1] = out[i + 1] + c - 1
							else
								out[0] = out[0] + 38 * (c - 1)
							end
							out[i] = out[i] - c * 0x10000
						end
					end

					local swap = function(a, b, bit)
						for i = 0, 15 do
							a[i], b[i] = a[i] * ((bit - 1) % 2) + b[i] * bit, b[i] * ((bit - 1) % 2) + a[i] * bit
						end
					end

					local unpack = function(out, a)
						for i = 0, 15 do
							out[i] = a[2 * i] + a[2 * i + 1] * 0x100
						end
						out[15] = out[15] % 0x8000
					end

					local pack = function(out, a)
						local t, m = {}, {}
						for i = 0, 15 do
							t[i] = a[i]
						end
						carry(t)
						carry(t)
						carry(t)
						local prime = { [0] = 0xffed, [15] = 0x7fff }
						for i = 1, 14 do
							prime[i] = 0xffff
						end
						for _ = 0, 1 do
							m[0] = t[0] - prime[0]
							for i = 1, 15 do
								m[i] = t[i] - prime[i] - ((m[i - 1] / 0x10000 - (m[i - 1] / 0x10000) % 1) % 2)
								m[i - 1] = (m[i - 1] + 0x10000) % 0x10000
							end
							local c = (m[15] / 0x10000 - (m[15] / 0x10000) % 1) % 2
							swap(t, m, 1 - c)
						end
						for i = 0, 15 do
							out[2 * i] = t[i] % 0x100
							out[2 * i + 1] = t[i] / 0x100 - (t[i] / 0x100) % 1
						end
					end

					local add = function(out, a, b)
						for i = 0, 15 do
							out[i] = a[i] + b[i]
						end
					end

					local sub = function(out, a, b)
						for i = 0, 15 do
							out[i] = a[i] - b[i]
						end
					end

					local mul = function(out, a, b)
						local prod = {}
						for i = 0, 31 do
							prod[i] = 0
						end
						for i = 0, 15 do
							for j = 0, 15 do
								prod[i + j] = prod[i + j] + a[i] * b[j]
							end
						end
						for i = 0, 14 do
							prod[i] = prod[i] + 38 * prod[i + 16]
						end
						for i = 0, 15 do
							out[i] = prod[i]
						end
						carry(out)
						carry(out)
					end

					local inv = function(out, a)
						local c = {}
						for i = 0, 15 do
							c[i] = a[i]
						end
						for i = 253, 0, -1 do
							mul(c, c, c)
							if i ~= 2 and i ~= 4 then
								mul(c, c, a)
							end
						end
						for i = 0, 15 do
							out[i] = c[i]
						end
					end

					local scalarmult = function(out, scalar, point)
						local a, b, c, d, e, f, x, clam = {}, {}, {}, {}, {}, {}, {}, {}
						unpack(x, point)
						for i = 0, 15 do
							a[i], b[i], c[i], d[i] = 0, x[i], 0, 0
						end
						a[0], d[0] = 1, 1
						for i = 0, 30 do
							clam[i] = scalar[i]
						end
						clam[0] = clam[0] - (clam[0] % 8)
						clam[31] = scalar[31] % 64 + 64
						for i = 254, 0, -1 do
							local bit = (
								clam[i / 8 - (i / 8) % 1] / 2 ^ (i % 8)
								- (clam[i / 8 - (i / 8) % 1] / 2 ^ (i % 8)) % 1
							) % 2
							swap(a, b, bit)
							swap(c, d, bit)
							add(e, a, c)
							sub(a, a, c)
							add(c, b, d)
							sub(b, b, d)
							mul(d, e, e)
							mul(f, a, a)
							mul(a, c, a)
							mul(c, b, e)
							add(e, a, c)
							sub(a, a, c)
							mul(b, a, a)
							sub(c, d, f)
							mul(a, c, { [0] = 0xdb41, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 })
							add(a, a, d)
							mul(c, c, a)
							mul(a, d, f)
							mul(d, b, x)
							mul(b, e, e)
							swap(a, b, bit)
							swap(c, d, bit)
						end
						inv(c, c)
						mul(a, a, c)
						pack(out, a)
					end

					local generate_keypair = function(rng)
						rng = rng or function()
							return math.random(0, 0xFF)
						end
						local sk, pk = {}, {}
						for i = 0, 31 do
							sk[i] = rng()
						end
						local base = { [0] = 9 }
						for i = 1, 31 do
							base[i] = 0
						end
						scalarmult(pk, sk, base)
						return sk, pk
					end

					local get_shared_key = function(sk, pk)
						local shared = {}
						scalarmult(shared, sk, pk)
						return shared
					end
					return {
						generate_keypair = generate_keypair,
						get_shared_key = get_shared_key,
					}
				end,
				["\0HASH"] = function(msg)
					local MOD = 2 ^ 32
					local MODM = MOD - 1

					local function memoize(f)
						local mt = {}
						local t = setmetatable({}, mt)
						function mt:__index(k)
							local v = f(k)
							t[k] = v
							return v
						end
						return t
					end

					local function make_bitop_uncached(t, m)
						local function bitop(a, b)
							local res, p = 0, 1
							while a ~= 0 and b ~= 0 do
								local am, bm = a % m, b % m
								res = res + t[am][bm] * p
								a = (a - am) / m
								b = (b - bm) / m
								p = p * m
							end
							res = res + (a + b) * p
							return res
						end
						return bitop
					end

					local function make_bitop(t)
						local op1 = make_bitop_uncached(t, 2 ^ 1)
						local op2 = memoize(function(a)
							return memoize(function(b)
								return op1(a, b)
							end)
						end)
						return make_bitop_uncached(op2, 2 ^ (t.n or 1))
					end

					local bxor1 = make_bitop({ [0] = { [0] = 0, [1] = 1 }, [1] = { [0] = 1, [1] = 0 }, n = 4 })

					local function bxor(a, b, c, ...)
						local z = nil
						if b then
							a = a % MOD
							b = b % MOD
							z = bxor1(a, b)
							if c then
								z = bxor(z, c, ...)
							end
							return z
						elseif a then
							return a % MOD
						else
							return 0
						end
					end

					local function band(a, b, c, ...)
						local z
						if b then
							a = a % MOD
							b = b % MOD
							z = ((a + b) - bxor1(a, b)) / 2
							if c then
								z = bit32_band(z, c, ...)
							end
							return z
						elseif a then
							return a % MOD
						else
							return MODM
						end
					end

					local function bnot(x)
						return (-1 - x) % MOD
					end

					local function rshift1(a, disp)
						if disp < 0 then
							return lshift(a, -disp)
						end
						return math.floor(a % 2 ^ 32 / 2 ^ disp)
					end

					local function rshift(x, disp)
						if disp > 31 or disp < -31 then
							return 0
						end
						return rshift1(x % MOD, disp)
					end

					local function lshift(a, disp)
						if disp < 0 then
							return rshift(a, -disp)
						end
						return (a * 2 ^ disp) % 2 ^ 32
					end

					local function rrotate(x, disp)
						x = x % MOD
						disp = disp % 32
						local low = band(x, 2 ^ disp - 1)
						return rshift(x, disp) + lshift(low, 32 - disp)
					end

					local k = {
						0x428a2f98,
						0x71374491,
						0xb5c0fbcf,
						0xe9b5dba5,
						0x3956c25b,
						0x59f111f1,
						0x923f82a4,
						0xab1c5ed5,
						0xd807aa98,
						0x12835b01,
						0x243185be,
						0x550c7dc3,
						0x72be5d74,
						0x80deb1fe,
						0x9bdc06a7,
						0xc19bf174,
						0xe49b69c1,
						0xefbe4786,
						0x0fc19dc6,
						0x240ca1cc,
						0x2de92c6f,
						0x4a7484aa,
						0x5cb0a9dc,
						0x76f988da,
						0x983e5152,
						0xa831c66d,
						0xb00327c8,
						0xbf597fc7,
						0xc6e00bf3,
						0xd5a79147,
						0x06ca6351,
						0x14292967,
						0x27b70a85,
						0x2e1b2138,
						0x4d2c6dfc,
						0x53380d13,
						0x650a7354,
						0x766a0abb,
						0x81c2c92e,
						0x92722c85,
						0xa2bfe8a1,
						0xa81a664b,
						0xc24b8b70,
						0xc76c51a3,
						0xd192e819,
						0xd6990624,
						0xf40e3585,
						0x106aa070,
						0x19a4c116,
						0x1e376c08,
						0x2748774c,
						0x34b0bcb5,
						0x391c0cb3,
						0x4ed8aa4a,
						0x5b9cca4f,
						0x682e6ff3,
						0x748f82ee,
						0x78a5636f,
						0x84c87814,
						0x8cc70208,
						0x90befffa,
						0xa4506ceb,
						0xbef9a3f7,
						0xc67178f2,
					}

					local function str2hexa(s)
						return (
							string.gsub(s, ".", function(c)
								return string.format("%02x", string.byte(c))
							end)
						)
					end

					local function num2s(l, n)
						local s = ""
						for i = 1, n do
							local rem = l % 256
							s = string.char(rem) .. s
							l = (l - rem) / 256
						end
						return s
					end

					local function s232num(s, i)
						local n = 0
						for i = i, i + 3 do
							n = n * 256 + string.byte(s, i)
						end
						return n
					end

					local function preproc(msg, len)
						local extra = 64 - ((len + 9) % 64)
						len = num2s(8 * len, 8)
						msg = msg .. "\128" .. string.rep("\0", extra) .. len
						assert(#msg % 64 == 0)
						return msg
					end

					local function initH256(H)
						H[1] = 0x6a09e667
						H[2] = 0xbb67ae85
						H[3] = 0x3c6ef372
						H[4] = 0xa54ff53a
						H[5] = 0x510e527f
						H[6] = 0x9b05688c
						H[7] = 0x1f83d9ab
						H[8] = 0x5be0cd19
						return H
					end

					local function digestblock(msg, i, H)
						local w = {}
						for j = 1, 16 do
							w[j] = s232num(msg, i + (j - 1) * 4)
						end
						for j = 17, 64 do
							local v = w[j - 15]
							local s0 = bxor(rrotate(v, 7), rrotate(v, 18), rshift(v, 3))
							v = w[j - 2]
							w[j] = w[j - 16] + s0 + w[j - 7] + bxor(rrotate(v, 17), rrotate(v, 19), rshift(v, 10))
						end

						local a, b, c, d, e, f, g, h = H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]
						for i = 1, 64 do
							local s0 = bxor(rrotate(a, 2), rrotate(a, 13), rrotate(a, 22))
							local maj = bxor(band(a, b), band(a, c), band(b, c))
							local t2 = s0 + maj
							local s1 = bxor(rrotate(e, 6), rrotate(e, 11), rrotate(e, 25))
							local ch = bxor(band(e, f), band(bnot(e), g))
							local t1 = h + s1 + ch + k[i] + w[i]
							h, g, f, e, d, c, b, a = g, f, e, d + t1, c, b, a, t1 + t2
						end

						H[1] = band(H[1] + a)
						H[2] = band(H[2] + b)
						H[3] = band(H[3] + c)
						H[4] = band(H[4] + d)
						H[5] = band(H[5] + e)
						H[6] = band(H[6] + f)
						H[7] = band(H[7] + g)
						H[8] = band(H[8] + h)
					end

					-- Made this global
					local function sha256(msg)
						msg = preproc(msg, #msg)
						local H = initH256({})
						for i = 1, #msg, 64 do
							digestblock(msg, i, H)
						end
						return str2hexa(
							num2s(H[1], 4)
								.. num2s(H[2], 4)
								.. num2s(H[3], 4)
								.. num2s(H[4], 4)
								.. num2s(H[5], 4)
								.. num2s(H[6], 4)
								.. num2s(H[7], 4)
								.. num2s(H[8], 4)
						)
					end
					return sha256(msg)
				end,
			})
			local Helpers = __WRAP_TABLE__({
				["\0padString"] = function(str)
					local trimmed = str:sub(1, math.floor(#str / 16) * 16)
					local padLen = 16 - (#trimmed % 16)
					if padLen == 16 then
						padLen = 0
					end
					return trimmed .. string.rep("0", padLen)
				end,
				["\0strToHex"] = function(str)
					return str:gsub(".", function(char)
						return string.format("%02x", char:byte())
					end)
				end,
				["\0hexToBin"] = function(hex)
					return (hex:gsub("..", function(cc)
						return string.char(tonumber(cc, 16))
					end))
				end,
				["\0bytesToHex"] = function(bytes)
					local hex = ""
					for i = 0, #bytes do
						if bytes[i] then
							hex = hex .. string.format("%02x", bytes[i])
						end
					end
					return hex
				end,

				["\0hexToBytes"] = function(hex)
					local bytes = {}
					local byteIndex = 0 -- Start at index 0 to match the X25519 implementation

					for i = 1, #hex, 2 do
						local byte = tonumber(hex:sub(i, i + 1), 16)
						bytes[byteIndex] = byte
						byteIndex = byteIndex + 1
					end

					return bytes
				end,
			})

			return __WRAP_CLOSURE__(function(...)
				local rng = Rng["\0sign"](Rng["\0lcg"](Rng["\0generateSeed"](), 1, 1e6, 9e9)[1], __SERVICE__)
				local initPayload = { rng = rng, iv = 16 }


				local initReqParams = _VERSION == "\0Lune"
				  and {
					url = ("https://pandadevelopment.net/v3_lua_validation/init\0"):gsub("\0", ""),
					method = "POST",
					headers = { ["Content-Type"] = "application/json" },
					body = Json().stringify(initPayload),
				  }
				  or {
					Url = ("https://pandadevelopment.net/v3_lua_validation/init\0"):gsub("\0", ""),
					Method = "POST",
					Headers = { ["Content-Type"] = "application/json" },
					Body = Json().stringify(initPayload),
				  }
			
				local initResBody = request(initReqParams)
				local initRes = Json().parse(initResBody.Body)
				if initRes.iv ~= initPayload.iv or tonumber(initRes.rng) ~= initPayload.rng * 3.14 then
					__CRASH__(15) do while true do end end
				end


				local clientSecret = Cryptography.__index()["\0HASH"](16 .. rng)
				local serverSecret = Cryptography.__index()["\0HASH"](16 .. rng * 3.14) 

				local aesKey = Cryptography.__index()["\0HASH"](clientSecret .. serverSecret)
				local validationPayload = {
					payload = Helpers.__index()["\0strToHex"](
						buffer_tostring(
							Cryptography.__index()
								["\0AES"](Helpers.__index()["\0hexToBin"](aesKey))
								:Encrypt(Json().stringify({
									licenseKey = __LICENSE_KEY__,
									service = __SERVICE__,
									hwid = gethwid(),
									timestamp = os_time(),
									clientInfo = {
										version = _VERSION,
										env = _ENV,
									},
								}))
						)
					),
					secret = clientSecret,
				}
				local validationReqParams = _VERSION == "\0Lune"
						and {
							url = ("https://pandadevelopment.net/v3_lua_validation/validate\0"):gsub("\0", ""),
							method = "POST",
							headers = { ["Content-Type"] = "application/json" },
							body = Json().stringify(validationPayload),
						}
					or {
						Url = ("https://pandadevelopment.net/v3_lua_validation/validate\0"):gsub("\0", ""),
						Method = "POST",
						Headers = { ["Content-Type"] = "application/json" },
						Body = Json().stringify(validationPayload),
					}
				local validationResBody = request(validationReqParams).Body
				local jsonBody = Json().parse(validationResBody)
	
				if not jsonBody.success then
					__PRINT__("Incorrect key!")
				
					if securityLevel == 1 then
						return "invalid!!"
					elseif securityLevel == 2 then
						game.Players.LocalPlayer:Kick("Incorrect key!")
						return "invalid!!"
					elseif securityLevel == 3 then
						game.Players.LocalPlayer:Kick("Incorrect key!")
						while true do end
						return "invalid!!"
					else
						return "invalid!!" -- Default fallback
					end
				else
					if jsonBody.secret ~= serverSecret then
						__CRASH__(16) do while true do end end
					end
					local decodedPayload = Json().parse(
						buffer_tostring(
							Cryptography.__index()
								["\0AES"](Helpers.__index()["\0hexToBin"](aesKey))
								:Decrypt(buffer_fromstring(Helpers.__index()["\0hexToBin"](jsonBody.payload)))
						)
					)
					if decodedPayload.status ~= "success" then
						__CRASH__(17) do while true do end end
					else
						__USER_ENV__["__PELINDA_KEY_EXPIRES_AT__"] = decodedPayload.keyInfo.expiresAt
						__USER_ENV__["__PELINDA_KEY_HWID__"] = decodedPayload.keyInfo.hwid
						__USER_ENV__["__PELINDA_IS_PREMIUM__"] = decodedPayload.keyInfo.isPremium
						__USER_ENV__["__PELINDA_IS_KEYLESS__"] = decodedPayload.keyInfo.keyless
						local __END__ = os_clock()

						__PRINT__(string_format("[PELINDA] Validated in %f seconds", __END__ - __START__))
						return "validated!!"
					end
				end
			end)()			  
		end),
	})()
end

return Pelinda

-- Example :

-- local __PELINDA_SERVICE__ = "pandadevkit" -- your service
-- local __PELINDA_SILENTMODE__ = false
-- local __PELINDA_SECURITY_LEVEL__ = 2 -- set to 1, 2, or 3

-- -- Get the key link to guide users to the verification page
-- print(Pelinda.GetKeyLink({
-- 	Service = __PELINDA_SERVICE__
-- }))

-- print("Hello, World", Pelinda)

-- -- Initialize Pelinda with service, silent mode, key, and security level
-- 	local Test = Pelinda.Init({
-- 	Service = __PELINDA_SERVICE__,
-- 	SilentMode = __PELINDA_SILENTMODE__,
-- 	Key = "pandadev_61550e98210a1b38d61a6c614", -- your key
-- 	SecurityLevel = __PELINDA_SECURITY_LEVEL__,
-- })

-- print(Test)

-- print("Loaded!")
