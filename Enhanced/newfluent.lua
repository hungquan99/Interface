

local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local TextService = game:GetService("TextService")
local Camera = game:GetService("Workspace").CurrentCamera
local Mouse = LocalPlayer:GetMouse()
local httpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local Mobile = not RunService:IsStudio() and table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform()) ~= nil

local fischbypass

if game.GameId == 5750914919 then
	fischbypass = true
end

local RenderStepped = RunService.RenderStepped

local ProtectGui = protectgui or (syn and syn.protect_gui) or function() end

local Themes = {
	Names = {
		"Dark",
		"Darker", 
		"Amoled",
		"Light",
		"Rose",
		"Arctic"
	},
	Dark = {
		Name = "Dark",
		Accent = Color3.fromRGB(96, 205, 255),
		AcrylicMain = Color3.fromRGB(60, 60, 60),
		AcrylicBorder = Color3.fromRGB(90, 90, 90),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(40, 40, 40), Color3.fromRGB(40, 40, 40)),
		AcrylicNoise = 0.9,
		TitleBarLine = Color3.fromRGB(75, 75, 75),
		Tab = Color3.fromRGB(120, 120, 120),
		Element = Color3.fromRGB(120, 120, 120),
		ElementBorder = Color3.fromRGB(35, 35, 35),
		InElementBorder = Color3.fromRGB(90, 90, 90),
		ElementTransparency = 0.87,
		ToggleSlider = Color3.fromRGB(120, 120, 120),
		ToggleToggled = Color3.fromRGB(42, 42, 42),
		SliderRail = Color3.fromRGB(120, 120, 120),
		DropdownFrame = Color3.fromRGB(160, 160, 160),
		DropdownHolder = Color3.fromRGB(45, 45, 45),
		DropdownBorder = Color3.fromRGB(35, 35, 35),
		DropdownOption = Color3.fromRGB(120, 120, 120),
		Keybind = Color3.fromRGB(120, 120, 120),
		Input = Color3.fromRGB(160, 160, 160),
		InputFocused = Color3.fromRGB(10, 10, 10),
		InputIndicator = Color3.fromRGB(150, 150, 150),
		Dialog = Color3.fromRGB(45, 45, 45),
		DialogHolder = Color3.fromRGB(35, 35, 35),
		DialogHolderLine = Color3.fromRGB(30, 30, 30),
		DialogButton = Color3.fromRGB(45, 45, 45),
		DialogButtonBorder = Color3.fromRGB(80, 80, 80),
		DialogBorder = Color3.fromRGB(70, 70, 70),
		DialogInput = Color3.fromRGB(55, 55, 55),
		DialogInputLine = Color3.fromRGB(160, 160, 160),
		Text = Color3.fromRGB(240, 240, 240),
		SubText = Color3.fromRGB(170, 170, 170),
		Hover = Color3.fromRGB(120, 120, 120),
		HoverChange = 0.07,
	},
	Darker = {
		Name = "Darker",
		Accent = Color3.fromRGB(56, 109, 223),
		AcrylicMain = Color3.fromRGB(30, 30, 30),
		AcrylicBorder = Color3.fromRGB(60, 60, 60),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(17, 17, 17), Color3.fromRGB(18, 18, 18)),
		AcrylicNoise = 0.94,
		TitleBarLine = Color3.fromRGB(65, 65, 65),
		Tab = Color3.fromRGB(100, 100, 100),
		Element = Color3.fromRGB(70, 70, 70),
		ElementBorder = Color3.fromRGB(25, 25, 25),
		InElementBorder = Color3.fromRGB(55, 55, 55),
		ElementTransparency = 0.82,
		DropdownFrame = Color3.fromRGB(120, 120, 120),
		DropdownHolder = Color3.fromRGB(35, 35, 35),
		DropdownBorder = Color3.fromRGB(25, 25, 25),
		Dialog = Color3.fromRGB(35, 35, 35),
		DialogHolder = Color3.fromRGB(25, 25, 25),
		DialogHolderLine = Color3.fromRGB(20, 20, 20),
		DialogButton = Color3.fromRGB(35, 35, 35),
		DialogButtonBorder = Color3.fromRGB(55, 55, 55),
		DialogBorder = Color3.fromRGB(50, 50, 50),
		DialogInput = Color3.fromRGB(45, 45, 45),
		DialogInputLine = Color3.fromRGB(120, 120, 120),
	},
	Amoled = {
		Name = "Amoled",
		Accent = Color3.fromRGB(255, 255, 255),
		AcrylicMain = Color3.fromRGB(0, 0, 0),
		AcrylicBorder = Color3.fromRGB(20, 20, 20),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0)),
		AcrylicNoise = 1,
		TitleBarLine = Color3.fromRGB(25, 25, 25),
		Tab = Color3.fromRGB(40, 40, 40),
		Element = Color3.fromRGB(15, 15, 15),
		ElementBorder = Color3.fromRGB(0, 0, 0),
		InElementBorder = Color3.fromRGB(40, 40, 40),
		ElementTransparency = 0.95,
		ToggleSlider = Color3.fromRGB(40, 40, 40),
		ToggleToggled = Color3.fromRGB(255, 255, 255),
		SliderRail = Color3.fromRGB(40, 40, 40),
		DropdownFrame = Color3.fromRGB(20, 20, 20),
		DropdownHolder = Color3.fromRGB(0, 0, 0),
		DropdownBorder = Color3.fromRGB(0, 0, 0),
		DropdownOption = Color3.fromRGB(40, 40, 40),
		Keybind = Color3.fromRGB(40, 40, 40),
		Input = Color3.fromRGB(40, 40, 40),
		InputFocused = Color3.fromRGB(0, 0, 0),
		InputIndicator = Color3.fromRGB(60, 60, 60),
		InputIndicatorFocus = Color3.fromRGB(255, 255, 255),
		Dialog = Color3.fromRGB(0, 0, 0),
		DialogHolder = Color3.fromRGB(0, 0, 0),
		DialogHolderLine = Color3.fromRGB(20, 20, 20),
		DialogButton = Color3.fromRGB(15, 15, 15),
		DialogButtonBorder = Color3.fromRGB(30, 30, 30),
		DialogBorder = Color3.fromRGB(27, 27, 27),
		DialogInput = Color3.fromRGB(15, 15, 15),
		DialogInputLine = Color3.fromRGB(60, 60, 60),
		Text = Color3.fromRGB(255, 255, 255),
		SubText = Color3.fromRGB(170, 170, 170),
		Hover = Color3.fromRGB(40, 40, 40),
		HoverChange = 0.04
	},
	Light = {
		Name = "Light",
		Accent = Color3.fromRGB(0, 103, 192),
		AcrylicMain = Color3.fromRGB(200, 200, 200),
		AcrylicBorder = Color3.fromRGB(120, 120, 120),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(255, 255, 255)),
		AcrylicNoise = 0.96,
		TitleBarLine = Color3.fromRGB(160, 160, 160),
		Tab = Color3.fromRGB(90, 90, 90),
		Element = Color3.fromRGB(255, 255, 255),
		ElementBorder = Color3.fromRGB(180, 180, 180),
		InElementBorder = Color3.fromRGB(150, 150, 150),
		ElementTransparency = 0.65,
		ToggleSlider = Color3.fromRGB(40, 40, 40),
		ToggleToggled = Color3.fromRGB(255, 255, 255),
		SliderRail = Color3.fromRGB(40, 40, 40),
		DropdownFrame = Color3.fromRGB(200, 200, 200),
		DropdownHolder = Color3.fromRGB(240, 240, 240),
		DropdownBorder = Color3.fromRGB(200, 200, 200),
		DropdownOption = Color3.fromRGB(150, 150, 150),
		Keybind = Color3.fromRGB(120, 120, 120),
		Input = Color3.fromRGB(200, 200, 200),
		InputFocused = Color3.fromRGB(100, 100, 100),
		InputIndicator = Color3.fromRGB(80, 80, 80),
		InputIndicatorFocus = Color3.fromRGB(0, 103, 192),
		Dialog = Color3.fromRGB(255, 255, 255),
		DialogHolder = Color3.fromRGB(240, 240, 240),
		DialogHolderLine = Color3.fromRGB(228, 228, 228),
		DialogButton = Color3.fromRGB(255, 255, 255),
		DialogButtonBorder = Color3.fromRGB(190, 190, 190),
		DialogBorder = Color3.fromRGB(140, 140, 140),
		DialogInput = Color3.fromRGB(250, 250, 250),
		DialogInputLine = Color3.fromRGB(160, 160, 160),
		Text = Color3.fromRGB(0, 0, 0),
		SubText = Color3.fromRGB(40, 40, 40),
		Hover = Color3.fromRGB(50, 50, 50),
		HoverChange = 0.16,
	},
	Rose = {
		Name = "Rose",
		Accent = Color3.fromRGB(219, 48, 123),
		AcrylicMain = Color3.fromRGB(35, 25, 30),
		AcrylicBorder = Color3.fromRGB(145, 35, 75),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(65, 25, 45), Color3.fromRGB(75, 30, 50)),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(150, 65, 95),
		Tab = Color3.fromRGB(190, 85, 115),
		Element = Color3.fromRGB(170, 60, 90),
		ElementBorder = Color3.fromRGB(95, 35, 55),
		InElementBorder = Color3.fromRGB(120, 50, 70),
		ElementTransparency = 0.87,
		ToggleSlider = Color3.fromRGB(190, 75, 105),
		ToggleToggled = Color3.fromRGB(45, 15, 25),
		SliderRail = Color3.fromRGB(190, 75, 105),
		DropdownFrame = Color3.fromRGB(200, 95, 125),
		DropdownHolder = Color3.fromRGB(75, 30, 45),
		DropdownBorder = Color3.fromRGB(95, 35, 55),
		DropdownOption = Color3.fromRGB(190, 75, 105),
		Keybind = Color3.fromRGB(190, 75, 105),
		Input = Color3.fromRGB(190, 75, 105),
		InputFocused = Color3.fromRGB(35, 15, 20),
		InputIndicator = Color3.fromRGB(210, 95, 125),
		InputIndicatorFocus = Color3.fromRGB(219, 48, 123),
		Dialog = Color3.fromRGB(75, 30, 45),
		DialogHolder = Color3.fromRGB(65, 25, 40),
		DialogHolderLine = Color3.fromRGB(60, 20, 35),
		DialogButton = Color3.fromRGB(75, 30, 45),
		DialogButtonBorder = Color3.fromRGB(115, 45, 65),
		DialogBorder = Color3.fromRGB(105, 40, 60),
		DialogInput = Color3.fromRGB(85, 35, 50),
		DialogInputLine = Color3.fromRGB(200, 85, 115),
		Text = Color3.fromRGB(240, 240, 240),
		SubText = Color3.fromRGB(170, 170, 170),
		Hover = Color3.fromRGB(190, 75, 105),
		HoverChange = 0.04
	},
	Arctic = {
		Name = "Arctic",
		Accent = Color3.fromRGB(64, 224, 255),
		AcrylicMain = Color3.fromRGB(10, 18, 25),
		AcrylicBorder = Color3.fromRGB(35, 55, 70),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(15, 25, 35), Color3.fromRGB(18, 30, 40)),
		AcrylicNoise = 0.94,
		TitleBarLine = Color3.fromRGB(45, 70, 90),
		Tab = Color3.fromRGB(70, 110, 140),
		Element = Color3.fromRGB(60, 95, 120),
		ElementBorder = Color3.fromRGB(60, 95, 120),
		InElementBorder = Color3.fromRGB(70, 110, 140),
		ElementTransparency = 0.88,
		ToggleSlider = Color3.fromRGB(90, 140, 180),
		ToggleToggled = Color3.fromRGB(15, 25, 35),
		SliderRail = Color3.fromRGB(90, 140, 180),
		DropdownFrame = Color3.fromRGB(110, 170, 220),
		DropdownHolder = Color3.fromRGB(30, 45, 60),
		DropdownBorder = Color3.fromRGB(60, 95, 120),
		DropdownOption = Color3.fromRGB(90, 140, 180),
		Keybind = Color3.fromRGB(90, 140, 180),
		Input = Color3.fromRGB(90, 140, 180),
		InputFocused = Color3.fromRGB(10, 18, 25),
		InputIndicator = Color3.fromRGB(130, 200, 255),
		InputIndicatorFocus = Color3.fromRGB(64, 224, 255),
		Dialog = Color3.fromRGB(30, 45, 60),
		DialogHolder = Color3.fromRGB(18, 30, 40),
		DialogHolderLine = Color3.fromRGB(15, 25, 35),
		DialogButton = Color3.fromRGB(30, 45, 60),
		DialogButtonBorder = Color3.fromRGB(45, 70, 90),
		DialogBorder = Color3.fromRGB(40, 60, 80),
		DialogInput = Color3.fromRGB(35, 55, 70),
		DialogInputLine = Color3.fromRGB(110, 170, 220),
		Text = Color3.fromRGB(240, 250, 255),
		SubText = Color3.fromRGB(180, 200, 220),
		Hover = Color3.fromRGB(90, 140, 180),
		HoverChange = 0.04
	}

}

local Library = {
	Version = "1.2.2",

	OpenFrames = {},
	Options = {},
	Themes = Themes.Names,
	Windows = {},

	Window = nil,
	WindowFrame = nil,
	Unloaded = false,

	Creator = nil,

	DialogOpen = false,
	UseAcrylic = false,
	Acrylic = false,
	Transparency = true,
	MinimizeKeybind = nil,
	MinimizeKey = Enum.KeyCode.LeftControl,
}

local function isMotor(value)
	local motorType = tostring(value):match("^Motor%((.+)%)$")

	if motorType then
		return true, motorType
	else
		return false
	end
end

local Connection = {}

Connection.__index = Connection

function Connection.new(signal, handler)
	return setmetatable({
		signal = signal,
		connected = true,
		_handler = handler,
	}, Connection)
end

function Connection:disconnect()
	if self.connected then
		self.connected = false

		for index, connection in pairs(self.signal._connections) do
			if connection == self then
				table.remove(self.signal._connections, index)
				return
			end
		end
	end
end

local Signal = {}
Signal.__index = Signal

function Signal.new()
	return setmetatable({
		_connections = {},
		_threads = {},
	}, Signal)
end

function Signal:fire(...)
	for _, connection in pairs(self._connections) do
		connection._handler(...)
	end

	for _, thread in pairs(self._threads) do
		coroutine.resume(thread, ...)
	end

	self._threads = {}
end

function Signal:connect(handler)
	local connection = Connection.new(self, handler)
	table.insert(self._connections, connection)
	return connection
end

function Signal:wait()
	table.insert(self._threads, coroutine.running())
	return coroutine.yield()
end

local Linear = {}
Linear.__index = Linear

function Linear.new(targetValue, options)
	assert(targetValue, "Missing argument #1: targetValue")

	options = options or {}

	return setmetatable({
		_targetValue = targetValue,
		_velocity = options.velocity or 1,
	}, Linear)
end

function Linear:step(state, dt)
	local position = state.value
	local velocity = self._velocity
	local goal = self._targetValue

	local dPos = dt * velocity

	local complete = dPos >= math.abs(goal - position)
	position = position + dPos * (goal > position and 1 or -1)
	if complete then
		position = self._targetValue
		velocity = 0
	end

	return {
		complete = complete,
		value = position,
		velocity = velocity,
	}
end

local Instant = {}
Instant.__index = Instant

function Instant.new(targetValue)
	return setmetatable({
		_targetValue = targetValue,
	}, Instant)
end

function Instant:step()
	return {
		complete = true,
		value = self._targetValue,
	}
end

local VELOCITY_THRESHOLD = 0.001
local POSITION_THRESHOLD = 0.001

local EPS = 0.0001

local Spring = {}
Spring.__index = Spring

function Spring.new(targetValue, options)
	assert(targetValue, "Missing argument #1: targetValue")
	options = options or {}

	return setmetatable({
		_targetValue = targetValue,
		_frequency = options.frequency or 4,
		_dampingRatio = options.dampingRatio or 1,
	}, Spring)
end

function Spring:step(state, dt)


	local d = self._dampingRatio
	local f = self._frequency * 2 * math.pi
	local g = self._targetValue
	local p0 = state.value
	local v0 = state.velocity or 0

	local offset = p0 - g
	local decay = math.exp(-d * f * dt)

	local p1, v1

	if d == 1 then
		p1 = (offset * (1 + f * dt) + v0 * dt) * decay + g
		v1 = (v0 * (1 - f * dt) - offset * (f * f * dt)) * decay
	elseif d < 1 then
		local c = math.sqrt(1 - d * d)

		local i = math.cos(f * c * dt)
		local j = math.sin(f * c * dt)



		local z
		if c > EPS then
			z = j / c
		else
			local a = dt * f
			z = a + ((a * a) * (c * c) * (c * c) / 20 - c * c) * (a * a * a) / 6
		end



		local y
		if f * c > EPS then
			y = j / (f * c)
		else
			local b = f * c
			y = dt + ((dt * dt) * (b * b) * (b * b) / 20 - b * b) * (dt * dt * dt) / 6
		end

		p1 = (offset * (i + d * z) + v0 * y) * decay + g
		v1 = (v0 * (i - z * d) - offset * (z * f)) * decay
	else
		local c = math.sqrt(d * d - 1)

		local r1 = -f * (d - c)
		local r2 = -f * (d + c)

		local co2 = (v0 - offset * r1) / (2 * f * c)
		local co1 = offset - co2

		local e1 = co1 * math.exp(r1 * dt)
		local e2 = co2 * math.exp(r2 * dt)

		p1 = e1 + e2 + g
		v1 = e1 * r1 + e2 * r2
	end

	local complete = math.abs(v1) < VELOCITY_THRESHOLD and math.abs(p1 - g) < POSITION_THRESHOLD

	return {
		complete = complete,
		value = complete and g or p1,
		velocity = v1,
	}
end

local noop = function() end

local BaseMotor = {}
BaseMotor.__index = BaseMotor

function BaseMotor.new()
	return setmetatable({
		_onStep = Signal.new(),
		_onStart = Signal.new(),
		_onComplete = Signal.new(),
	}, BaseMotor)
end

function BaseMotor:onStep(handler)
	return self._onStep:connect(handler)
end

function BaseMotor:onStart(handler)
	return self._onStart:connect(handler)
end

function BaseMotor:onComplete(handler)
	return self._onComplete:connect(handler)
end

function BaseMotor:start()
	if not self._connection then
		self._connection = RunService.RenderStepped:Connect(function(deltaTime)
			self:step(deltaTime)
		end)
	end
end

function BaseMotor:stop()
	if self._connection then
		self._connection:Disconnect()
		self._connection = nil
	end
end
BaseMotor.destroy = BaseMotor.stop

BaseMotor.step = noop
BaseMotor.getValue = noop
BaseMotor.setGoal = noop

function BaseMotor:__tostring()
	return "Motor"
end

local SingleMotor = setmetatable({}, BaseMotor)
SingleMotor.__index = SingleMotor

function SingleMotor.new(initialValue, useImplicitConnections)
	assert(initialValue, "Missing argument #1: initialValue")
	assert(typeof(initialValue) == "number", "initialValue must be a number!")

	local self = setmetatable(BaseMotor.new(), SingleMotor)

	if useImplicitConnections ~= nil then
		self._useImplicitConnections = useImplicitConnections
	else
		self._useImplicitConnections = true
	end

	self._goal = nil
	self._state = {
		complete = true,
		value = initialValue,
	}

	return self
end

function SingleMotor:step(deltaTime)
	if self._state.complete then
		return true
	end

	local newState = self._goal:step(self._state, deltaTime)

	self._state = newState
	self._onStep:fire(newState.value)

	if newState.complete then
		if self._useImplicitConnections then
			self:stop()
		end

		self._onComplete:fire()
	end

	return newState.complete
end

function SingleMotor:getValue()
	return self._state.value
end

function SingleMotor:setGoal(goal)
	self._state.complete = false
	self._goal = goal

	self._onStart:fire()

	if self._useImplicitConnections then
		self:start()
	end
end

function SingleMotor:__tostring()
	return "Motor(Single)"
end

local GroupMotor = setmetatable({}, BaseMotor)
GroupMotor.__index = GroupMotor

local function toMotor(value)
	if isMotor(value) then
		return value
	end

	local valueType = typeof(value)

	if valueType == "number" then
		return SingleMotor.new(value, false)
	elseif valueType == "table" then
		return GroupMotor.new(value, false)
	end

	error(("Unable to convert %q to motor; type %s is unsupported"):format(value, valueType), 2)
end

function GroupMotor.new(initialValues, useImplicitConnections)
	assert(initialValues, "Missing argument #1: initialValues")
	assert(typeof(initialValues) == "table", "initialValues must be a table!")
	assert(
		not initialValues.step,
		'initialValues contains disallowed property "step". Did you mean to put a table of values here?'
	)

	local self = setmetatable(BaseMotor.new(), GroupMotor)

	if useImplicitConnections ~= nil then
		self._useImplicitConnections = useImplicitConnections
	else
		self._useImplicitConnections = true
	end

	self._complete = true
	self._motors = {}

	for key, value in pairs(initialValues) do
		self._motors[key] = toMotor(value)
	end

	return self
end

function GroupMotor:step(deltaTime)
	if self._complete then
		return true
	end

	local allMotorsComplete = true

	for _, motor in pairs(self._motors) do
		local complete = motor:step(deltaTime)
		if not complete then

			allMotorsComplete = false
		end
	end

	self._onStep:fire(self:getValue())

	if allMotorsComplete then
		if self._useImplicitConnections then
			self:stop()
		end

		self._complete = true
		self._onComplete:fire()
	end

	return allMotorsComplete
end

function GroupMotor:setGoal(goals)
	assert(not goals.step, 'goals contains disallowed property "step". Did you mean to put a table of goals here?')

	self._complete = false
	self._onStart:fire()

	for key, goal in pairs(goals) do
		local motor = assert(self._motors[key], ("Unknown motor for key %s"):format(key))
		motor:setGoal(goal)
	end

	if self._useImplicitConnections then
		self:start()
	end
end

function GroupMotor:getValue()
	local values = {}

	for key, motor in pairs(self._motors) do
		values[key] = motor:getValue()
	end

	return values
end

function GroupMotor:__tostring()
	return "Motor(Group)"
end

local Flipper = {
	SingleMotor = SingleMotor,
	GroupMotor = GroupMotor,

	Instant = Instant,
	Linear = Linear,
	Spring = Spring,

	isMotor = isMotor,
}

local Creator = {
	Registry = {},
	Signals = {},
	TransparencyMotors = {},
	DefaultProperties = {
		ScreenGui = {
			ResetOnSpawn = false,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		},
		Frame = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			BorderSizePixel = 0,
		},
		ScrollingFrame = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			ScrollBarImageColor3 = Color3.new(0, 0, 0),
		},
		TextLabel = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			Font = Enum.Font.SourceSans,
			Text = "",
			TextColor3 = Color3.new(0, 0, 0),
			BackgroundTransparency = 1,
			TextSize = 14,
		},
		TextButton = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			AutoButtonColor = false,
			Font = Enum.Font.SourceSans,
			Text = "",
			TextColor3 = Color3.new(0, 0, 0),
			TextSize = 14,
		},
		TextBox = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			ClearTextOnFocus = false,
			Font = Enum.Font.SourceSans,
			Text = "",
			TextColor3 = Color3.new(0, 0, 0),
			TextSize = 14,
		},
		ImageLabel = {
			BackgroundTransparency = 1,
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			BorderSizePixel = 0,
		},
		ImageButton = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			AutoButtonColor = false,
		},
		CanvasGroup = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			BorderSizePixel = 0,
		},
	},
}

local function ApplyCustomProps(Object, Props)
	if Props.ThemeTag then
		Creator.AddThemeObject(Object, Props.ThemeTag)
	end
end

function Creator.AddSignal(Signal, Function)
	local Connected = Signal:Connect(Function)
	table.insert(Creator.Signals, Connected)
	return Connected
end

function Creator.Disconnect()
	for Idx = #Creator.Signals, 1, -1 do
		local Connection = table.remove(Creator.Signals, Idx)
		if Connection.Disconnect then
			Connection:Disconnect()
		end
	end
end

Creator.Themes = Themes
Creator.Theme = Creator.Theme or "Dark"

function Creator.GetThemeProperty(Property)
	local Theme = Creator.Themes[Creator.Theme]
	if Theme then
		return Theme[Property]
	end
	return Creator.Themes.Dark[Property]
end

function Creator.UpdateTheme()
	if not Creator.Themes[Creator.Theme] then
		Creator.Theme = "Dark"
	end

	for Instance, Object in next, Creator.Registry do
		for Property, ColorIdx in next, Object.Properties do
			local themeValue = Creator.GetThemeProperty(ColorIdx)
			if themeValue then
				Instance[Property] = themeValue
			end
		end
	end

	local transparency = Creator.GetThemeProperty("ElementTransparency")
	if transparency then
		for _, Motor in next, Creator.TransparencyMotors do
			Motor:setGoal(Flipper.Instant.new(transparency))
		end
	end
end

function Creator.AddThemeObject(Object, Properties)
	local Idx = #Creator.Registry + 1
	local Data = {
		Object = Object,
		Properties = Properties,
		Idx = Idx,
	}

	Creator.Registry[Object] = Data
	Creator.UpdateTheme()
	return Object
end

function Creator.OverrideTag(Object, Properties)
	Creator.Registry[Object].Properties = Properties
	Creator.UpdateTheme()
end

function Creator.GetThemeProperty(Property)
	if Themes[Library.Theme][Property] then
		return Themes[Library.Theme][Property]
	end
	return Themes["Dark"][Property]
end
function Creator.New(Name, Properties, Children)
	local Object = Instance.new(Name)

	for Name, Value in next, Creator.DefaultProperties[Name] or {} do
		Object[Name] = Value
	end


	for Name, Value in next, Properties or {} do
		if Name ~= "ThemeTag" then
			Object[Name] = Value
		end
	end


	for _, Child in next, Children or {} do
		Child.Parent = Object
	end

	ApplyCustomProps(Object, Properties)
	return Object
end

function Creator.SpringMotor(Initial, Instance, Prop, IgnoreDialogCheck, ResetOnThemeChange)
	IgnoreDialogCheck = IgnoreDialogCheck or false
	ResetOnThemeChange = ResetOnThemeChange or false
	local Motor = Flipper.SingleMotor.new(Initial)
	Motor:onStep(function(value)
		Instance[Prop] = value
	end)

	if ResetOnThemeChange then
		table.insert(Creator.TransparencyMotors, Motor)
	end

	local function SetValue(Value, Ignore)
		Ignore = Ignore or false
		if not IgnoreDialogCheck then
			if not Ignore then
				if Prop == "BackgroundTransparency" and Library.DialogOpen then
					return
				end
			end
		end
		Motor:setGoal(Flipper.Spring.new(Value, { frequency = 8 }))
	end

	return Motor, SetValue
end

Library.Creator = Creator

local New = Creator.New

local GUI = New("ScreenGui", {
	Parent = game:GetService("CoreGui"),
})
Library.GUI = GUI
ProtectGui(GUI)

function Library:SafeCallback(Function, ...)
	if not Function then
		return
	end

	local Success, Event = pcall(Function, ...)
	if not Success then
		local _, i = Event:find(":%d+: ")

		if not i then
			return Library:Notify({
				Title = "Interface",
				Content = "Callback error",
				SubContent = Event,
				Duration = 5,
			})
		end

		return Library:Notify({
			Title = "Interface",
			Content = "Callback error",
			SubContent = Event:sub(i + 1),
			Duration = 5,
		})
	end
end--?
function Library:Round(Number, Factor)
	if Factor == 0 then
		return math.floor(Number)
	end
	Number = tostring(Number)
	return Number:find("%.") and tonumber(Number:sub(1, Number:find("%.") + Factor)) or Number
end

local function map(value, inMin, inMax, outMin, outMax)
	return (value - inMin) * (outMax - outMin) / (inMax - inMin) + outMin
end

local function viewportPointToWorld(location, distance)
	local unitRay = game:GetService("Workspace").CurrentCamera:ScreenPointToRay(location.X, location.Y)
	return unitRay.Origin + unitRay.Direction * distance
end

local function getOffset()
	local viewportSizeY = game:GetService("Workspace").CurrentCamera.ViewportSize.Y
	return map(viewportSizeY, 0, 2560, 8, 56)
end

local viewportPointToWorld, getOffset = unpack({ viewportPointToWorld, getOffset })

local BlurFolder = Instance.new("Folder", game:GetService("Workspace").CurrentCamera)

local function createAcrylic()
	local Part = Creator.New("Part", {
		Name = "Body",
		Color = Color3.new(0, 0, 0),
		Material = Enum.Material.Glass,
		Size = Vector3.new(1, 1, 0),
		Anchored = true,
		CanCollide = false,
		Locked = true,
		CastShadow = false,
		Transparency = 0.95,
	}, {
		Creator.New("SpecialMesh", {
			MeshType = Enum.MeshType.Brick,
			Offset = Vector3.new(0, 0, -0.000001),
		}),
	})

	return Part
end

function AcrylicBlur()
	local function createAcrylicBlur(distance)
		local cleanups = {}

		distance = distance or 0.001
		local positions = {
			topLeft = Vector2.new(),
			topRight = Vector2.new(),
			bottomRight = Vector2.new(),
		}
		local model = createAcrylic()
		model.Parent = BlurFolder

		local function updatePositions(size, position)
			positions.topLeft = position
			positions.topRight = position + Vector2.new(size.X, 0)
			positions.bottomRight = position + size
		end

		local function render()
			local res = game:GetService("Workspace").CurrentCamera
			if res then
				res = res.CFrame
			end
			local cond = res
			if not cond then
				cond = CFrame.new()
			end

			local camera = cond
			local topLeft = positions.topLeft
			local topRight = positions.topRight
			local bottomRight = positions.bottomRight

			local topLeft3D = viewportPointToWorld(topLeft, distance)
			local topRight3D = viewportPointToWorld(topRight, distance)
			local bottomRight3D = viewportPointToWorld(bottomRight, distance)

			local width = (topRight3D - topLeft3D).Magnitude
			local height = (topRight3D - bottomRight3D).Magnitude

			model.CFrame =
				CFrame.fromMatrix((topLeft3D + bottomRight3D) / 2, camera.XVector, camera.YVector, camera.ZVector)
			model.Mesh.Scale = Vector3.new(width, height, 0)
		end

		local function onChange(rbx)
			local offset = getOffset()
			local size = rbx.AbsoluteSize - Vector2.new(offset, offset)
			local position = rbx.AbsolutePosition + Vector2.new(offset / 2, offset / 2)

			updatePositions(size, position)
			task.spawn(render)
		end

		local function renderOnChange()
			local camera = game:GetService("Workspace").CurrentCamera
			if not camera then
				return
			end

			table.insert(cleanups, camera:GetPropertyChangedSignal("CFrame"):Connect(render))
			table.insert(cleanups, camera:GetPropertyChangedSignal("ViewportSize"):Connect(render))
			table.insert(cleanups, camera:GetPropertyChangedSignal("FieldOfView"):Connect(render))
			task.spawn(render)
		end

		model.Destroying:Connect(function()
			for _, item in cleanups do
				pcall(function()
					item:Disconnect()
				end)
			end
		end)

		renderOnChange()

		return onChange, model
	end

	return function(distance)
		local Blur = {}
		local onChange, model = createAcrylicBlur(distance)

		local comp = Creator.New("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
		})

		Creator.AddSignal(comp:GetPropertyChangedSignal("AbsolutePosition"), function()
			onChange(comp)
		end)

		Creator.AddSignal(comp:GetPropertyChangedSignal("AbsoluteSize"), function()
			onChange(comp)
		end)

		Blur.AddParent = function(Parent)
			Creator.AddSignal(Parent:GetPropertyChangedSignal("Visible"), function()
				Blur.SetVisibility(Parent.Visible)
			end)
		end

		Blur.SetVisibility = function(Value)
			model.Transparency = Value and 0.95 or 1
		end

		Blur.Frame = comp
		Blur.Model = model

		return Blur
	end
end

function AcrylicPaint()
	local New = Creator.New
	local AcrylicBlur = AcrylicBlur()

	return function(props)
		local AcrylicPaint = {}

		AcrylicPaint.Frame = New("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 0.9,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BorderSizePixel = 0,
		}, {
			New("ImageLabel", {
				Image = "rbxassetid://8992230677",
				ScaleType = "Slice",
				SliceCenter = Rect.new(Vector2.new(99, 99), Vector2.new(99, 99)),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(1, 120, 1, 116),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundTransparency = 1,
				ImageColor3 = Color3.fromRGB(0, 0, 0),
				ImageTransparency = 0.7,
			}),

			New("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),

			New("Frame", {
				BackgroundTransparency = 0.45,
				Size = UDim2.fromScale(1, 1),
				Name = "Background",
				ThemeTag = {
					BackgroundColor3 = "AcrylicMain",
				},
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
			}),

			New("Frame", {
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 0.4,
				Size = UDim2.fromScale(1, 1),
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),

				New("UIGradient", {
					Rotation = 90,
					ThemeTag = {
						Color = "AcrylicGradient",
					},
				}),
			}),

			New("ImageLabel", {
				Image = "rbxassetid://9968344105",
				ImageTransparency = 0.98,
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.new(0, 128, 0, 128),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
			}),

			New("ImageLabel", {
				Image = "rbxassetid://9968344227",
				ImageTransparency = 0.9,
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.new(0, 128, 0, 128),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				ThemeTag = {
					ImageTransparency = "AcrylicNoise",
				},
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
			}),

			New("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				ZIndex = 2,
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
				New("UIStroke", {
					Transparency = 0.5,
					Thickness = 1,
					ThemeTag = {
						Color = "AcrylicBorder",
					},
				}),
			}),
		})

		local Blur

		if Library.UseAcrylic then
			Blur = AcrylicBlur()
			Blur.Frame.Parent = AcrylicPaint.Frame
			AcrylicPaint.Model = Blur.Model
			AcrylicPaint.AddParent = Blur.AddParent
			AcrylicPaint.SetVisibility = Blur.SetVisibility
		end

		return AcrylicPaint
	end
end

local Acrylic = {
	AcrylicBlur = AcrylicBlur(),
	CreateAcrylic = createAcrylic,
	AcrylicPaint = AcrylicPaint(),
}

function Acrylic.init()
	local depthOfFieldDefaults = {}

	function Acrylic.Enable()
	-- 1
	end

	function Acrylic.Disable()
	-- 2
	end

end

local Components = {
	Assets = {
		Close = "rbxassetid://9886659671",
		Min = "rbxassetid://9886659276",
		Max = "rbxassetid://9886659406",
		Restore = "rbxassetid://9886659001",
	},
}

Components.Element = (function()
	local New = Creator.New

	return function(Title, Desc, Parent, Hover, Options)
		local Element = {}
		local Options = Options or {}

		Element.TitleLabel = New("TextLabel", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
			Text = Title,
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.new(1, 0, 0, 14),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			ThemeTag = {
				TextColor3 = "Text",
			},
		})

		Element.Header = New("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 14),
		}, {
			New("UIListLayout", {
				Padding = UDim.new(0, 5),
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
		})

		if Options and Options.Icon then
			local iconImage = Options.Icon
			pcall(function()
				if Library and Library.GetIcon then
					local resolved = Library:GetIcon(Options.Icon)
					if resolved then iconImage = resolved end
				end
			end)
			Element.IconImage = New("ImageLabel", {
				Image = iconImage,
				Size = UDim2.fromOffset(16, 16),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
				ThemeTag = {
					ImageColor3 = "Text",
				},
			})
			Element.IconImage.Parent = Element.Header
		end

		Element.TitleLabel.Parent = Element.Header

		Element.DescLabel = New("TextLabel", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
			Text = Desc,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 12,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 14),
			ThemeTag = {
				TextColor3 = "SubText",
			},
		})

		Element.LabelHolder = New("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(10, 0),
			Size = UDim2.new(1, -28, 0, 0),
		}, {
			New("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			New("UIPadding", {
				PaddingBottom = UDim.new(0, 13),
				PaddingTop = UDim.new(0, 13),
			}),
			Element.Header,
			Element.DescLabel,
		})

		Element.Border = New("UIStroke", {
			Transparency = 0.5,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = Color3.fromRGB(0, 0, 0),
			ThemeTag = {
				Color = "ElementBorder",
			},
		})

		Element.Frame = New("TextButton", {
			Visible = Options.Visible and Options.Visible or true,
			Size = UDim2.new(1, 0, 0, 0),
			BackgroundTransparency = 0.89,
			BackgroundColor3 = Color3.fromRGB(130, 130, 130),
			Parent = Parent,
			AutomaticSize = Enum.AutomaticSize.Y,
			Text = "",
			LayoutOrder = 7,
			ThemeTag = {
				BackgroundColor3 = "Element",
				BackgroundTransparency = "ElementTransparency",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 4),
			}),
			Element.Border,
			Element.LabelHolder,
		})

		function Element:SetTitle(Set)
			Element.TitleLabel.Text = Set
			local hasTitle = (Set ~= nil and Set ~= "")
			Element.Header.Visible = hasTitle

			if not hasTitle then
				if Element.IconImage then
					if not Element.DescRow then
						Element.DescRow = New("Frame", {
							AutomaticSize = Enum.AutomaticSize.Y,
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 0, 14),
							LayoutOrder = 2,
						}, {
							New("UIListLayout", {
								Padding = UDim.new(0, 5),
								FillDirection = Enum.FillDirection.Horizontal,
								SortOrder = Enum.SortOrder.LayoutOrder,
								VerticalAlignment = Enum.VerticalAlignment.Center,
							}),
						})
						Element.DescRow.Parent = Element.LabelHolder
					end

					if not Element.DescIconImage then
						Element.DescIconImage = New("ImageLabel", {
							Image = Element.IconImage.Image,
							Size = UDim2.fromOffset(16, 16),
							BackgroundTransparency = 1,
							LayoutOrder = 1,
							ThemeTag = {
								ImageColor3 = "Text",
							},
						})
						Element.DescIconImage.Parent = Element.DescRow
					else
						Element.DescIconImage.Image = Element.IconImage.Image
						Element.DescIconImage.Parent = Element.DescRow
					end

					Element.DescLabel.Parent = Element.DescRow
					Element.DescLabel.LayoutOrder = 2
					Element.DescLabel.Size = UDim2.new(1, -24, 0, 14)
				else
					if Element.DescRow then
						Element.DescRow:Destroy()
						Element.DescRow = nil
						Element.DescIconImage = nil
					end
					Element.DescLabel.Parent = Element.LabelHolder
					Element.DescLabel.LayoutOrder = 2
					Element.DescLabel.Size = UDim2.new(1, 0, 0, 14)
				end
			else
				if Element.DescRow then
					Element.DescRow:Destroy()
					Element.DescRow = nil
					Element.DescIconImage = nil
				end
				Element.DescLabel.Parent = Element.LabelHolder
				Element.DescLabel.LayoutOrder = 2
				Element.DescLabel.Size = UDim2.new(1, 0, 0, 14)
			end
			if Library.Windows and #Library.Windows > 0 then
				local currentWindow = Library.Windows[#Library.Windows]
				if currentWindow and currentWindow.AllElements and currentWindow.AllElements[Element.Frame] then
					currentWindow.AllElements[Element.Frame].title = Set
				end
			end
		end

		function Element:Visible(Bool)
			Element.Frame.Visible = Bool
		end

		function Element:SetDesc(Set)
			if Set == nil then
				Set = ""
			end
			if Set == "" then
				Element.DescLabel.Visible = false
			else
				Element.DescLabel.Visible = true
			end
			Element.DescLabel.Text = Set
			if Library.Windows and #Library.Windows > 0 then
				local currentWindow = Library.Windows[#Library.Windows]
				if currentWindow and currentWindow.AllElements and currentWindow.AllElements[Element.Frame] then
					currentWindow.AllElements[Element.Frame].description = Set
				end
			end
		end

		function Element:GetTitle()
			return Element.TitleLabel.Text
		end

		function Element:GetDesc()
			return Element.DescLabel.Text
		end

		function Element:Destroy()
			Element.Frame:Destroy()
		end

		Element.Header.Visible = not (Title == nil or Title == "")

		Element:SetTitle(Title or "")
		Element:SetDesc(Desc)


		if Library.Windows and #Library.Windows > 0 then
			local currentWindow = Library.Windows[#Library.Windows]
			if currentWindow and currentWindow.RegisterElement then
				currentWindow.RegisterElement(Element.Frame, Title, "Element", Desc)
			end
		end

		if Hover then
			local Themes = Library.Themes
			local Motor, SetTransparency = Creator.SpringMotor(
				Creator.GetThemeProperty("ElementTransparency"),
				Element.Frame,
				"BackgroundTransparency",
				false,
				true
			)

			Creator.AddSignal(Element.Frame.MouseEnter, function()
				SetTransparency(Creator.GetThemeProperty("ElementTransparency") - Creator.GetThemeProperty("HoverChange"))
			end)
			Creator.AddSignal(Element.Frame.MouseLeave, function()
				SetTransparency(Creator.GetThemeProperty("ElementTransparency"))
			end)
			Creator.AddSignal(Element.Frame.MouseButton1Down, function()
				SetTransparency(Creator.GetThemeProperty("ElementTransparency") + Creator.GetThemeProperty("HoverChange"))
			end)
			Creator.AddSignal(Element.Frame.MouseButton1Up, function()
				SetTransparency(Creator.GetThemeProperty("ElementTransparency") - Creator.GetThemeProperty("HoverChange"))
			end)
		end

		return Element
	end
end)()
Components.Section = (function()
	local New = Creator.New

	return function(Title, Parent, Icon)
		local Section = {}

		Section.Layout = New("UIListLayout", {
			Padding = UDim.new(0, 5),
		})

		Section.Container = New("Frame", {
			Size = UDim2.new(1, 0, 0, 26),
			Position = UDim2.fromOffset(0, 24),
			BackgroundTransparency = 1,
		}, {
			Section.Layout,
		})

		local SectionHeader = New("Frame", {
			Size = UDim2.new(1, -16, 0, 18),
			Position = UDim2.fromOffset(0, 2),
			BackgroundTransparency = 1,
		}, {
			New("UIListLayout", {
				Padding = UDim.new(0, 5),
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			Icon and New("ImageLabel", {
				Image = Icon,
				Size = UDim2.fromOffset(16, 16),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
				ThemeTag = {
					ImageColor3 = "Text",
				},
			}) or nil,
			New("TextLabel", {
				RichText = true,
				Text = Title,
				TextTransparency = 0,
				FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
				TextSize = 18,
				TextXAlignment = "Left",
				TextYAlignment = "Center",
				Size = UDim2.fromScale(0, 1),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				ThemeTag = {
					TextColor3 = "Text",
				},
			}),
		})

		Section.Root = New("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 26),
			LayoutOrder = 7,
			Parent = Parent,
		}, {
			SectionHeader,
			Section.Container,
		})

		Creator.AddSignal(Section.Layout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
			Section.Container.Size = UDim2.new(1, 0, 0, Section.Layout.AbsoluteContentSize.Y)
			Section.Root.Size = UDim2.new(1, 0, 0, Section.Layout.AbsoluteContentSize.Y + 25)
		end)


		if Library.Windows and #Library.Windows > 0 then
			local currentWindow = Library.Windows[#Library.Windows]
			if currentWindow and currentWindow.RegisterElement then
				currentWindow.RegisterElement(Section.Root, Title, "Section")
			end
		end

		return Section
	end
end)()
Components.Tab = (function()
	local New = Creator.New
	local Spring = Flipper.Spring.new
	local Instant = Flipper.Instant.new
	local Components = Components

	local TabModule = {
		Window = nil,
		Tabs = {},
		Containers = {},
		SelectedTab = 0,
		TabCount = 0,
	}

	function TabModule:Init(Window)
		TabModule.Window = Window
		return TabModule
	end

	function TabModule:GetCurrentTabPos()
		local TabHolderPos = TabModule.Window.TabHolder.AbsolutePosition.Y
		local TabPos = TabModule.Tabs[TabModule.SelectedTab].Frame.AbsolutePosition.Y

		return TabPos - TabHolderPos
	end

	function TabModule:New(Title, Icon, Parent)
		local Window = TabModule.Window
		local Elements = Library.Elements

		TabModule.TabCount = TabModule.TabCount + 1
		local TabIndex = TabModule.TabCount

		local Tab = {
			Selected = false,
			Name = Title,
			Type = "Tab",
		}

		if not fischbypass then 
			if Library:GetIcon(Icon) then
				Icon = Library:GetIcon(Icon)
			end

			if Icon == "" or nil then
				Icon = nil
			end
		end

		Tab.Frame = New("TextButton", {
			Size = UDim2.new(1, 0, 0, 34),
			BackgroundTransparency = 1,
			Parent = Parent,
			ThemeTag = {
				BackgroundColor3 = "Tab",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 6),
			}),
			New("TextLabel", {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = not fischbypass and Icon and UDim2.new(0, 30, 0.5, 0) or UDim2.new(0, 12, 0.5, 0),
				Text = Title,
				RichText = true,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextTransparency = 0,
				FontFace = Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Regular,
					Enum.FontStyle.Normal
				),
				TextSize = 12,
				TextXAlignment = "Left",
				TextYAlignment = "Center",
				Size = UDim2.new(1, -12, 1, 0),
				BackgroundTransparency = 1,
				ThemeTag = {
					TextColor3 = "Text",
				},
			}),
			New("ImageLabel", {
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.fromOffset(16, 16),
				Position = UDim2.new(0, 8, 0.5, 0),
				BackgroundTransparency = 1,
				Image = Icon and Icon or nil,
				ThemeTag = {
					ImageColor3 = "Text",
				},
			}),
		})

		local ContainerLayout = New("UIListLayout", {
			Padding = UDim.new(0, 5),
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		Tab.ContainerFrame = New("ScrollingFrame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Parent = Window.ContainerHolder,
			Visible = false,
			BottomImage = "rbxassetid://6889812791",
			MidImage = "rbxassetid://6889812721",
			TopImage = "rbxassetid://6276641225",
			ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
			ScrollBarImageTransparency = 0.95,
			ScrollBarThickness = 3,
			BorderSizePixel = 0,
			CanvasSize = UDim2.fromScale(0, 0),
			ScrollingDirection = Enum.ScrollingDirection.Y,
			ScrollingEnabled = true,
		}, {
			ContainerLayout,
			New("UIPadding", {
				PaddingRight = UDim.new(0, 10),
				PaddingLeft = UDim.new(0, 1),
				PaddingTop = UDim.new(0, 1),
				PaddingBottom = UDim.new(0, 1),
			}),
		})

		Creator.AddSignal(ContainerLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
			Tab.ContainerFrame.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y + 2)
		end)

		Tab.Motor, Tab.SetTransparency = Creator.SpringMotor(1, Tab.Frame, "BackgroundTransparency")

		Creator.AddSignal(Tab.Frame.MouseEnter, function()
			Tab.SetTransparency(Tab.Selected and 0.85 or 0.89)
		end)
		Creator.AddSignal(Tab.Frame.MouseLeave, function()
			Tab.SetTransparency(Tab.Selected and 0.89 or 1)
		end)
		Creator.AddSignal(Tab.Frame.MouseButton1Down, function()
			Tab.SetTransparency(0.92)
		end)
		Creator.AddSignal(Tab.Frame.MouseButton1Up, function()
			Tab.SetTransparency(Tab.Selected and 0.85 or 0.89)
		end)
		Creator.AddSignal(Tab.Frame.MouseButton1Click, function()
			TabModule:SelectTab(TabIndex)
		end)

		TabModule.Containers[TabIndex] = Tab.ContainerFrame
		TabModule.Tabs[TabIndex] = Tab

		Tab.Container = Tab.ContainerFrame
		Tab.ScrollFrame = Tab.Container

		function Tab:AddSection(SectionTitle, SectionIcon)
			local Section = { Type = "Section" }

			local Icon = SectionIcon
			if not fischbypass then 
				if Library:GetIcon(Icon) then
					Icon = Library:GetIcon(Icon)
				end

				if Icon == "" or nil then
					Icon = nil
				end
			end

			local SectionFrame = Components.Section(SectionTitle, Tab.Container, Icon)
			Section.Container = SectionFrame.Container
			Section.ScrollFrame = Tab.Container

			setmetatable(Section, Elements)
			return Section
		end

		setmetatable(Tab, Elements)
		return Tab
	end

	function TabModule:SelectTab(Tab)
		local Window = TabModule.Window

		TabModule.SelectedTab = Tab

		for _, TabObject in next, TabModule.Tabs do
			TabObject.SetTransparency(1)
			TabObject.Selected = false
		end
		TabModule.Tabs[Tab].SetTransparency(0.89)
		TabModule.Tabs[Tab].Selected = true

		Window.TabDisplay.Text = TabModule.Tabs[Tab].Name
		Window.SelectorPosMotor:setGoal(Spring(TabModule:GetCurrentTabPos(), { frequency = 6 }))

		task.spawn(function()
			Window.ContainerHolder.Parent = Window.ContainerAnim

			Window.ContainerPosMotor:setGoal(Spring(15, { frequency = 10 }))
			Window.ContainerBackMotor:setGoal(Spring(1, { frequency = 10 }))
			task.wait(0.12)
			for _, Container in next, TabModule.Containers do
				Container.Visible = false
			end
			TabModule.Containers[Tab].Visible = true
			Window.ContainerPosMotor:setGoal(Spring(0, { frequency = 5 }))
			Window.ContainerBackMotor:setGoal(Spring(0, { frequency = 8 }))
			task.wait(0.12)
			Window.ContainerHolder.Parent = Window.ContainerCanvas
		end)
	end

	return TabModule
end)()
Components.Button = (function()
	local New = Creator.New

	local Spring = Flipper.Spring.new

	return function(Theme, Parent, DialogCheck)
		DialogCheck = DialogCheck or false
		local Button = {}

		Button.Title = New("TextLabel", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 14,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			ThemeTag = {
				TextColor3 = "Text",
			},
		})

		Button.HoverFrame = New("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ThemeTag = {
				BackgroundColor3 = "Hover",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 4),
			}),
		})

		Button.Frame = New("TextButton", {
			Size = UDim2.new(0, 0, 0, 32),
			Parent = Parent,
			ThemeTag = {
				BackgroundColor3 = "DialogButton",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 4),
			}),
			New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Transparency = 0.65,
				ThemeTag = {
					Color = "DialogButtonBorder",
				},
			}),
			Button.HoverFrame,
			Button.Title,
		})
		local Motor, SetTransparency = Creator.SpringMotor(1, Button.HoverFrame, "BackgroundTransparency", DialogCheck)
		Creator.AddSignal(Button.Frame.MouseEnter, function()
			SetTransparency(0.97)
		end)
		Creator.AddSignal(Button.Frame.MouseLeave, function()
			SetTransparency(1)
		end)
		Creator.AddSignal(Button.Frame.MouseButton1Down, function()
			SetTransparency(1)
		end)
		Creator.AddSignal(Button.Frame.MouseButton1Up, function()
			SetTransparency(0.97)
		end)

		return Button
	end
end)()
Components.Dialog = (function()
	local Spring = Flipper.Spring.new
	local Instant = Flipper.Instant.new
	local New = Creator.New

	local Dialog = {
		Window = nil,
	}

	function Dialog:Init(Window)
		Dialog.Window = Window
		return Dialog
	end

	function Dialog:Create()
		local NewDialog = {
			Buttons = 0,
		}

		NewDialog.TintFrame = New("TextButton", {
			Text = "",
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = 1,
			Parent = Dialog.Window.Root,
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
		})

		local TintMotor, TintTransparency = Creator.SpringMotor(1, NewDialog.TintFrame, "BackgroundTransparency", true)

		NewDialog.ButtonHolder = New("Frame", {
			Size = UDim2.new(1, -40, 1, -40),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			BackgroundTransparency = 1,
		}, {
			New("UIListLayout", {
				Padding = UDim.new(0, 10),
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
		})

		NewDialog.ButtonHolderFrame = New("Frame", {
			Size = UDim2.new(1, 0, 0, 70),
			Position = UDim2.new(0, 0, 1, -70),
			ThemeTag = {
				BackgroundColor3 = "DialogHolder",
			},
		}, {
			New("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				ThemeTag = {
					BackgroundColor3 = "DialogHolderLine",
				},
			}),
			NewDialog.ButtonHolder,
		})

		NewDialog.Title = New("TextLabel", {
			FontFace = Font.new(
				"rbxasset://fonts/families/GothamSSm.json",
				Enum.FontWeight.SemiBold,
				Enum.FontStyle.Normal
			),
			Text = "Dialog",
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.fromOffset(20, 25),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			ThemeTag = {
				TextColor3 = "Text",
			},
		})

		NewDialog.Scale = New("UIScale", {
			Scale = 1,
		})

		local ScaleMotor, Scale = Creator.SpringMotor(1.1, NewDialog.Scale, "Scale")

		NewDialog.Root = New("CanvasGroup", {
			Size = UDim2.fromOffset(300, 165),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			GroupTransparency = 1,
			Parent = NewDialog.TintFrame,
			ThemeTag = {
				BackgroundColor3 = "Dialog",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
			New("UIStroke", {
				Transparency = 0.5,
				ThemeTag = {
					Color = "DialogBorder",
				},
			}),
			NewDialog.Scale,
			NewDialog.Title,
			NewDialog.ButtonHolderFrame,
		})

		local RootMotor, RootTransparency = Creator.SpringMotor(1, NewDialog.Root, "GroupTransparency")

		function NewDialog:Open()
			Library.DialogOpen = true
			NewDialog.Scale.Scale = 1.1
			TintTransparency(0.75)
			RootTransparency(0)
			Scale(1)
		end

		function NewDialog:Close()
			Library.DialogOpen = false
			TintTransparency(1)
			RootTransparency(1)
			Scale(1.1)
			NewDialog.Root.UIStroke:Destroy()
			task.wait(0.15)
			NewDialog.TintFrame:Destroy()
		end

		function NewDialog:Button(Title, Callback)
			NewDialog.Buttons = NewDialog.Buttons + 1
			Title = Title or "Button"
			Callback = Callback or function() end

			local Button = Components.Button("", NewDialog.ButtonHolder, true)
			Button.Title.Text = Title

			for _, Btn in next, NewDialog.ButtonHolder:GetChildren() do
				if Btn:IsA("TextButton") then
					Btn.Size =
						UDim2.new(1 / NewDialog.Buttons, -(((NewDialog.Buttons - 1) * 10) / NewDialog.Buttons), 0, 32)
				end
			end

			Creator.AddSignal(Button.Frame.MouseButton1Click, function()
				Library:SafeCallback(Callback)
				pcall(function()
					NewDialog:Close()
				end)
			end)

			return Button
		end

		return NewDialog
	end

	return Dialog
end)()
Components.Notification = (function()
	local Spring = Flipper.Spring.new
	local Instant = Flipper.Instant.new
	local New = Creator.New

	local Notification = {}

	function Notification:Init(GUI)
		Library.ActiveNotifications = Library.ActiveNotifications or {}

		Notification.Holder = New("Frame", {
			Position = UDim2.new(1, -30, 1, -30),
			Size = UDim2.new(0, 310, 1, -30),
			AnchorPoint = Vector2.new(1, 1),
			BackgroundTransparency = 1,
			Parent = GUI,
		}, {
			New("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Bottom,
				Padding = UDim.new(0, 20),
			}),
		})
	end

	function Notification:New(Config)
		Config.Title = Config.Title or "Title"
		Config.Content = Config.Content or "Content"
		Config.SubContent = Config.SubContent or ""
		Config.Duration = Config.Duration or nil
		local NewNotification = {
			Closed = false,
		}

		NewNotification.AcrylicPaint = Acrylic.AcrylicPaint()

		NewNotification.Title = New("TextLabel", {
			Position = UDim2.new(0, 14, 0, 17),
			Text = Config.Title,
			RichText = true,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextTransparency = 0,
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
			TextSize = 13,
			TextXAlignment = "Left",
			TextYAlignment = "Center",
			Size = UDim2.new(1, -12, 0, 12),
			TextWrapped = true,
			BackgroundTransparency = 1,
			ThemeTag = {
				TextColor3 = "Text",
			},
		})

		NewNotification.ContentLabel = New("TextLabel", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
			Text = Config.Content,
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 14),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			TextWrapped = true,
			ThemeTag = {
				TextColor3 = "Text",
			},
		})

		NewNotification.SubContentLabel = New("TextLabel", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
			Text = Config.SubContent,
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 14),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			TextWrapped = true,
			ThemeTag = {
				TextColor3 = "SubText",
			},
		})

		NewNotification.LabelHolder = New("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(14, 40),
			Size = UDim2.new(1, -28, 0, 0),
		}, {
			New("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, 3),
			}),
			NewNotification.ContentLabel,
			NewNotification.SubContentLabel,
		})

		NewNotification.CloseButton = New("TextButton", {
			Text = "",
			Position = UDim2.new(1, -14, 0, 13),
			Size = UDim2.fromOffset(20, 20),
			AnchorPoint = Vector2.new(1, 0),
			BackgroundTransparency = 1,
		}, {
			New("ImageLabel", {
				Image = Components.Close,
				Size = UDim2.fromOffset(16, 16),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				ThemeTag = {
					ImageColor3 = "Text",
				},
			}),
		})

		NewNotification.Root = New("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.fromScale(1, 0),
		}, {
			NewNotification.AcrylicPaint.Frame,
			NewNotification.Title,
			NewNotification.CloseButton,
			NewNotification.LabelHolder,
		})

		if Config.Content == "" then
			NewNotification.ContentLabel.Visible = false
		end

		if Config.SubContent == "" then
			NewNotification.SubContentLabel.Visible = false
		end

		NewNotification.Holder = New("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 200),
			Parent = Notification.Holder,
		}, {
			NewNotification.Root,
		})

		local RootMotor = Flipper.GroupMotor.new({
			Scale = 1,
			Offset = 60,
		})

		RootMotor:onStep(function(Values)
			NewNotification.Root.Position = UDim2.new(Values.Scale, Values.Offset, 0, 0)
		end)

		Creator.AddSignal(NewNotification.CloseButton.MouseButton1Click, function()
			NewNotification:Close()
		end)
		function NewNotification:ApplyTransparency()
			if Library.Theme == "Glass" and Library.UseAcrylic then
				local Value = Library.NotificationTransparency or 1

				local notifTransparency = 0.85 + (Value * 0.08)
				if Value > 1 then
					notifTransparency = 0.93 + ((Value - 1) * 0.04)
				end

				local notifBackgroundTransparency = 0.8 + (Value * 0.1)
				if Value > 1 then
					notifBackgroundTransparency = 0.9 + ((Value - 1) * 0.05)
				end

				if NewNotification.AcrylicPaint and NewNotification.AcrylicPaint.Model then
					NewNotification.AcrylicPaint.Model.Transparency = math.min(notifTransparency, 0.97)
				end
				if NewNotification.AcrylicPaint and NewNotification.AcrylicPaint.Frame and NewNotification.AcrylicPaint.Frame.Background then
					NewNotification.AcrylicPaint.Frame.Background.BackgroundTransparency = math.min(notifBackgroundTransparency, 0.95)
				end
			end
		end

		function NewNotification:Open()
			local ContentSize = NewNotification.LabelHolder.AbsoluteSize.Y
			NewNotification.Holder.Size = UDim2.new(1, 0, 0, 58 + ContentSize)

			RootMotor:setGoal({
				Scale = Spring(0, { frequency = 5 }),
				Offset = Spring(0, { frequency = 5 }),
			})

			task.defer(function()
				task.wait(0.1)
				NewNotification:ApplyTransparency()
			end)
		end

		function NewNotification:Close()
			if not NewNotification.Closed then
				NewNotification.Closed = true

				for i, notif in pairs(Library.ActiveNotifications or {}) do
					if notif == NewNotification then
						table.remove(Library.ActiveNotifications, i)
						break
					end
				end

				task.spawn(function()
					RootMotor:setGoal({
						Scale = Spring(1, { frequency = 5 }),
						Offset = Spring(60, { frequency = 5 }),
					})
					task.wait(0.4)
					if Library.UseAcrylic then
						NewNotification.AcrylicPaint.Model:Destroy()
					end
					NewNotification.Holder:Destroy()
				end)
			end
		end

		table.insert(Library.ActiveNotifications, NewNotification)

		NewNotification:Open()
		if Config.Duration then
			task.delay(Config.Duration, function()
				NewNotification:Close()
			end)
		end
		return NewNotification
	end

	return Notification
end)()
Components.Textbox = (function()
	local New = Creator.New

	return function(Parent, Acrylic)
		Acrylic = Acrylic or false
		local Textbox = {}

		Textbox.Input = New("TextBox", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromOffset(10, 0),
			ThemeTag = {
				TextColor3 = "Text",
				PlaceholderColor3 = "SubText",
			},
		})

		Textbox.Container = New("Frame", {
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			Position = UDim2.new(0, 6, 0, 0),
			Size = UDim2.new(1, -12, 1, 0),
		}, {
			Textbox.Input,
		})

		Textbox.Indicator = New("Frame", {
			Size = UDim2.new(1, -4, 0, 1),
			Position = UDim2.new(0, 2, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
			BackgroundTransparency = Acrylic and 0.5 or 0,
			ThemeTag = {
				BackgroundColor3 = Acrylic and "InputIndicator" or "DialogInputLine",
			},
		})

		Textbox.Frame = New("Frame", {
			Size = UDim2.new(0, 0, 0, 30),
			BackgroundTransparency = Acrylic and 0.9 or 0,
			Parent = Parent,
			ThemeTag = {
				BackgroundColor3 = Acrylic and "Input" or "DialogInput",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 4),
			}),
			New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Transparency = Acrylic and 0.5 or 0.65,
				ThemeTag = {
					Color = Acrylic and "InElementBorder" or "DialogButtonBorder",
				},
			}),
			Textbox.Indicator,
			Textbox.Container,
		})

		local function Update()
			local PADDING = 2
			local Reveal = Textbox.Container.AbsoluteSize.X

			if not Textbox.Input:IsFocused() or Textbox.Input.TextBounds.X <= Reveal - 2 * PADDING then
				Textbox.Input.Position = UDim2.new(0, PADDING, 0, 0)
			else
				local Cursor = Textbox.Input.CursorPosition
				if Cursor ~= -1 then
					local subtext = string.sub(Textbox.Input.Text, 1, Cursor - 1)
					local width = TextService:GetTextSize(
						subtext,
						Textbox.Input.TextSize,
						Textbox.Input.Font,
						Vector2.new(math.huge, math.huge)
					).X

					local CurrentCursorPos = Textbox.Input.Position.X.Offset + width
					if CurrentCursorPos < PADDING then
						Textbox.Input.Position = UDim2.fromOffset(PADDING - width, 0)
					elseif CurrentCursorPos > Reveal - PADDING - 1 then
						Textbox.Input.Position = UDim2.fromOffset(Reveal - width - PADDING - 1, 0)
					end
				end
			end
		end

		task.spawn(Update)

		Creator.AddSignal(Textbox.Input:GetPropertyChangedSignal("Text"), Update)
		Creator.AddSignal(Textbox.Input:GetPropertyChangedSignal("CursorPosition"), Update)

		Creator.AddSignal(Textbox.Input.Focused, function()
			Update()
			Textbox.Indicator.Size = UDim2.new(1, -2, 0, 2)
			Textbox.Indicator.Position = UDim2.new(0, 1, 1, 0)
			Textbox.Indicator.BackgroundTransparency = 0
			Creator.OverrideTag(Textbox.Frame, { BackgroundColor3 = Acrylic and "InputFocused" or "DialogHolder" })
			Creator.OverrideTag(Textbox.Indicator, { BackgroundColor3 = "InputIndicatorFocus" })
		end)

		Creator.AddSignal(Textbox.Input.FocusLost, function()
			Update()
			Textbox.Indicator.Size = UDim2.new(1, -4, 0, 1)
			Textbox.Indicator.Position = UDim2.new(0, 2, 1, 0)
			Textbox.Indicator.BackgroundTransparency = 0.5
			Creator.OverrideTag(Textbox.Frame, { BackgroundColor3 = Acrylic and "Input" or "DialogInput" })
			Creator.OverrideTag(Textbox.Indicator, { BackgroundColor3 = Acrylic and "InputIndicator" or "DialogInputLine" })
		end)

		return Textbox
	end
end)()
Components.TitleBar = (function()
	local New = Creator.New
	local AddSignal = Creator.AddSignal

	local function parseColor(value)
		if typeof(value) == "Color3" then return value end
		if typeof(value) == "string" then
			local hex = value:gsub("#","")
			if #hex == 6 then
				local r = tonumber(hex:sub(1,2), 16) or 255
				local g = tonumber(hex:sub(3,4), 16) or 255
				local b = tonumber(hex:sub(5,6), 16) or 255
				return Color3.fromRGB(r,g,b)
			end
		end
		return Themes[Library.Theme].SubText or Color3.fromRGB(170,170,170)
	end

	return function(Config)
		local TitleBar = {}

		local function BarButton(Icon, Pos, Parent, Callback)
			local Button = {
				Callback = Callback or function() end,
			}

			Button.Frame = New("TextButton", {
				Size = UDim2.new(0, 34, 1, -8),
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1,
				Parent = Parent,
				Position = Pos,
				Text = "",
				ThemeTag = {
					BackgroundColor3 = "Text",
				},
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 7),
				}),
				New("ImageLabel", {
					Image = Icon,
					Size = UDim2.fromOffset(16, 16),
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Name = "Icon",
					ThemeTag = {
						ImageColor3 = "Text",
					},
				}),
			})

			local Motor, SetTransparency = Creator.SpringMotor(1, Button.Frame, "BackgroundTransparency")

			AddSignal(Button.Frame.MouseEnter, function()
				SetTransparency(0.94)
			end)
			AddSignal(Button.Frame.MouseLeave, function()
				SetTransparency(1, true)
			end)
			AddSignal(Button.Frame.MouseButton1Down, function()
				SetTransparency(0.96)
			end)
			AddSignal(Button.Frame.MouseButton1Up, function()
				SetTransparency(0.94)
			end)
			AddSignal(Button.Frame.MouseButton1Click, Button.Callback)

			Button.SetCallback = function(Func)
				Button.Callback = Func
			end

			return Button
		end

		TitleBar.Frame = New("Frame", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundTransparency = 1,
			Parent = Config.Parent,
		}, {
			New("Frame", {
				Size = UDim2.new(1, -16, 1, 0),
				Position = UDim2.new(0, 12, 0, 0),
				BackgroundTransparency = 1,
			}, {
				New("UIListLayout", {
					Padding = UDim.new(0, 5),
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),

				Config.Icon and New("ImageLabel", {
					Image = Config.Icon,
					Size = UDim2.fromOffset(20, 20),
					BackgroundTransparency = 1,
					LayoutOrder = 1,
					ThemeTag = {
						ImageColor3 = "Text",
					},
				}) or nil,

				New("TextLabel", {
					RichText = true,
					Text = Config.Title,
					FontFace = Font.new(
						"rbxasset://fonts/families/GothamSSm.json",
						Enum.FontWeight.Regular,
						Enum.FontStyle.Normal
					),
					TextSize = 12,
					TextXAlignment = "Left",
					TextYAlignment = "Center",
					Size = UDim2.fromScale(0, 1),
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundTransparency = 1,
					LayoutOrder = Config.Icon and 2 or 1,
					ThemeTag = {
						TextColor3 = "Text",
					},
				}),
				Config.SubTitle and New("TextLabel", {
					RichText = true,
					Text = Config.SubTitle,
					TextTransparency = 0.4,
					FontFace = Font.new(
						"rbxasset://fonts/families/GothamSSm.json",
						Enum.FontWeight.Regular,
						Enum.FontStyle.Normal
					),
					TextSize = 12,
					TextXAlignment = "Left",
					TextYAlignment = "Center",
					Size = UDim2.fromScale(0, 1),
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundTransparency = 1,
					LayoutOrder = Config.Icon and 3 or 2,
					ThemeTag = {
						TextColor3 = "Text",
					},
				}) or nil,

			}),
			New("Frame", {
				BackgroundTransparency = 0.5,
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				ThemeTag = {
					BackgroundColor3 = "TitleBarLine",
				},
			}),
		})
		TitleBar.CloseButton = BarButton(Components.Assets.Close, UDim2.new(1, -4, 0, 4), TitleBar.Frame, function()
			Library.Window:Dialog({
				Title = "Close",
				Content = "Are you sure you want to unload the interface?",
				Buttons = {
					{
						Title = "Yes",
						Callback = function()
							Library:Destroy()
						end,
					},
					{
						Title = "No",
					},
				},
			})
		end)
		TitleBar.MaxButton = BarButton(Components.Assets.Max, UDim2.new(1, -40, 0, 4), TitleBar.Frame, function()
			Config.Window.Maximize(not Config.Window.Maximized)
		end)
		TitleBar.MinButton = BarButton(Components.Assets.Min, UDim2.new(1, -80, 0, 4), TitleBar.Frame, function()
			Library.Window:Minimize()
		end)

		return TitleBar
	end
end)()
Components.Window = (function()
	local Spring = Flipper.Spring.new
	local Instant = Flipper.Instant.new
	local New = Creator.New

	return function(Config)
		local Window = {
			Minimized = false,
			Maximized = false,
			Size = Config.Size,
			CurrentPos = 0,
			TabWidth = 0,
			Position = UDim2.fromOffset(0, 0),
			DropdownsOutsideWindow = Config.DropdownsOutsideWindow == true,
		}

		local Dragging, DragInput, MousePos, StartPos = false
		local Resizing, ResizePos = false
		local MinimizeNotif = false

		Window.AcrylicPaint = Acrylic.AcrylicPaint()

		local function CenterWindow()
			local vp = Camera.ViewportSize
			local x = math.max(0, (vp.X - Window.Size.X.Offset) / 2)
			local y = math.max(0, (vp.Y - Window.Size.Y.Offset) / 2)
			Window.Position = UDim2.fromOffset(math.floor(x), math.floor(y))
			if Window.Root then
				Window.Root.Position = Window.Position
			end
		end
		Window.TabWidth = Config.TabWidth

		local Selector = New("Frame", {
			Size = UDim2.fromOffset(4, 0),
			BackgroundColor3 = Color3.fromRGB(76, 194, 255),
			Position = UDim2.fromOffset(0, (Window.TabHolderTop or 45) + 0),
			AnchorPoint = Vector2.new(0, 0.5),
			ThemeTag = {
				BackgroundColor3 = "Accent",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 9),
			}),
		})

		local ResizeStartFrame = New("Frame", {
			Size = UDim2.fromOffset(20, 20),
			BackgroundTransparency = 1,
			Position = UDim2.new(1, -20, 1, -2),
		})

		Window.TabHolder = New("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, -45),
			Position = UDim2.new(0, 0, 0, 45),
			BackgroundTransparency = 1,
			ScrollBarImageTransparency = 1,
			ScrollBarThickness = 0,
			BorderSizePixel = 0,
			CanvasSize = UDim2.fromScale(0, 0),
			ScrollingDirection = Enum.ScrollingDirection.Y,
		}, {
			New("UIListLayout", {
				Padding = UDim.new(0, 4),
			}),
		})


		local SearchElements = {}
		local AllElements = {}

		local function UpdateElementVisibility(searchTerm)
			searchTerm = string.lower(searchTerm or "")

			for element, data in pairs(AllElements) do
				if element and element.Parent then
					local shouldShow = searchTerm == "" or 
						string.find(string.lower(data.title), searchTerm, 1, true) or
						(data.description and string.find(string.lower(data.description), searchTerm, 1, true))
					element.Visible = shouldShow
				end
			end

			task.spawn(function()
				task.wait(0.01)
				if Window and Window.TabHolder then
					for _, child in pairs(Window.TabHolder:GetChildren()) do
						if child:IsA("ScrollingFrame") then
							local layout = child:FindFirstChild("UIListLayout")
							if layout then
								child.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 2)
							end
						end
					end
				end
			end)
		end

		local function RegisterElement(elementFrame, title, elementType, description)
			if elementFrame and title then
				AllElements[elementFrame] = {
					title = title,
					type = elementType or "Element",
					description = description or ""
				}
			end
		end


		Window.ShowSearch = (Config.Search == nil) and true or (Config.Search and true or false)

		local SearchFrame = New("Frame", {
			Size = UDim2.new(1, 0, 0, 35),
			Position = UDim2.new(0, 0, 0, 0),
			BackgroundTransparency = 0.9,
			ZIndex = 10,
			Visible = Window.ShowSearch,
			ThemeTag = {
				BackgroundColor3 = "Element",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 6),
			}),
			New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Transparency = 0.8,
				Thickness = 1,
				ThemeTag = {
					Color = "ElementBorder",
				},
			}),
		})

		local SearchTextbox = Components.Textbox(SearchFrame, true)
		SearchTextbox.Frame.Size = UDim2.new(1, -44, 1, -8)
		SearchTextbox.Frame.Position = UDim2.new(0, 10, 0, 4)
		SearchTextbox.Input.PlaceholderText = "Search..."
		SearchTextbox.Input.Text = ""

		local SearchIcon = New("ImageLabel", {
			Size = UDim2.fromOffset(18, 18),
			Position = UDim2.new(1, -18, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Image = "rbxassetid://10734943674",
			Parent = SearchFrame,
			ThemeTag = {
				ImageColor3 = "SubText",
			},
		})


		Creator.AddSignal(SearchTextbox.Input:GetPropertyChangedSignal("Text"), function()
			local searchText = SearchTextbox.Input.Text
			UpdateElementVisibility(searchText)
		end)


		Creator.AddSignal(SearchTextbox.Input.FocusLost, function(enterPressed)
		end)

		Creator.AddSignal(UserInputService.InputBegan, function(input, gameProcessed)
			if gameProcessed then return end

			if input.KeyCode == Enum.KeyCode.Escape and SearchTextbox.Input:IsFocused() then
				SearchTextbox.Input.Text = ""
				SearchTextbox.Input:ReleaseFocus()
			end
		end)


		Window.SearchElements = SearchElements
		Window.AllElements = AllElements
		Window.RegisterElement = RegisterElement
		Window.UpdateElementVisibility = UpdateElementVisibility

		local TabFrame = New("Frame", {
			Size = UDim2.new(0, Window.TabWidth, 1, Window.ShowSearch and -66 or -31),
			Position = UDim2.new(0, 12, 0, Window.ShowSearch and 54 or 19),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
		}, {
			Window.TabHolder,
			Selector,
			SearchFrame,
		})

		Window.TabDisplay = New("TextLabel", {
			RichText = true,
			Text = "Tab",
			TextTransparency = 0,
			FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
			TextSize = 28,
			TextXAlignment = "Left",
			TextYAlignment = "Center",
			Size = UDim2.new(1, -16, 0, 28),
			Position = UDim2.fromOffset(Window.TabWidth + 26, 56),
			BackgroundTransparency = 1,
			ThemeTag = {
				TextColor3 = "Text",
			},
		})

		Window.ContainerHolder = New("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		})

		Window.ContainerAnim = New("CanvasGroup", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		})

		Window.ContainerCanvas = New("Frame", {
			Size = UDim2.new(1, -Window.TabWidth - 32, 1, -102),
			Position = UDim2.fromOffset(Window.TabWidth + 26, 90),
			BackgroundTransparency = 1,
		}, {
			Window.ContainerAnim,
			Window.ContainerHolder
		})

		Window.Root = New("Frame", {
			BackgroundTransparency = 1,
			Size = Window.Size,
			Position = Window.Position,
			Parent = Config.Parent,
		}, {
			Window.AcrylicPaint.Frame,
			Window.TabDisplay,
			Window.ContainerCanvas,
			TabFrame,
			ResizeStartFrame,
		})

		CenterWindow()
		Creator.AddSignal(Camera:GetPropertyChangedSignal("ViewportSize"), function()
			CenterWindow()
		end)

		Window.TitleBar = Components.TitleBar({
			Title = Config.Title,
			SubTitle = Config.SubTitle,
			Icon = Config.Icon,
			Parent = Window.Root,
			Window = Window,
			UserInfoTitle = Config.UserInfoTitle,
			UserInfo = Config.UserInfo,
			UserInfoSubtitle = Config.UserInfoSubtitle,
			UserInfoSubtitleColor = Config.UserInfoSubtitleColor,
		})

		if Config.UserInfo then
			local function parseColor(value)
				if typeof(value) == "Color3" then return value end
				return Themes[Library.Theme].SubText or Color3.fromRGB(170,170,170)
			end

			local userInfoHeight = 56
			local UserInfoSection = New("Frame", {
				Name = "UserInfoSection",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, userInfoHeight),
				Position = Config.UserInfoTop and UDim2.fromOffset(0, 0) or UDim2.new(0, 12, 1, -(userInfoHeight + 2)),
				Parent = TabFrame,
			})

			New("Frame", {
				Name = "UserInfoSeparator",
				BackgroundTransparency = 0.5,
				Size = UDim2.new(1, 0, 0, 1),
				Position = Config.UserInfoTop and UDim2.fromOffset(0, userInfoHeight + 2) or UDim2.new(0, 12, 1, -(userInfoHeight + 10)),
				Parent = TabFrame,
				ThemeTag = {
					BackgroundColor3 = "TitleBarLine",
				},
			})

			local avatarSize = 28
			local Avatar = New("ImageLabel", {
				Name = "Avatar",
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(avatarSize, avatarSize),
				Position = UDim2.new(0, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
				Image = "rbxassetid://0",
				Parent = UserInfoSection,
			}, {
				New("UICorner", { CornerRadius = UDim.new(1, 0) }),
				New("UIStroke", { Transparency = 0.7, Thickness = 1, ThemeTag = { Color = "ElementBorder" } }),
			})

			pcall(function()
				local Players = game:GetService("Players")
				local content, isReady = Players:GetUserThumbnailAsync(Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
				if isReady and content then
					Avatar.Image = content
				end
			end)

			local titleText = tostring((Config.UserInfoTitle ~= nil and Config.UserInfoTitle) or (LocalPlayer.Name or "User"))
			local subtitleText = (Config.UserInfoSubtitle ~= nil) and tostring(Config.UserInfoSubtitle) or ""

			New("TextLabel", {
				Name = "UserName",
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Bottom,
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				TextSize = 13,
				Text = titleText,
				Size = UDim2.new(1, -avatarSize - 12, 0.5, 0),
				Position = UDim2.new(0, avatarSize + 12, 0, -2),
				Parent = UserInfoSection,
				ThemeTag = { TextColor3 = "Text" },
			})

			New("TextLabel", {
				Name = "UserSubtitle",
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
				TextSize = 12,
				TextTransparency = 0.2,
				Text = subtitleText,
				TextColor3 = parseColor(Config.UserInfoSubtitleColor),
				Size = UDim2.new(1, -avatarSize - 12, 0.5, 0),
				Position = UDim2.new(0, avatarSize + 12, 0.5, 2),
				Parent = UserInfoSection,
			})

			if Config.UserInfoTop then
				TabFrame.Position = UDim2.new(0, 12, 0, 39)
				TabFrame.Size = UDim2.new(0, Window.TabWidth, 1, -31)
				SearchFrame.Position = UDim2.new(0, 0, 0, userInfoHeight + 6)
				Window.TabHolder.Position = UDim2.new(0, 0, 0, 45 + userInfoHeight + 6)
				Window.TabHolder.Size = UDim2.new(1, 0, 1, -(45 + userInfoHeight + 24))
				Window.TabHolderTop = 45 + userInfoHeight + 6
			else
				Window.TabHolder.Size = UDim2.new(1, 0, 1, -(45 + userInfoHeight + 24))
				Window.TabHolderTop = 45
			end
		end

		if Library.UseAcrylic then
			Window.AcrylicPaint.AddParent(Window.Root)
		end

		local SizeMotor = Flipper.GroupMotor.new({
			X = Window.Size.X.Offset,
			Y = Window.Size.Y.Offset,
		})

		local PosMotor = Flipper.GroupMotor.new({
			X = Window.Position.X.Offset,
			Y = Window.Position.Y.Offset,
		})

		_G.CDDrag = 0
		Window.SelectorPosMotor = Flipper.SingleMotor.new(17)
		Window.SelectorSizeMotor = Flipper.SingleMotor.new(0)
		Window.ContainerBackMotor = Flipper.SingleMotor.new(0)
		Window.ContainerPosMotor = Flipper.SingleMotor.new(94)

		SizeMotor:onStep(function(values)
			task.wait(_G.CDDrag / 10)
			Window.Root.Size = UDim2.new(0, values.X, 0, values.Y)
		end)

		PosMotor:onStep(function(values)
			task.wait(_G.CDDrag / 10)
			Window.Root.Position = UDim2.new(0, values.X, 0, values.Y)
		end)

		local LastValue = 0
		local LastTime = 0
		Window.SelectorPosMotor:onStep(function(Value)
			local base = Window.TabHolderTop or 45
			local verticalInset = 16
			Selector.Position = UDim2.new(0, 0, 0, base + Value + verticalInset)
			local Now = tick()
			local DeltaTime = Now - LastTime

			if LastValue ~= nil then
				Window.SelectorSizeMotor:setGoal(Spring((math.abs(Value - LastValue) / (DeltaTime * 60)) + 16))
				LastValue = Value
			end
			LastTime = Now
		end)

		Window.SelectorSizeMotor:onStep(function(Value)
			Selector.Size = UDim2.new(0, 4, 0, Value)
		end)

		Window.ContainerBackMotor:onStep(function(Value)
			Window.ContainerAnim.GroupTransparency = Value
		end)

		Window.ContainerPosMotor:onStep(function(Value)
			Window.ContainerAnim.Position = UDim2.fromOffset(0, Value)
		end)

		local OldSizeX
		local OldSizeY
		Window.Maximize = function(Value, NoPos, Instant)
			Window.Maximized = Value
			Window.TitleBar.MaxButton.Frame.Icon.Image = Value and Components.Assets.Restore or Components.Assets.Max

			if Value then
				OldSizeX = Window.Size.X.Offset
				OldSizeY = Window.Size.Y.Offset
			end
			local SizeX = Value and Camera.ViewportSize.X or OldSizeX
			local SizeY = Value and Camera.ViewportSize.Y or OldSizeY
			SizeMotor:setGoal({
				X = Flipper[Instant and "Instant" or "Spring"].new(SizeX, { frequency = 6 }),
				Y = Flipper[Instant and "Instant" or "Spring"].new(SizeY, { frequency = 6 }),
			})
			Window.Size = UDim2.fromOffset(SizeX, SizeY)

			if not NoPos then
				PosMotor:setGoal({
					X = Spring(Value and 0 or Window.Position.X.Offset, { frequency = 6 }),
					Y = Spring(Value and 0 or Window.Position.Y.Offset, { frequency = 6 }),
				})
			end
		end

		Creator.AddSignal(Window.TitleBar.Frame.InputBegan, function(Input)
			if
				Input.UserInputType == Enum.UserInputType.MouseButton1
				or Input.UserInputType == Enum.UserInputType.Touch
			then
				Dragging = true
				MousePos = Input.Position
				StartPos = Window.Root.Position

				if Window.Maximized then
					StartPos = UDim2.fromOffset(
						Mouse.X - (Mouse.X * ((OldSizeX - 100) / Window.Root.AbsoluteSize.X)),
						Mouse.Y - (Mouse.Y * (OldSizeY / Window.Root.AbsoluteSize.Y))
					)
				end

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						Dragging = false
					end
				end)
			end
		end)

		Creator.AddSignal(Window.TitleBar.Frame.InputChanged, function(Input)
			if
				Input.UserInputType == Enum.UserInputType.MouseMovement
				or Input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = Input
			end
		end)

		Creator.AddSignal(ResizeStartFrame.InputBegan, function(Input)
			if
				Input.UserInputType == Enum.UserInputType.MouseButton1
				or Input.UserInputType == Enum.UserInputType.Touch
			then
				Resizing = true
				ResizePos = Input.Position
			end
		end)

		Creator.AddSignal(UserInputService.InputChanged, function(Input)
			if Input == DragInput and Dragging then
				local Delta = Input.Position - MousePos
				Window.Position = UDim2.fromOffset(StartPos.X.Offset + Delta.X, StartPos.Y.Offset + Delta.Y)
				PosMotor:setGoal({
					X = Instant(Window.Position.X.Offset),
					Y = Instant(Window.Position.Y.Offset),
				})

				if Window.Maximized then
					Window.Maximize(false, true, true)
				end
			end

			if
				(Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch)
				and Resizing
			then
				local Delta = Input.Position - ResizePos
				local StartSize = Window.Size

				local TargetSize = Vector3.new(StartSize.X.Offset, StartSize.Y.Offset, 0) + Vector3.new(1, 1, 0) * Delta
				local TargetSizeClamped =
					Vector2.new(math.clamp(TargetSize.X, 470, 2048), math.clamp(TargetSize.Y, 380, 2048))

				SizeMotor:setGoal({
					X = Flipper.Instant.new(TargetSizeClamped.X),
					Y = Flipper.Instant.new(TargetSizeClamped.Y),
				})
			end
		end)

		Creator.AddSignal(UserInputService.InputEnded, function(Input)
			if Resizing == true or Input.UserInputType == Enum.UserInputType.Touch then
				Resizing = false
				Window.Size = UDim2.fromOffset(SizeMotor:getValue().X, SizeMotor:getValue().Y)
			end
		end)

		Creator.AddSignal(Window.TabHolder.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
			Window.TabHolder.CanvasSize = UDim2.new(0, 0, 0, Window.TabHolder.UIListLayout.AbsoluteContentSize.Y)
		end)

		Creator.AddSignal(UserInputService.InputBegan, function(Input)
			if
				type(Library.MinimizeKeybind) == "table"
				and Library.MinimizeKeybind.Type == "Keybind"
				and not UserInputService:GetFocusedTextBox()
			then
				if Input.KeyCode.Name == Library.MinimizeKeybind.Value then
					Window:Minimize()
				end
			elseif Input.KeyCode == Library.MinimizeKey and not UserInputService:GetFocusedTextBox() then
				Window:Minimize()
			end
		end)

		function Window:Minimize()
			Window.Minimized = not Window.Minimized
			Window.Root.Visible = not Window.Minimized

			for _, Option in next, Library.Options do
				if Option and Option.Type == "Dropdown" and Option.Opened then
					pcall(function()
						Option:Close()
					end)
				end
			end
			if not MinimizeNotif then
				MinimizeNotif = true
				local Key = Library.MinimizeKeybind and Library.MinimizeKeybind.Value or Library.MinimizeKey.Name
				if not Mobile then Library:Notify({
					Title = "Interface",
					Content = "Press " .. Key .. " to toggle the interface.",
					Duration = 6
					})
				else 
					Library:Notify({
						Title = "Interface",
						Content = "Tap to the button to toggle the interface.",
						Duration = 6
					})
				end
			end

			function Window:ToggleSearch()
				Window.ShowSearch = not Window.ShowSearch
				SearchFrame.Visible = Window.ShowSearch
				TabFrame.Size = UDim2.new(0, Window.TabWidth, 1, Window.ShowSearch and -66 or -31)
				TabFrame.Position = UDim2.new(0, 12, 0, Window.ShowSearch and 54 or 19)
			end

			if not RunService:IsStudio() and Library.Minimizer then
				pcall(function()
					if Mobile then
						local mobileButton = Library.Minimizer:FindFirstChild("TextButton")
						if mobileButton then
							local imageLabel = mobileButton:FindFirstChild("ImageLabel")
							if imageLabel then
								imageLabel.Image = Window.Minimized and "rbxassetid://10734896384" or "rbxassetid://10734897102"
							end
						end
					else
						local desktopButton = Library.Minimizer:FindFirstChild("TextButton")
						if desktopButton then
							local imageLabel = desktopButton:FindFirstChild("ImageLabel")
							if imageLabel then
								imageLabel.Image = Window.Minimized and "rbxassetid://10734896384" or "rbxassetid://10734897102"
							end
						end
					end
				end)
			end
		end

		function Window:Destroy()
			if Library.UseAcrylic then
				Window.AcrylicPaint.Model:Destroy()
			end
			Window.Root:Destroy()
		end

		local DialogModule = Components.Dialog:Init(Window)
		function Window:Dialog(Config)
			local Dialog = DialogModule:Create()
			Dialog.Title.Text = Config.Title

			local ContentHolder = New("ScrollingFrame", {
				BackgroundTransparency = 1,
				ScrollBarImageTransparency = 0.7,
				ScrollBarThickness = 4,
				BottomImage = "rbxassetid://6889812791",
				MidImage = "rbxassetid://6889812721",
				TopImage = "rbxassetid://6276641225",
				Position = UDim2.fromOffset(20, 60),
				Size = UDim2.new(1, -40, 1, -110),
				CanvasSize = UDim2.fromOffset(0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				Parent = Dialog.Root,
			})

			local Content = New("TextLabel", {
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Text = Config.Content,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextWrapped = true,
				Size = UDim2.new(1, -8, 0, 0),
				BackgroundTransparency = 1,
				Parent = ContentHolder,
				ThemeTag = { TextColor3 = "Text" },
			})

			New("UISizeConstraint", {
				MinSize = Vector2.new(300, 165),
				MaxSize = Vector2.new(620, math.huge),
				Parent = Dialog.Root,
			})

			local maxWidth = math.min(620, Window.Size.X.Offset - 120)
			local baseWidth = math.max(300, math.min(maxWidth, Content.TextBounds.X + 40))
			Dialog.Root.Size = UDim2.fromOffset(baseWidth, 165)
			ContentHolder.Size = UDim2.new(1, -40, 1, -110)
			task.defer(function()
				local contentHeight = Content.TextBounds.Y
				local desired = math.clamp(contentHeight + 110, 165, 420)
				Dialog.Root.Size = UDim2.fromOffset(baseWidth, desired)
				ContentHolder.CanvasSize = UDim2.fromOffset(0, contentHeight)
			end)

			for _, Button in next, Config.Buttons do
				Dialog:Button(Button.Title, Button.Callback)
			end

			Dialog:Open()
		end

		local TabModule = Components.Tab:Init(Window)
		function Window:AddTab(TabConfig)
			return TabModule:New(TabConfig.Title, TabConfig.Icon, Window.TabHolder)
		end

		function Window:SelectTab(Tab)
			TabModule:SelectTab(Tab)
		end

		Creator.AddSignal(Window.TabHolder:GetPropertyChangedSignal("CanvasPosition"), function()
			LastValue = TabModule:GetCurrentTabPos() + 16
			LastTime = 0
			Window.SelectorPosMotor:setGoal(Instant(TabModule:GetCurrentTabPos()))
		end)

		return Window
	end
end)()
local ElementsTable = {}
local AddSignal = Creator.AddSignal

ElementsTable.Button = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Button"

	function Element:New(Config)
		assert(Config.Title, "Button - Missing Title")
		Config.Callback = Config.Callback or function() end

		local ButtonFrame = Components.Element(Config.Title, Config.Description, self.Container, true, Config)

		local ButtonIco = New("ImageLabel", {
			Image = "rbxassetid://10709791437",
			Size = UDim2.fromOffset(16, 16),
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.new(1, -10, 0.5, 0),
			BackgroundTransparency = 1,
			Parent = ButtonFrame.Frame,
			ThemeTag = {
				ImageColor3 = "Text",
			},
		})

		Creator.AddSignal(ButtonFrame.Frame.MouseButton1Click, function()
			Library:SafeCallback(Config.Callback)
		end)

		return ButtonFrame
	end

	return Element
end)()
ElementsTable.Toggle = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Toggle"

	function Element:New(Idx, Config)
		assert(Config.Title, "Toggle - Missing Title")

		local Toggle = {
			Value = Config.Default or false,
			Callback = Config.Callback or function(Value) end,
			Type = "Toggle",
		}

		local ToggleFrame = Components.Element(Config.Title, Config.Description, self.Container, true, Config)
		ToggleFrame.DescLabel.Size = UDim2.new(1, -54, 0, 14)

		Toggle.SetTitle = ToggleFrame.SetTitle
		Toggle.SetDesc = ToggleFrame.SetDesc
		Toggle.Visible = ToggleFrame.Visible
		Toggle.Elements = ToggleFrame

		local ToggleCircle = New("ImageLabel", {
			AnchorPoint = Vector2.new(0, 0.5),
			Size = UDim2.fromOffset(14, 14),
			Position = UDim2.new(0, 2, 0.5, 0),
			Image = "http://www.roblox.com/asset/?id=12266946128",
			ImageTransparency = 0.5,
			ThemeTag = {
				ImageColor3 = "ToggleSlider",
			},
		})

		local ToggleBorder = New("UIStroke", {
			Transparency = 0.5,
			ThemeTag = {
				Color = "ToggleSlider",
			},
		})

		local ToggleSlider = New("Frame", {
			Size = UDim2.fromOffset(36, 18),
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.new(1, -10, 0.5, 0),
			Parent = ToggleFrame.Frame,
			BackgroundTransparency = 1,
			ThemeTag = {
				BackgroundColor3 = "Accent",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 9),
			}),
			ToggleBorder,
			ToggleCircle,
		})

		function Toggle:OnChanged(Func)
			Toggle.Changed = Func
			Func(Toggle.Value)
		end

		function Toggle:SetValue(Value)
			Value = not not Value
			Toggle.Value = Value

			Creator.OverrideTag(ToggleBorder, { Color = Toggle.Value and "Accent" or "ToggleSlider" })
			Creator.OverrideTag(ToggleCircle, { ImageColor3 = Toggle.Value and "ToggleToggled" or "ToggleSlider" })
			TweenService:Create(
				ToggleCircle,
				TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
				{ Position = UDim2.new(0, Toggle.Value and 19 or 2, 0.5, 0) }
			):Play()
			TweenService:Create(
				ToggleSlider,
				TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
				{ BackgroundTransparency = Toggle.Value and 0.45 or 1 }
			):Play()
			ToggleCircle.ImageTransparency = Toggle.Value and 0 or 0.5

			Library:SafeCallback(Toggle.Callback, Toggle.Value)
			Library:SafeCallback(Toggle.Changed, Toggle.Value)
		end

		function Toggle:Destroy()
			ToggleFrame:Destroy()
			Library.Options[Idx] = nil
		end

		Creator.AddSignal(ToggleFrame.Frame.MouseButton1Click, function()
			Toggle:SetValue(not Toggle.Value)
		end)

		Toggle:SetValue(Toggle.Value)

		Library.Options[Idx] = Toggle
		return Toggle
	end

	return Element
end)()
ElementsTable.Dropdown = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Dropdown"
	local New = Creator.New

	function Element:New(Idx, Config)

		local windowDropdownsOutside = false
		if Library.Window and Library.Window.DropdownsOutsideWindow ~= nil then
			windowDropdownsOutside = Library.Window.DropdownsOutsideWindow
		elseif Library.Windows and #Library.Windows > 0 then
			for i = #Library.Windows, 1, -1 do
				local window = Library.Windows[i]
				if window and window.DropdownsOutsideWindow ~= nil then
					windowDropdownsOutside = window.DropdownsOutsideWindow
					break
				end
			end
		end
		
		local Dropdown = {
			Values = Config.Values,
			Value = Config.Default,
			Multi = Config.Multi,
			Buttons = {},
			Opened = false,
			Type = "Dropdown",
			Callback = Config.Callback or function() end,
			Search = (Config.Search == nil) and true or Config.Search,
			KeepSearch = Config.KeepSearch == true,
			OpenToRight = windowDropdownsOutside
		}

		if Dropdown.Multi and Config.AllowNull then
			Dropdown.Value = {}
		end

		local DropdownFrame = Components.Element(Config.Title, Config.Description, self.Container, false, Config)
		DropdownFrame.DescLabel.Size = UDim2.new(1, -170, 0, 14)

		Dropdown.SetTitle = DropdownFrame.SetTitle
		Dropdown.SetDesc = DropdownFrame.SetDesc
		Dropdown.Visible = DropdownFrame.Visible
		Dropdown.Elements = DropdownFrame
		
		local container = self.Container

		local DropdownDisplay = New("TextLabel", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
			Text = "",
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 14,
			AutomaticSize = Enum.AutomaticSize.Y,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.new(1, -40, 0.5, 0),
			Position = UDim2.new(0, 8, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundTransparency = 1,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ThemeTag = {
				TextColor3 = "Text",
			},
		})

		local DropdownIco = New("ImageLabel", {
			Image = "rbxassetid://10709790948",
			Size = UDim2.fromOffset(16, 16),
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.new(1, -8, 0.5, 0),
			BackgroundTransparency = 1,
			Rotation = 180,
			ThemeTag = {
				ImageColor3 = "SubText",
			},
		})

		local DropdownInner = New("TextButton", {
			Size = UDim2.fromOffset(160, 30),
			Position = UDim2.new(1, -10, 0.5, 0),
			AnchorPoint = Vector2.new(1, 0.5),
			BackgroundTransparency = 0.9,
			Parent = DropdownFrame.Frame,
			ThemeTag = {
				BackgroundColor3 = "DropdownFrame",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 5),
			}),
			New("UIStroke", {
				Transparency = 0.5,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				ThemeTag = {
					Color = "InElementBorder",
				},
			}),
			DropdownIco,
			DropdownDisplay,
		})

		local DropdownListLayout = New("UIListLayout", {
			Padding = UDim.new(0, 3),
		})

		local DropdownScrollFrame = New("ScrollingFrame", {
			Size = UDim2.new(1, -5, 1, -10),
			Position = UDim2.fromOffset(5, 5),
			BackgroundTransparency = 1,
			BottomImage = "rbxassetid://6889812791",
			MidImage = "rbxassetid://6889812721",
			TopImage = "rbxassetid://6276641225",
			ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
			ScrollBarImageTransparency = 0.75,
			ScrollBarThickness = 5,
			BorderSizePixel = 0,
			CanvasSize = UDim2.fromScale(0, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			ScrollingDirection = Enum.ScrollingDirection.Y,
		}, {
			DropdownListLayout,
		})

		local SearchBar
		local SearchBox
		if Dropdown.Search then
			SearchBar = New("Frame", {
				Size = UDim2.new(1, -10, 0, 28),
				Position = UDim2.fromOffset(5, 5),
				BackgroundTransparency = 0.7,
				BackgroundColor3 = Color3.fromRGB(20, 20, 20),
				ThemeTag = { BackgroundColor3 = "Element" },
				ZIndex = 24,
			}, {
				New("UICorner", { CornerRadius = UDim.new(0, 4) }),
			})

			SearchBox = New("TextBox", {
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
				TextColor3 = Color3.fromRGB(200, 200, 200),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -36, 1, 0),
				Position = UDim2.new(0, 8, 0, 0),
				PlaceholderText = "Search...",
				PlaceholderColor3 = Color3.fromRGB(120, 120, 120),
				ClearTextOnFocus = false,
				Text = "",
				Parent = SearchBar,
				ThemeTag = {
					TextColor3 = "Text",
					PlaceholderColor3 = "SubText",
				},
				ZIndex = 24,
			})

			local SearchIcon = New("ImageLabel", {
				Size = UDim2.fromOffset(16, 16),
				Position = UDim2.new(1, -13, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Image = "rbxassetid://10734943674",
				Parent = SearchBar,
				ImageTransparency = 0.3,
				ZIndex = 25,
				ThemeTag = {
					ImageColor3 = "SubText",
				},
			})

			DropdownScrollFrame.Position = UDim2.fromOffset(5, 38)
			DropdownScrollFrame.Size = UDim2.new(1, -5, 1, -43)

			local filterToken = 0
			local function ApplyFilter()
				filterToken = filterToken + 1
				local myToken = filterToken
				task.spawn(function()
					task.wait(0.01)
					if myToken ~= filterToken then return end
					local text = (SearchBox.Text or ""):lower()
					for _, element in next, DropdownScrollFrame:GetChildren() do
						if not element:IsA("UIListLayout") then
							local value = element:FindFirstChild("ButtonLabel") and element.ButtonLabel.Text or ""
							element.Visible = text == "" or value:lower():find(text, 1, true) ~= nil
						end
					end
					task.wait()
					RecalculateCanvasSize()
					task.wait()
					RecalculateListSize()
					task.wait()
					RecalculateListPosition()
				end)
			end

			Creator.AddSignal(SearchBox:GetPropertyChangedSignal("Text"), ApplyFilter)
		end

		local brTransparency1
		if Config.DropdownsOutsideWindow then
			brTransparency1 = 0.25
		else
			brTransparency1 = 0
		end
		local DropdownHolderFrame = New("Frame", {
			Size = UDim2.fromScale(1, 0.6),
			BackgroundTransparency = brTransparency1,
			ThemeTag = {
				BackgroundColor3 = "DropdownHolder",
			},
		}, {
			SearchBar,
			DropdownScrollFrame,
			New("UICorner", {
				CornerRadius = UDim.new(0, 7),
			}),
			New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				ThemeTag = {
					Color = "DropdownBorder",
				},
			}),
			New("ImageLabel", {
				BackgroundTransparency = 1,
				Image = "http://www.roblox.com/asset/?id=5554236805",
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(23, 23, 277, 277),
				Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30),
				Position = UDim2.fromOffset(-15, -15),
				ImageColor3 = Color3.fromRGB(0, 0, 0),
				ImageTransparency = 0.1,
			}),
		})

		local DropdownHolderCanvas = New("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(170, 300),
			Parent = Library.GUI,
			Visible = false,
		}, {
			DropdownHolderFrame,
			New("UISizeConstraint", {
				MinSize = Vector2.new(170, 0),
			}),
		})
		table.insert(Library.OpenFrames, DropdownHolderCanvas)

		local windowRoot = nil
		if Library.Window and Library.Window.Root then
			windowRoot = Library.Window.Root
		elseif Library.Windows and #Library.Windows > 0 then
			for i = #Library.Windows, 1, -1 do
				local window = Library.Windows[i]
				if window and window.Root then
					windowRoot = window.Root
					break
				end
			end
		end
		
		if not windowRoot and container then
			local parent = container.Parent
			while parent do
				if parent:IsA("Frame") then
					if parent:FindFirstChild("ContainerCanvas") or (parent.Name and parent:FindFirstChild("TitleBar")) then
						windowRoot = parent
						break
					end
				end
				if parent:IsA("ScreenGui") then
					break
				end
				parent = parent.Parent
			end
		end

		local function RecalculateListPosition()
			if not DropdownHolderCanvas or not DropdownInner then return end
			
			local dropdownX = DropdownInner.AbsolutePosition.X
			local dropdownY = DropdownInner.AbsolutePosition.Y
			local dropdownWidth = DropdownInner.AbsoluteSize.X
			local dropdownHeight = DropdownInner.AbsoluteSize.Y
			local canvasWidth = DropdownHolderCanvas.AbsoluteSize.X
			local canvasHeight = DropdownHolderCanvas.AbsoluteSize.Y
			local viewportHeight = Camera.ViewportSize.Y
			local viewportWidth = Camera.ViewportSize.X
			
			if not windowRoot then
				if Library.Window and Library.Window.Root then
					windowRoot = Library.Window.Root
				elseif Library.Windows and #Library.Windows > 0 then
					for i = #Library.Windows, 1, -1 do
						local window = Library.Windows[i]
						if window and window.Root then
							windowRoot = window.Root
							break
						end
					end
				end
				
				if not windowRoot and container then
					local parent = container.Parent
					while parent do
						if parent:IsA("Frame") then
							if parent:FindFirstChild("ContainerCanvas") or (parent.Name and parent:FindFirstChild("TitleBar")) then
								windowRoot = parent
								break
							end
						end
						if parent:IsA("ScreenGui") then
							break
						end
						parent = parent.Parent
					end
				end
			end
			
			local targetX = dropdownX - 1
			local useFixedY = false
			
			if windowRoot then
				local windowX = windowRoot.AbsolutePosition.X
				local windowWidth = windowRoot.AbsoluteSize.X
				local windowRight = windowX + windowWidth
				
				if Dropdown.OpenToRight then
					targetX = windowRight + 5
					if Dropdown.SavedY == nil then
						Dropdown.SavedY = dropdownY
					end
					useFixedY = true
				else
					local canvasRight = dropdownX + canvasWidth - 1
					if canvasRight > windowRight then
						targetX = math.max(windowX + 5, windowRight - canvasWidth - 5)
					end
					Dropdown.SavedY = nil
				end
			else
				local canvasRight = dropdownX + canvasWidth - 1
				if canvasRight > viewportWidth then
					if Dropdown.OpenToRight then
						targetX = viewportWidth + 5
						if Dropdown.SavedY == nil then
							Dropdown.SavedY = dropdownY
						end
						useFixedY = true
					else
						targetX = math.max(5, viewportWidth - canvasWidth - 5)
					end
					Dropdown.SavedY = nil
				end
			end
			
			local targetY
			if useFixedY and windowRoot then
				local windowY = windowRoot.AbsolutePosition.Y
				local windowHeight = windowRoot.AbsoluteSize.Y
				local windowCenterY = windowY + windowHeight / 2
				targetY = windowCenterY - canvasHeight / 2
				
				local windowTop = windowY
				local windowBottom = windowY + windowHeight
				local viewportTop = 0
				local viewportBottom = viewportHeight
				
				if targetY + canvasHeight > viewportBottom then
					targetY = viewportBottom - canvasHeight - 5
				end
				if targetY < viewportTop then
					targetY = viewportTop + 5
				end
				
				if targetY + canvasHeight > windowBottom then
					targetY = windowBottom - canvasHeight - 5
				end
				if targetY < windowTop then
					targetY = windowTop + 5
				end
			elseif useFixedY and Dropdown.SavedY then
				targetY = Dropdown.SavedY
				
				local spaceBelow = viewportHeight - (Dropdown.SavedY + dropdownHeight)
				local spaceAbove = Dropdown.SavedY
				
				if canvasHeight > spaceBelow and canvasHeight <= spaceAbove then
					targetY = Dropdown.SavedY - canvasHeight - 5
				elseif canvasHeight > spaceBelow and canvasHeight > spaceAbove then
					if spaceBelow > spaceAbove then
						targetY = Dropdown.SavedY + dropdownHeight + 5
					else
						targetY = math.max(5, Dropdown.SavedY - canvasHeight - 5)
					end
				else
					targetY = Dropdown.SavedY + dropdownHeight + 5
				end
			else
				local spaceBelow = viewportHeight - (dropdownY + dropdownHeight)
				local spaceAbove = dropdownY
				
				if canvasHeight <= spaceBelow then
					targetY = dropdownY + dropdownHeight + 5
				elseif canvasHeight <= spaceAbove then
					targetY = dropdownY - canvasHeight - 5
				else
					if spaceBelow > spaceAbove then
						targetY = dropdownY + dropdownHeight + 5
					else
						targetY = math.max(5, dropdownY - canvasHeight - 5)
					end
				end
			end
			
			DropdownHolderCanvas.Position = UDim2.fromOffset(targetX, targetY)
		end

		local ListSizeX = 0
		local function RecalculateListSize()
			if not DropdownHolderCanvas or not DropdownHolderFrame then return end
			
			local visibleCount = 0
			for _, element in next, DropdownScrollFrame:GetChildren() do
				if not element:IsA("UIListLayout") and element.Visible then
					visibleCount = visibleCount + 1
				end
			end
			
			local itemHeight = 32
			local padding = 3
			local searchHeight = Dropdown.Search and 38 or 0
			local innerMargins = 10
			local estimatedContent = (visibleCount > 0) and (visibleCount * itemHeight + (visibleCount - 1) * padding + innerMargins + searchHeight) or (innerMargins + searchHeight)
			local maxHeight = 392
			local targetHeight = math.min(estimatedContent, maxHeight)
			
			local canvasWidth = math.max(170, ListSizeX > 0 and (ListSizeX + 20) or 170)
			DropdownHolderCanvas.Size = UDim2.fromOffset(canvasWidth, targetHeight)
			
			local many = visibleCount > 10
			DropdownHolderFrame.Size = UDim2.fromScale(1, many and (targetHeight / math.max(targetHeight, 1)) or 1)
		end

		local function RecalculateCanvasSize()
			DropdownScrollFrame.CanvasSize = UDim2.fromOffset(0, DropdownListLayout.AbsoluteContentSize.Y)
		end

		RecalculateListPosition()
		RecalculateListSize()
		RecalculateCanvasSize()

		if Dropdown.OpenToRight then
			if windowRoot then
				Creator.AddSignal(windowRoot:GetPropertyChangedSignal("AbsolutePosition"), function()
					if Dropdown.Opened then
						Dropdown.SavedY = nil
						RecalculateListPosition()
					end
				end)
				Creator.AddSignal(windowRoot:GetPropertyChangedSignal("AbsoluteSize"), function()
					if Dropdown.Opened then
						RecalculateListPosition()
					end
				end)
			end
		else
			Creator.AddSignal(DropdownInner:GetPropertyChangedSignal("AbsolutePosition"), RecalculateListPosition)
			if windowRoot then
				Creator.AddSignal(windowRoot:GetPropertyChangedSignal("AbsolutePosition"), function()
					if Dropdown.Opened then
						RecalculateListPosition()
					end
				end)
				Creator.AddSignal(windowRoot:GetPropertyChangedSignal("AbsoluteSize"), function()
					if Dropdown.Opened then
						RecalculateListPosition()
					end
				end)
			end
		end
		Creator.AddSignal(DropdownListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
			RecalculateCanvasSize()
			task.wait()
			RecalculateListSize()
			task.wait()
			RecalculateListPosition()
		end)

		Creator.AddSignal(DropdownInner.MouseButton1Click, function()
			if Dropdown.Opened then
				Dropdown:Close()
				return
			end
			Dropdown:Open()
		end)

		Creator.AddSignal(DropdownInner.InputBegan, function(Input)
			if Input.UserInputType == Enum.UserInputType.Touch then
				if Dropdown.Opened then
					Dropdown:Close()
					return
				end
				Dropdown:Open()
			end
		end)

		Creator.AddSignal(DropdownDisplay:GetPropertyChangedSignal("Text"), function()
			for _, Element in next, DropdownScrollFrame:GetChildren() do
				if not Element:IsA("UIListLayout") then
					Element.Visible = true
				end
			end
			RecalculateListPosition()
			RecalculateListSize()
		end)

		Creator.AddSignal(UserInputService.InputBegan, function(Input)
			if
				Input.UserInputType == Enum.UserInputType.MouseButton1
				or Input.UserInputType == Enum.UserInputType.Touch
			then
				local AbsPos, AbsSize = DropdownHolderFrame.AbsolutePosition, DropdownHolderFrame.AbsoluteSize
				if
					Mouse.X < AbsPos.X
					or Mouse.X > AbsPos.X + AbsSize.X
					or Mouse.Y < (AbsPos.Y - 20 - 1)
					or Mouse.Y > AbsPos.Y + AbsSize.Y
				then
					Dropdown:Close()
				end
			end
		end)

		local ScrollFrame = self.ScrollFrame
		function Dropdown:Open()
			Dropdown.Opened = true
			if Dropdown.OpenToRight then
				Dropdown.SavedY = nil
			end
			for _, frame in ipairs(Library.OpenFrames) do
				if frame ~= DropdownHolderCanvas and frame.Visible then
					frame.Visible = false
				end
			end
			if SearchBox and not Dropdown.KeepSearch then
				SearchBox.Text = ""
			end
			DropdownHolderCanvas.Visible = true
			RecalculateListPosition()
			RecalculateListSize()
			RecalculateCanvasSize()
			task.wait()
			TweenService:Create(
				DropdownHolderFrame,
				TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
				{ Size = UDim2.fromScale(1, 1) }
			):Play()
			TweenService:Create(
				DropdownIco,
				TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
				{ Rotation = 0 }
			):Play()
		end

		function Dropdown:Close()
			Dropdown.Opened = false
			if Dropdown.OpenToRight then
				Dropdown.SavedY = nil
			end
			DropdownHolderFrame.Size = UDim2.fromScale(1, 1)
			DropdownHolderCanvas.Visible = false
			TweenService:Create(
				DropdownIco,
				TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
				{ Rotation = 180 }
			):Play()
			Dropdown:Display()
			for _, element in next, DropdownScrollFrame:GetChildren() do
				if not element:IsA("UIListLayout") then
					element.Visible = true
				end
			end
		end

		function Dropdown:Display()
			local Values = Dropdown.Values
			local Str = ""

			if Config.Multi then
				for Idx, Value in next, Values do
					if Dropdown.Value[Value] then
						Str = Str .. Value .. ", "
					end
				end
				Str = Str:sub(1, #Str - 2)
			else
				Str = Dropdown.Value or ""
			end

			DropdownDisplay.Text = (Str == "" and "--" or Str)
		end

		function Dropdown:GetActiveValues()
			if Config.Multi then
				local T = {}

				for Value, Bool in next, Dropdown.Value do
					table.insert(T, Value)
				end

				return T
			else
				return Dropdown.Value and 1 or 0
			end
		end

		function Dropdown:SetActiveValues(Value)
			Dropdown.Value = Value

			Library:SafeCallback(Dropdown.Callback, Dropdown.Value)
			Library:SafeCallback(Dropdown.Changed, Dropdown.Value)

			Dropdown:BuildDropdownList()
		end

		function Dropdown:BuildDropdownList()
			local Values = Dropdown.Values
			local Buttons = {}

			for _, Element in next, DropdownScrollFrame:GetChildren() do
				if not Element:IsA("UIListLayout") then
					Element:Destroy()
				end
			end

			local Count = 0

			for Idx, Value in next, Values do
				local Table = {}

				Count = Count + 1

				local ButtonSelector = New("Frame", {
					Size = UDim2.fromOffset(4, 14),
					BackgroundColor3 = Color3.fromRGB(76, 194, 255),
					Position = UDim2.fromOffset(-1, 16),
					AnchorPoint = Vector2.new(0, 0.5),
					ThemeTag = {
						BackgroundColor3 = "Accent",
					},
				}, {
					New("UICorner", {
						CornerRadius = UDim.new(0, 2),
					}),
				})

				local ButtonLabel = New("TextLabel", {
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
					Text = Value,
					TextColor3 = Color3.fromRGB(200, 200, 200),
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
					Position = UDim2.fromOffset(10, 0),
					Name = "ButtonLabel",
					ThemeTag = {
						TextColor3 = "Text",
					},
				})

				local Button = New("TextButton", {
					Size = UDim2.new(1, -5, 0, 32),
					BackgroundTransparency = 1,
					ZIndex = 23,
					Text = "",
					Parent = DropdownScrollFrame,
					ThemeTag = {
						BackgroundColor3 = "DropdownOption",
					},
				}, {
					ButtonSelector,
					ButtonLabel,
					New("UICorner", {
						CornerRadius = UDim.new(0, 6),
					}),
				})

				local Selected

				if Config.Multi then
					Selected = Dropdown.Value[Value]
				else
					Selected = Dropdown.Value == Value
				end

				local BackMotor, SetBackTransparency = Creator.SpringMotor(1, Button, "BackgroundTransparency")
				local SelMotor, SetSelTransparency = Creator.SpringMotor(1, ButtonSelector, "BackgroundTransparency")
				local SelectorSizeMotor = Flipper.SingleMotor.new(6)

				SelectorSizeMotor:onStep(function(value)
					ButtonSelector.Size = UDim2.new(0, 4, 0, value)
				end)

				Creator.AddSignal(Button.MouseEnter, function()
					SetBackTransparency(Selected and 0.85 or 0.89)
				end)
				Creator.AddSignal(Button.MouseLeave, function()
					SetBackTransparency(Selected and 0.89 or 1)
				end)
				Creator.AddSignal(Button.MouseButton1Down, function()
					SetBackTransparency(0.92)
				end)
				Creator.AddSignal(Button.MouseButton1Up, function()
					SetBackTransparency(Selected and 0.85 or 0.89)
				end)

				function Table:UpdateButton()
					if Config.Multi then
						Selected = Dropdown.Value[Value]
						if Selected then
							SetBackTransparency(0.89)
						end
					else
						Selected = Dropdown.Value == Value
						SetBackTransparency(Selected and 0.89 or 1)
					end

					SelectorSizeMotor:setGoal(Flipper.Spring.new(Selected and 14 or 6, { frequency = 6 }))
					SetSelTransparency(Selected and 0 or 1)
				end
				AddSignal(Button.Activated, function()
					local Try = not Selected

					if Dropdown:GetActiveValues() == 1 and not Try and not Config.AllowNull then
					else
						if Config.Multi then
							Selected = Try
							Dropdown.Value[Value] = Selected and true or nil
						else
							Selected = Try
							Dropdown.Value = Selected and Value or nil

							for _, OtherButton in next, Buttons do
								OtherButton:UpdateButton()
							end
						end

						Table:UpdateButton()

						Dropdown:Display()

						Library:SafeCallback(Dropdown.Callback, Dropdown.Value)
						Library:SafeCallback(Dropdown.Changed, Dropdown.Value)
					end
				end)

				Table:UpdateButton()
				Dropdown:Display()

				Buttons[Button] = Table
			end

			ListSizeX = 0
			for Button, Table in next, Buttons do
				if Button.ButtonLabel then
					local textSize = Button.ButtonLabel.TextBounds.X
					if textSize > ListSizeX then
						ListSizeX = textSize
					end
				end
			end
			ListSizeX = math.max(150, ListSizeX + 40)

			RecalculateCanvasSize()
			RecalculateListSize()
		end

		function Dropdown:SetValues(NewValues)
			if NewValues then
				Dropdown.Values = NewValues
			end

			Dropdown:BuildDropdownList()
		end

		function Dropdown:OnChanged(Func)
			Dropdown.Changed = Func
			Func(Dropdown.Value)
		end

		function Dropdown:SetValue(Val)
			if Dropdown.Multi then
				local nTable = {}

				for Value, Bool in next, Val do
					if table.find(Dropdown.Values, Value) then
						nTable[Value] = true
					end
				end

				Dropdown.Value = nTable
			else
				if not Val then
					Dropdown.Value = nil
				elseif table.find(Dropdown.Values, Val) then
					Dropdown.Value = Val
				end
			end

			Dropdown:BuildDropdownList()

			Library:SafeCallback(Dropdown.Callback, Dropdown.Value)
			Library:SafeCallback(Dropdown.Changed, Dropdown.Value)
		end

		function Dropdown:Destroy()
			DropdownFrame:Destroy()
			Library.Options[Idx] = nil
		end

		Dropdown:BuildDropdownList()
		Dropdown:Display()

		local Defaults = {}

		if type(Config.Default) == "string" then
			local Idx = table.find(Dropdown.Values, Config.Default)
			if Idx then
				table.insert(Defaults, Idx)
			end
		elseif type(Config.Default) == "table" then
			for _, Value in next, Config.Default do
				local Idx = table.find(Dropdown.Values, Value)
				if Idx then
					table.insert(Defaults, Idx)
				end
			end
		elseif type(Config.Default) == "number" and Dropdown.Values[Config.Default] ~= nil then
			table.insert(Defaults, Config.Default)
		end

		if next(Defaults) then
			for i = 1, #Defaults do
				local Index = Defaults[i]
				if Config.Multi then
					Dropdown.Value[Dropdown.Values[Index]] = true
				else
					Dropdown.Value = Dropdown.Values[Index]
				end

				if not Config.Multi then
					break
				end
			end

			Dropdown:BuildDropdownList()
			Dropdown:Display()
		end

		Library.Options[Idx] = Dropdown
		return Dropdown
	end

	return Element
end)()
ElementsTable.Paragraph = (function()
	local Paragraph = {}
	Paragraph.__index = Paragraph
	Paragraph.__type = "Paragraph"

	function Paragraph:New(Config)
		Config.Content = Config.Content or ""

		local Paragraph = Components.Element(Config.Title, Config.Content, Paragraph.Container, false, Config)
		Paragraph.Frame.BackgroundTransparency = 0.92
		Paragraph.Border.Transparency = 0.6

		Paragraph.SetTitle = Paragraph.SetTitle
		Paragraph.SetDesc = Paragraph.SetDesc
		Paragraph.Visible = Paragraph.Visible
		Paragraph.Elements = Paragraph

		return Paragraph
	end

	return Paragraph
end)()
ElementsTable.Slider = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Slider"

	function Element:New(Idx, Config)
		assert(Config.Title, "Slider - Missing Title.")
		assert(Config.Default, "Slider - Missing default value.")
		assert(Config.Min, "Slider - Missing minimum value.")
		assert(Config.Max, "Slider - Missing maximum value.")
		assert(Config.Rounding, "Slider - Missing rounding value.")

		local Slider = {
			Value = nil,
			Min = Config.Min,
			Max = Config.Max,
			Rounding = Config.Rounding,
			Callback = Config.Callback or function(Value) end,
			Type = "Slider",
		}

		local Dragging = false

		local SliderFrame = Components.Element(Config.Title, Config.Description, self.Container, false, Config)
		SliderFrame.DescLabel.Size = UDim2.new(1, -170, 0, 14)

		Slider.Elements = SliderFrame
		Slider.SetTitle = SliderFrame.SetTitle
		Slider.SetDesc = SliderFrame.SetDesc
		Slider.Visible = SliderFrame.Visible

		local SliderDot = New("ImageLabel", {
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, -7, 0.5, 0),
			Size = UDim2.fromOffset(14, 14),
			Image = "http://www.roblox.com/asset/?id=12266946128",
			ThemeTag = {
				ImageColor3 = "Accent",
			},
		})

		local SliderRail = New("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(7, 0),
			Size = UDim2.new(1, -14, 1, 0),
		}, {
			SliderDot,
		})

		local SliderFill = New("Frame", {
			Size = UDim2.new(0, 0, 1, 0),
			ThemeTag = {
				BackgroundColor3 = "Accent",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		})

		local SliderDisplay = New("TextLabel", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
			Text = "Value",
			TextSize = 12,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Right,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 100, 0, 14),
			Position = UDim2.new(0, -4, 0.5, 0),
			AnchorPoint = Vector2.new(1, 0.5),
			ThemeTag = {
				TextColor3 = "SubText",
			},
		})

		local SliderInput = New("TextBox", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
			Text = "",
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Right,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 0.8,
			Size = UDim2.new(0, 0, 0, 14),
			Position = UDim2.new(0, -4, 0.5, 0),
			AnchorPoint = Vector2.new(1, 0.5),
			PlaceholderText = "Value",
			ClearTextOnFocus = false,
			Visible = true,
			TextWrapped = false,
			TextTransparency = 1,
			BackgroundTransparency = 1,
			ThemeTag = {
				TextColor3 = "SubText",
				BackgroundColor3 = "Element",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 3),
			}),
			New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = Color3.fromRGB(0, 0, 0),
				Transparency = 1,
				Thickness = 1,
			}),
		})

		local SliderInner = New("Frame", {
			Size = UDim2.new(1, 0, 0, 4),
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.new(1, -10, 0.5, 0),
			BackgroundTransparency = 0.4,
			Parent = SliderFrame.Frame,
			ThemeTag = {
				BackgroundColor3 = "SliderRail",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
			New("UISizeConstraint", {
				MaxSize = Vector2.new(150, math.huge),
			}),
			SliderDisplay,
			SliderInput,
			SliderFill,
			SliderRail,
		})

		local isHovering = false
		local inputVisible = false

		local function calculateInputWidth(text)
			local textSize = game:GetService("TextService"):GetTextSize(
				text or "0",
				12,
				Enum.Font.SourceSans,
				Vector2.new(1000, 14)
			)
			local padding = 8
			local minWidth = 25
			local maxWidth = 80
			return math.max(minWidth, math.min(maxWidth, textSize.X + padding))
		end

		Creator.AddSignal(SliderFrame.Frame.MouseEnter, function()
			isHovering = true
			if not SliderInput:IsFocused() then
				SliderDisplay.Visible = false
				SliderInput.Text = tostring(Slider.Value)
				
				local targetWidth = calculateInputWidth(tostring(Slider.Value))
				SliderInput.Size = UDim2.new(0, targetWidth, 0, 14)
				inputVisible = true
				
				local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
				
				TweenService:Create(SliderInput, tweenInfo, {
					TextTransparency = 0,
					BackgroundTransparency = 0.8
				}):Play()
				
				TweenService:Create(SliderInput.UIStroke, tweenInfo, {
					Transparency = 0.7
				}):Play()
			end
		end)

		Creator.AddSignal(SliderFrame.Frame.MouseLeave, function()
			isHovering = false
			if not SliderInput:IsFocused() and inputVisible then
				local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
				
				TweenService:Create(SliderInput, tweenInfo, {
					TextTransparency = 1,
					BackgroundTransparency = 1
				}):Play()
				
				TweenService:Create(SliderInput.UIStroke, tweenInfo, {
					Transparency = 1
				}):Play()
				
				task.wait(0.2)
				SliderDisplay.Visible = true
				inputVisible = false
			end
		end)

		Creator.AddSignal(SliderInput.Changed, function(property)
			if property == "Text" then
				local text = SliderInput.Text
				local cleanText = text:gsub("[^%d%.%-]", "")
				if cleanText:find("%-") and cleanText:find("%-") ~= 1 then
					cleanText = cleanText:gsub("%-", "")
				end
				local dotCount = 0
				cleanText = cleanText:gsub("%.", function()
					dotCount = dotCount + 1
					return dotCount == 1 and "." or ""
				end)
				
				if cleanText ~= text then
					SliderInput.Text = cleanText
				end
				
				if SliderInput.Visible then
					local targetWidth = calculateInputWidth(cleanText)
					SliderInput.Size = UDim2.new(0, targetWidth, 0, 14)
				end
			end
		end)

		Creator.AddSignal(SliderInput.FocusLost, function(enterPressed)
			local inputValue = tonumber(SliderInput.Text)
			if inputValue then
				Slider:SetValue(inputValue)
			else
				SliderInput.Text = tostring(Slider.Value)
			end
			
			if not isHovering then
				local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
				
				TweenService:Create(SliderInput, tweenInfo, {
					TextTransparency = 1,
					BackgroundTransparency = 1
				}):Play()
				
				TweenService:Create(SliderInput.UIStroke, tweenInfo, {
					Transparency = 1
				}):Play()
				
				task.wait(0.2)
				SliderDisplay.Visible = true
				inputVisible = false
			end
		end)

		Creator.AddSignal(SliderInput.Focused, function()
			SliderInput.Text = tostring(Slider.Value)
		end)

		Creator.AddSignal(SliderInput.InputBegan, function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				Dragging = false
			end
		end)

		Creator.AddSignal(SliderDot.InputBegan, function(Input)
			if
				Input.UserInputType == Enum.UserInputType.MouseButton1
				or Input.UserInputType == Enum.UserInputType.Touch
			then
				Dragging = true
			end
		end)

		Creator.AddSignal(SliderDot.InputEnded, function(Input)
			if
				Input.UserInputType == Enum.UserInputType.MouseButton1
				or Input.UserInputType == Enum.UserInputType.Touch
			then
				Dragging = false
			end
		end)

		Creator.AddSignal(UserInputService.InputChanged, function(Input)
			if Dragging then
				local position = nil
				if Input.UserInputType == Enum.UserInputType.MouseMovement then
					position = Input.Position
				elseif Input.UserInputType == Enum.UserInputType.Touch then
					position = Input.Position
				end

				if position then
					local SizeScale = math.clamp((position.X - SliderRail.AbsolutePosition.X) / SliderRail.AbsoluteSize.X, 0, 1)
					Slider:SetValue(Slider.Min + ((Slider.Max - Slider.Min) * SizeScale))
				end
			end
		end)

		Creator.AddSignal(SliderRail.InputBegan, function(Input)
			if Input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				local SizeScale = math.clamp((Input.Position.X - SliderRail.AbsolutePosition.X) / SliderRail.AbsoluteSize.X, 0, 1)
				Slider:SetValue(Slider.Min + ((Slider.Max - Slider.Min) * SizeScale))
			end
		end)

		Creator.AddSignal(SliderRail.InputEnded, function(Input)
			if Input.UserInputType == Enum.UserInputType.Touch then
				Dragging = false
			end
		end)

		function Slider:OnChanged(Func)
			Slider.Changed = Func
			Func(Slider.Value)
		end

		function Slider:SetValue(Value)
			self.Value = Library:Round(math.clamp(Value, Slider.Min, Slider.Max), Slider.Rounding)
			SliderDot.Position = UDim2.new((self.Value - Slider.Min) / (Slider.Max - Slider.Min), -7, 0.5, 0)
			SliderFill.Size = UDim2.fromScale((self.Value - Slider.Min) / (Slider.Max - Slider.Min), 1)
			SliderDisplay.Text = tostring(self.Value)
			
			if SliderInput.Visible then
				SliderInput.Text = tostring(self.Value)
				local targetWidth = calculateInputWidth(tostring(self.Value))
				SliderInput.Size = UDim2.new(0, targetWidth, 0, 14)
			end

			Library:SafeCallback(Slider.Callback, self.Value)
			Library:SafeCallback(Slider.Changed, self.Value)
		end

		function Slider:Destroy()
			SliderFrame:Destroy()
			Library.Options[Idx] = nil
		end

		Slider:SetValue(Config.Default)

		Library.Options[Idx] = Slider
		return Slider
	end

	return Element
end)()
ElementsTable.Keybind = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Keybind"

	function Element:New(Idx, Config)
		assert(Config.Title, "KeyBind - Missing Title")
		assert(Config.Default, "KeyBind - Missing default value.")

		local Keybind = {
			Value = Config.Default,
			Toggled = false,
			Mode = Config.Mode or "Toggle",
			Type = "Keybind",
			Callback = Config.Callback or function(Value) end,
			ChangedCallback = Config.ChangedCallback or function(New) end,
		}

		local Picking = false

		local KeybindFrame = Components.Element(Config.Title, Config.Description, self.Container, true)

		Keybind.SetTitle = KeybindFrame.SetTitle
		Keybind.SetDesc = KeybindFrame.SetDesc
		Keybind.Visible = KeybindFrame.Visible
		Keybind.Elements = KeybindFrame

		local KeybindDisplayLabel = New("TextLabel", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
			Text = Config.Default,
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Center,
			Size = UDim2.new(0, 0, 0, 14),
			Position = UDim2.new(0, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundTransparency = 1,
			ThemeTag = {
				TextColor3 = "Text",
			},
		})

		local KeybindDisplayFrame = New("TextButton", {
			Size = UDim2.fromOffset(0, 30),
			Position = UDim2.new(1, -10, 0.5, 0),
			AnchorPoint = Vector2.new(1, 0.5),
			BackgroundTransparency = 0.9,
			Parent = KeybindFrame.Frame,
			AutomaticSize = Enum.AutomaticSize.X,
			ThemeTag = {
				BackgroundColor3 = "Keybind",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 5),
			}),
			New("UIPadding", {
				PaddingLeft = UDim.new(0, 8),
				PaddingRight = UDim.new(0, 8),
			}),
			New("UIStroke", {
				Transparency = 0.5,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				ThemeTag = {
					Color = "InElementBorder",
				},
			}),
			KeybindDisplayLabel,
		})

		function Keybind:GetState()
			if UserInputService:GetFocusedTextBox() and Keybind.Mode ~= "Always" then
				return false
			end

			if Keybind.Mode == "Always" then
				return true
			elseif Keybind.Mode == "Hold" then
				if Keybind.Value == "None" then
					return false
				end

				local Key = Keybind.Value

				if Key == "MouseLeft" or Key == "MouseRight" then
					return Key == "MouseLeft" and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
						or Key == "MouseRight"
						and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
				else
					return UserInputService:IsKeyDown(Enum.KeyCode[Keybind.Value])
				end
			else
				return Keybind.Toggled
			end
		end

		function Keybind:SetValue(Key, Mode)
			Key = Key or Keybind.Key
			Mode = Mode or Keybind.Mode

			KeybindDisplayLabel.Text = Key
			Keybind.Value = Key
			Keybind.Mode = Mode
		end

		function Keybind:OnClick(Callback)
			Keybind.Clicked = Callback
		end

		function Keybind:OnChanged(Callback)
			Keybind.Changed = Callback
			Callback(Keybind.Value)
		end

		function Keybind:DoClick()
			Library:SafeCallback(Keybind.Callback, Keybind.Toggled)
			Library:SafeCallback(Keybind.Clicked, Keybind.Toggled)
		end

		function Keybind:Destroy()
			KeybindFrame:Destroy()
			Library.Options[Idx] = nil
		end

		Creator.AddSignal(KeybindDisplayFrame.InputBegan, function(Input)
			if
				Input.UserInputType == Enum.UserInputType.MouseButton1
				or Input.UserInputType == Enum.UserInputType.Touch
			then
				Picking = true
				KeybindDisplayLabel.Text = "..."

				wait(0.2)

				local Event
				Event = UserInputService.InputBegan:Connect(function(Input)
					local Key

					if Input.UserInputType == Enum.UserInputType.Keyboard then
						Key = Input.KeyCode.Name
					elseif Input.UserInputType == Enum.UserInputType.MouseButton1 then
						Key = "MouseLeft"
					elseif Input.UserInputType == Enum.UserInputType.MouseButton2 then
						Key = "MouseRight"
					end

					local EndedEvent
					EndedEvent = UserInputService.InputEnded:Connect(function(Input)
						if
							Input.KeyCode.Name == Key
							or Key == "MouseLeft" and Input.UserInputType == Enum.UserInputType.MouseButton1
							or Key == "MouseRight" and Input.UserInputType == Enum.UserInputType.MouseButton2
						then
							Picking = false

							KeybindDisplayLabel.Text = Key
							Keybind.Value = Key

							Library:SafeCallback(Keybind.ChangedCallback, Input.KeyCode or Input.UserInputType)
							Library:SafeCallback(Keybind.Changed, Input.KeyCode or Input.UserInputType)

							Event:Disconnect()
							EndedEvent:Disconnect()
						end
					end)
				end)
			end
		end)

		Creator.AddSignal(UserInputService.InputBegan, function(Input)
			if not Picking and not UserInputService:GetFocusedTextBox() then
				if Keybind.Mode == "Toggle" then
					local Key = Keybind.Value

					if Key == "MouseLeft" or Key == "MouseRight" then
						if
							Key == "MouseLeft" and Input.UserInputType == Enum.UserInputType.MouseButton1
							or Key == "MouseRight" and Input.UserInputType == Enum.UserInputType.MouseButton2
						then
							Keybind.Toggled = not Keybind.Toggled
							Keybind:DoClick()
						end
					elseif Input.UserInputType == Enum.UserInputType.Keyboard then
						if Input.KeyCode.Name == Key then
							Keybind.Toggled = not Keybind.Toggled
							Keybind:DoClick()
						end
					end
				end
			end
		end)

		Library.Options[Idx] = Keybind
		return Keybind
	end

	return Element
end)()
ElementsTable.Colorpicker = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Colorpicker"

	function Element:New(Idx, Config)
		assert(Config.Title, "Colorpicker - Missing Title")
		assert(Config.Default, "AddColorPicker: Missing default value.")

		local Colorpicker = {
			Value = Config.Default,
			Transparency = Config.Transparency or 0,
			Type = "Colorpicker",
			Title = type(Config.Title) == "string" and Config.Title or "Colorpicker",
			Callback = Config.Callback or function(Color) end,
		}

		function Colorpicker:SetHSVFromRGB(Color)
			local H, S, V = Color3.toHSV(Color)
			Colorpicker.Hue = H
			Colorpicker.Sat = S
			Colorpicker.Vib = V
		end

		Colorpicker:SetHSVFromRGB(Colorpicker.Value)

		local ColorpickerFrame = Components.Element(Config.Title, Config.Description, self.Container, true)

		Colorpicker.SetTitle = ColorpickerFrame.SetTitle
		Colorpicker.SetDesc = ColorpickerFrame.SetDesc
		Colorpicker.Visible = ColorpickerFrame.Visible
		Colorpicker.Elements = ColorpickerFrame

		local DisplayFrameColor = New("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = Colorpicker.Value,
			Parent = ColorpickerFrame.Frame,
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 4),
			}),
		})

		local DisplayFrame = New("ImageLabel", {
			Size = UDim2.fromOffset(26, 26),
			Position = UDim2.new(1, -10, 0.5, 0),
			AnchorPoint = Vector2.new(1, 0.5),
			Parent = ColorpickerFrame.Frame,
			Image = "http://www.roblox.com/asset/?id=14204231522",
			ImageTransparency = 0.45,
			ScaleType = Enum.ScaleType.Tile,
			TileSize = UDim2.fromOffset(40, 40),
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 4),
			}),
			DisplayFrameColor,
		})

		local function CreateColorDialog()
			local Dialog = Components.Dialog:Create()
			Dialog.Title.Text = Colorpicker.Title
			Dialog.Root.Size = UDim2.fromOffset(430, 330)

			local Hue, Sat, Vib = Colorpicker.Hue, Colorpicker.Sat, Colorpicker.Vib
			local Transparency = Colorpicker.Transparency

			local function CreateInput()
				local Box = Components.Textbox()
				Box.Frame.Parent = Dialog.Root
				Box.Frame.Size = UDim2.new(0, 90, 0, 32)

				return Box
			end

			local function CreateInputLabel(Text, Pos)
				return New("TextLabel", {
					FontFace = Font.new(
						"rbxasset://fonts/families/GothamSSm.json",
						Enum.FontWeight.Medium,
						Enum.FontStyle.Normal
					),
					Text = Text,
					TextColor3 = Color3.fromRGB(240, 240, 240),
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(1, 0, 0, 32),
					Position = Pos,
					BackgroundTransparency = 1,
					Parent = Dialog.Root,
					ThemeTag = {
						TextColor3 = "Text",
					},
				})
			end

			local function GetRGB()
				local Value = Color3.fromHSV(Hue, Sat, Vib)
				return { R = math.floor(Value.r * 255), G = math.floor(Value.g * 255), B = math.floor(Value.b * 255) }
			end

			local SatCursor = New("ImageLabel", {
				Size = UDim2.new(0, 18, 0, 18),
				ScaleType = Enum.ScaleType.Fit,
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Image = "http://www.roblox.com/asset/?id=4805639000",
			})

			local SatVibMap = New("ImageLabel", {
				Size = UDim2.fromOffset(180, 160),
				Position = UDim2.fromOffset(20, 55),
				Image = "rbxassetid://4155801252",
				BackgroundColor3 = Colorpicker.Value,
				BackgroundTransparency = 0,
				Parent = Dialog.Root,
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 4),
				}),
				SatCursor,
			})

			local OldColorFrame = New("Frame", {
				BackgroundColor3 = Colorpicker.Value,
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = Colorpicker.Transparency,
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 4),
				}),
			})
			local OldColorFrameChecker = New("ImageLabel", {
				Image = "http://www.roblox.com/asset/?id=14204231522",
				ImageTransparency = 0.45,
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.fromOffset(40, 40),
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(112, 220),
				Size = UDim2.fromOffset(88, 24),
				Parent = Dialog.Root,
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 4),
				}),
				New("UIStroke", {
					Thickness = 2,
					Transparency = 0.75,
				}),
				OldColorFrame,
			})

			local DialogDisplayFrame = New("Frame", {
				BackgroundColor3 = Colorpicker.Value,
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0,
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 4),
				}),
			})

			local DialogDisplayFrameChecker = New("ImageLabel", {
				Image = "http://www.roblox.com/asset/?id=14204231522",
				ImageTransparency = 0.45,
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.fromOffset(40, 40),
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(20, 220),
				Size = UDim2.fromOffset(88, 24),
				Parent = Dialog.Root,
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 4),
				}),
				New("UIStroke", {
					Thickness = 2,
					Transparency = 0.75,
				}),
				DialogDisplayFrame,
			})

			local SequenceTable = {}

			for Color = 0, 1, 0.1 do
				table.insert(SequenceTable, ColorSequenceKeypoint.new(Color, Color3.fromHSV(Color, 1, 1)))
			end

			local HueSliderGradient = New("UIGradient", {
				Color = ColorSequence.new(SequenceTable),
				Rotation = 90,
			})

			local HueDragHolder = New("Frame", {
				Size = UDim2.new(1, 0, 1, -10),
				Position = UDim2.fromOffset(0, 5),
				BackgroundTransparency = 1,
			})

			local HueDrag = New("ImageLabel", {
				Size = UDim2.fromOffset(14, 14),
				Image = "http://www.roblox.com/asset/?id=12266946128",
				Parent = HueDragHolder,
				ThemeTag = {
					ImageColor3 = "DialogInput",
				},
			})

			local HueSlider = New("Frame", {
				Size = UDim2.fromOffset(12, 190),
				Position = UDim2.fromOffset(210, 55),
				Parent = Dialog.Root,
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
				HueSliderGradient,
				HueDragHolder,
			})

			local HexInput = CreateInput()
			HexInput.Frame.Position = UDim2.fromOffset(Config.Transparency and 260 or 240, 55)
			CreateInputLabel("Hex", UDim2.fromOffset(Config.Transparency and 360 or 340, 55))

			local RedInput = CreateInput()
			RedInput.Frame.Position = UDim2.fromOffset(Config.Transparency and 260 or 240, 95)
			CreateInputLabel("Red", UDim2.fromOffset(Config.Transparency and 360 or 340, 95))

			local GreenInput = CreateInput()
			GreenInput.Frame.Position = UDim2.fromOffset(Config.Transparency and 260 or 240, 135)
			CreateInputLabel("Green", UDim2.fromOffset(Config.Transparency and 360 or 340, 135))

			local BlueInput = CreateInput()
			BlueInput.Frame.Position = UDim2.fromOffset(Config.Transparency and 260 or 240, 175)
			CreateInputLabel("Blue", UDim2.fromOffset(Config.Transparency and 360 or 340, 175))

			local AlphaInput
			if Config.Transparency then
				AlphaInput = CreateInput()
				AlphaInput.Frame.Position = UDim2.fromOffset(260, 215)
				CreateInputLabel("Alpha", UDim2.fromOffset(360, 215))
			end

			local TransparencySlider, TransparencyDrag, TransparencyColor
			if Config.Transparency then
				local TransparencyDragHolder = New("Frame", {
					Size = UDim2.new(1, 0, 1, -10),
					Position = UDim2.fromOffset(0, 5),
					BackgroundTransparency = 1,
				})

				TransparencyDrag = New("ImageLabel", {
					Size = UDim2.fromOffset(14, 14),
					Image = "http://www.roblox.com/asset/?id=12266946128",
					Parent = TransparencyDragHolder,
					ThemeTag = {
						ImageColor3 = "DialogInput",
					},
				})

				TransparencyColor = New("Frame", {
					Size = UDim2.fromScale(1, 1),
				}, {
					New("UIGradient", {
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0, 0),
							NumberSequenceKeypoint.new(1, 1),
						}),
						Rotation = 270,
					}),
					New("UICorner", {
						CornerRadius = UDim.new(1, 0),
					}),
				})

				TransparencySlider = New("Frame", {
					Size = UDim2.fromOffset(12, 190),
					Position = UDim2.fromOffset(230, 55),
					Parent = Dialog.Root,
					BackgroundTransparency = 1,
				}, {
					New("UICorner", {
						CornerRadius = UDim.new(1, 0),
					}),
					New("ImageLabel", {
						Image = "http://www.roblox.com/asset/?id=14204231522",
						ImageTransparency = 0.45,
						ScaleType = Enum.ScaleType.Tile,
						TileSize = UDim2.fromOffset(40, 40),
						BackgroundTransparency = 1,
						Size = UDim2.fromScale(1, 1),
						Parent = Dialog.Root,
					}, {
						New("UICorner", {
							CornerRadius = UDim.new(1, 0),
						}),
					}),
					TransparencyColor,
					TransparencyDragHolder,
				})
			end

			local function Display()
				SatVibMap.BackgroundColor3 = Color3.fromHSV(Hue, 1, 1)
				HueDrag.Position = UDim2.new(0, -1, Hue, -6)
				SatCursor.Position = UDim2.new(Sat, 0, 1 - Vib, 0)
				DialogDisplayFrame.BackgroundColor3 = Color3.fromHSV(Hue, Sat, Vib)

				HexInput.Input.Text = "#" .. Color3.fromHSV(Hue, Sat, Vib):ToHex()
				RedInput.Input.Text = GetRGB()["R"]
				GreenInput.Input.Text = GetRGB()["G"]
				BlueInput.Input.Text = GetRGB()["B"]

				if Config.Transparency then
					TransparencyColor.BackgroundColor3 = Color3.fromHSV(Hue, Sat, Vib)
					DialogDisplayFrame.BackgroundTransparency = Transparency
					TransparencyDrag.Position = UDim2.new(0, -1, 1 - Transparency, -6)
					AlphaInput.Input.Text = Library:Round((1 - Transparency) * 100, 0) .. "%"
				end
			end

			Creator.AddSignal(HexInput.Input.FocusLost, function(Enter)
				if Enter then
					local Success, Result = pcall(Color3.fromHex, HexInput.Input.Text)
					if Success and typeof(Result) == "Color3" then
						Hue, Sat, Vib = Color3.toHSV(Result)
					end
				end
				Display()
			end)

			Creator.AddSignal(RedInput.Input.FocusLost, function(Enter)
				if Enter then
					local CurrentColor = GetRGB()
					local Success, Result = pcall(Color3.fromRGB, RedInput.Input.Text, CurrentColor["G"], CurrentColor["B"])
					if Success and typeof(Result) == "Color3" then
						if tonumber(RedInput.Input.Text) <= 255 then
							Hue, Sat, Vib = Color3.toHSV(Result)
						end
					end
				end
				Display()
			end)

			Creator.AddSignal(GreenInput.Input.FocusLost, function(Enter)
				if Enter then
					local CurrentColor = GetRGB()
					local Success, Result =
						pcall(Color3.fromRGB, CurrentColor["R"], GreenInput.Input.Text, CurrentColor["B"])
					if Success and typeof(Result) == "Color3" then
						if tonumber(GreenInput.Input.Text) <= 255 then
							Hue, Sat, Vib = Color3.toHSV(Result)
						end
					end
				end
				Display()
			end)

			Creator.AddSignal(BlueInput.Input.FocusLost, function(Enter)
				if Enter then
					local CurrentColor = GetRGB()
					local Success, Result =
						pcall(Color3.fromRGB, CurrentColor["R"], CurrentColor["G"], BlueInput.Input.Text)
					if Success and typeof(Result) == "Color3" then
						if tonumber(BlueInput.Input.Text) <= 255 then
							Hue, Sat, Vib = Color3.toHSV(Result)
						end
					end
				end
				Display()
			end)

			if Config.Transparency then
				Creator.AddSignal(AlphaInput.Input.FocusLost, function(Enter)
					if Enter then
						pcall(function()
							local Value = tonumber(AlphaInput.Input.Text)
							if Value >= 0 and Value <= 100 then
								Transparency = 1 - Value * 0.01
							end
						end)
					end
					Display()
				end)
			end

			Creator.AddSignal(SatVibMap.InputBegan, function(Input)
				if
					Input.UserInputType == Enum.UserInputType.MouseButton1
					or Input.UserInputType == Enum.UserInputType.Touch
				then
					while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						local MinX = SatVibMap.AbsolutePosition.X
						local MaxX = MinX + SatVibMap.AbsoluteSize.X
						local MouseX = math.clamp(Mouse.X, MinX, MaxX)

						local MinY = SatVibMap.AbsolutePosition.Y
						local MaxY = MinY + SatVibMap.AbsoluteSize.Y
						local MouseY = math.clamp(Mouse.Y, MinY, MaxY)

						Sat = (MouseX - MinX) / (MaxX - MinX)
						Vib = 1 - ((MouseY - MinY) / (MaxY - MinY))
						Display()

						RenderStepped:Wait()
					end
				end
			end)

			Creator.AddSignal(HueSlider.InputBegan, function(Input)
				if
					Input.UserInputType == Enum.UserInputType.MouseButton1
					or Input.UserInputType == Enum.UserInputType.Touch
				then
					while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						local MinY = HueSlider.AbsolutePosition.Y
						local MaxY = MinY + HueSlider.AbsoluteSize.Y
						local MouseY = math.clamp(Mouse.Y, MinY, MaxY)

						Hue = ((MouseY - MinY) / (MaxY - MinY))
						Display()

						RenderStepped:Wait()
					end
				end
			end)

			if Config.Transparency then
				Creator.AddSignal(TransparencySlider.InputBegan, function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 then
						while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
							local MinY = TransparencySlider.AbsolutePosition.Y
							local MaxY = MinY + TransparencySlider.AbsoluteSize.Y
							local MouseY = math.clamp(Mouse.Y, MinY, MaxY)

							Transparency = 1 - ((MouseY - MinY) / (MaxY - MinY))
							Display()

							RenderStepped:Wait()
						end
					end
				end)
			end

			Display()

			Dialog:Button("Done", function()
				Colorpicker:SetValue({ Hue, Sat, Vib }, Transparency)
			end)
			Dialog:Button("Cancel")
			Dialog:Open()
		end

		function Colorpicker:Display()
			Colorpicker.Value = Color3.fromHSV(Colorpicker.Hue, Colorpicker.Sat, Colorpicker.Vib)

			DisplayFrameColor.BackgroundColor3 = Colorpicker.Value
			DisplayFrameColor.BackgroundTransparency = Colorpicker.Transparency

			Element.Library:SafeCallback(Colorpicker.Callback, Colorpicker.Value)
			Element.Library:SafeCallback(Colorpicker.Changed, Colorpicker.Value)
		end

		function Colorpicker:SetValue(HSV, Transparency)
			local Color = Color3.fromHSV(HSV[1], HSV[2], HSV[3])

			Colorpicker.Transparency = Transparency or 0
			Colorpicker:SetHSVFromRGB(Color)
			Colorpicker:Display()
		end

		function Colorpicker:SetValueRGB(Color, Transparency)
			Colorpicker.Transparency = Transparency or 0
			Colorpicker:SetHSVFromRGB(Color)
			Colorpicker:Display()
		end

		function Colorpicker:OnChanged(Func)
			Colorpicker.Changed = Func
			Func(Colorpicker.Value)
		end

		function Colorpicker:Destroy()
			ColorpickerFrame:Destroy()
			Library.Options[Idx] = nil
		end

		Creator.AddSignal(ColorpickerFrame.Frame.MouseButton1Click, function()
			CreateColorDialog()
		end)

		Creator.AddSignal(ColorpickerFrame.Frame.InputBegan, function(Input)
			if Input.UserInputType == Enum.UserInputType.Touch then
				CreateColorDialog()
			end
		end)

		Colorpicker:Display()

		Library.Options[Idx] = Colorpicker
		return Colorpicker
	end

	return Element
end)()
ElementsTable.Input = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Input"

	function Element:New(Idx, Config)
		assert(Config.Title, "Input - Missing Title")
		Config.Callback = Config.Callback or function() end

		local Input = {
			Value = Config.Default or "",
			Numeric = Config.Numeric or false,
			Finished = Config.Finished or false,
			Callback = Config.Callback or function(Value) end,
			Type = "Input",
		}

		local InputFrame = Components.Element(Config.Title, Config.Description, self.Container, false)

		Input.SetTitle = InputFrame.SetTitle
		Input.SetDesc = InputFrame.SetDesc
		Input.Visible = InputFrame.Visible
		Input.Elements = InputFrame

		local Textbox = Components.Textbox(InputFrame.Frame, true)
		Textbox.Frame.Position = UDim2.new(1, -10, 0.5, 0)
		Textbox.Frame.AnchorPoint = Vector2.new(1, 0.5)
		Textbox.Frame.Size = UDim2.fromOffset(160, 30)
		Textbox.Input.Text = Config.Default or ""
		Textbox.Input.PlaceholderText = Config.Placeholder or ""

		local Box = Textbox.Input

		function Input:SetValue(Text)
			if Config.MaxLength and #Text > Config.MaxLength then
				Text = Text:sub(1, Config.MaxLength)
			end

			if Input.Numeric then
				if (not tonumber(Text)) and Text:len() > 0 then
					Text = Input.Value
				end
			end

			Input.Value = Text
			Box.Text = Text

			Library:SafeCallback(Input.Callback, Input.Value)
			Library:SafeCallback(Input.Changed, Input.Value)
		end

		if Input.Finished then
			AddSignal(Box.FocusLost, function(enter)
				if not enter then
					return
				end
				Input:SetValue(Box.Text)
			end)
		else
			AddSignal(Box:GetPropertyChangedSignal("Text"), function()
				Input:SetValue(Box.Text)
			end)
		end

		function Input:OnChanged(Func)
			Input.Changed = Func
			Func(Input.Value)
		end

		function Input:Destroy()
			InputFrame:Destroy()
			Library.Options[Idx] = nil
		end

		Library.Options[Idx] = Input
		return Input
	end

	return Element
end)()

local NotificationModule = Components.Notification
NotificationModule:Init(GUI)

local New = Creator.New

local Icons = {
	["lucide-air-vent"] = "rbxassetid://113088244245544",
	["lucide-a-arrow-down"] = "rbxassetid://120414505628310",
	["lucide-airplay"] = "rbxassetid://84819241115336",
	["lucide-activity"] = "rbxassetid://95440027512297",
	["lucide-a-arrow-up"] = "rbxassetid://96834340832343",
	["lucide-alarm-clock-check"] = "rbxassetid://98975592700921",
	["lucide-a-large-small"] = "rbxassetid://107161607517892",
	["lucide-accessibility"] = "rbxassetid://89312644787341",
	["lucide-alarm-clock-minus"] = "rbxassetid://82130050165851",
	["lucide-alarm-smoke"] = "rbxassetid://73760741091094",
	["lucide-alarm-clock-plus"] = "rbxassetid://107534211370017",
	["lucide-alarm-clock"] = "rbxassetid://98565867866733",
	["lucide-album"] = "rbxassetid://81701758864352",
	["lucide-align-center-horizontal"] = "rbxassetid://90152735878239",
	["lucide-align-center-vertical"] = "rbxassetid://137580719499796",
	["lucide-alarm-clock-off"] = "rbxassetid://82479038323456",
	["lucide-align-horizontal-distribute-end"] = "rbxassetid://130288633910138",
	["lucide-align-end-vertical"] = "rbxassetid://79375195184015",
	["lucide-align-horizontal-distribute-start"] = "rbxassetid://115759685434358",
	["lucide-align-horizontal-justify-end"] = "rbxassetid://132086487303478",
	["lucide-align-horizontal-distribute-center"] = "rbxassetid://101218054531765",
	["lucide-align-end-horizontal"] = "rbxassetid://130647352184453",
	["lucide-align-horizontal-justify-start"] = "rbxassetid://123061644053286",
	["lucide-align-horizontal-justify-center"] = "rbxassetid://130462992510518",
	["lucide-align-start-vertical"] = "rbxassetid://75467192558846",
	["lucide-align-vertical-distribute-end"] = "rbxassetid://70663488913005",
	["lucide-align-vertical-distribute-start"] = "rbxassetid://93076316561590",
	["lucide-align-vertical-distribute-center"] = "rbxassetid://112680826860842",
	["lucide-align-horizontal-space-around"] = "rbxassetid://135300504827397",
	["lucide-align-horizontal-space-between"] = "rbxassetid://101539620584007",
	["lucide-align-vertical-justify-center"] = "rbxassetid://108023935392097",
	["lucide-align-start-horizontal"] = "rbxassetid://75045942856873",
	["lucide-align-vertical-space-around"] = "rbxassetid://91561844813295",
	["lucide-align-vertical-justify-end"] = "rbxassetid://82519435764532",
	["lucide-align-vertical-space-between"] = "rbxassetid://130004655159352",
	["lucide-align-vertical-justify-start"] = "rbxassetid://131206149699386",
	["lucide-ambulance"] = "rbxassetid://106769645430045",
	["lucide-ampersands"] = "rbxassetid://93939543590778",
	["lucide-amphora"] = "rbxassetid://114809125365665",
	["lucide-ampersand"] = "rbxassetid://132582081191428",
	["lucide-annoyed"] = "rbxassetid://129313977435040",
	["lucide-anchor"] = "rbxassetid://134444532304744",
	["lucide-angry"] = "rbxassetid://103432430359962",
	["lucide-antenna"] = "rbxassetid://85182227753391",
	["lucide-arrow-up-0-1"] = "rbxassetid://90304809894863",
	["lucide-arrow-right"] = "rbxassetid://77716250995685",
	["lucide-arrow-up-down"] = "rbxassetid://116007484352857",
	["lucide-arrow-right-to-line"] = "rbxassetid://130302853811067",
	["lucide-arrow-up-from-dot"] = "rbxassetid://77075818203314",
	["lucide-arrow-up-1-0"] = "rbxassetid://82920579849338",
	["lucide-arrow-up-a-z"] = "rbxassetid://98736822641557",
	["lucide-arrow-up-from-line"] = "rbxassetid://79511043291321",
	["lucide-arrow-up-left"] = "rbxassetid://101219738563532",
	["lucide-arrow-up-to-line"] = "rbxassetid://80522631977965",
	["lucide-arrow-up"] = "rbxassetid://98979600473533",
	["lucide-arrow-up-wide-narrow"] = "rbxassetid://128135935592172",
	["lucide-arrow-up-z-a"] = "rbxassetid://80259664662816",
	["lucide-arrow-up-narrow-wide"] = "rbxassetid://114413647002523",
	["lucide-arrows-up-from-line"] = "rbxassetid://85448327430869",
	["lucide-arrow-up-right"] = "rbxassetid://85768846153053",
	["lucide-asterisk"] = "rbxassetid://79613632867728",
	["lucide-at-sign"] = "rbxassetid://132050649903695",
	["lucide-audio-waveform"] = "rbxassetid://105657332422535",
	["lucide-atom"] = "rbxassetid://119903768232341",
	["lucide-audio-lines"] = "rbxassetid://102485709988523",
	["lucide-award"] = "rbxassetid://109642232951251",
	["lucide-axe"] = "rbxassetid://137270702075192",
	["lucide-axis-3d"] = "rbxassetid://95186769537241",
	["lucide-baby"] = "rbxassetid://80466052275228",
	["lucide-badge-dollar-sign"] = "rbxassetid://72214133963083",
	["lucide-badge-check"] = "rbxassetid://75706152439533",
	["lucide-backpack"] = "rbxassetid://126071485947627",
	["lucide-badge-alert"] = "rbxassetid://81414335979300",
	["lucide-badge-cent"] = "rbxassetid://76850285035350",
	["lucide-badge-indian-rupee"] = "rbxassetid://103682477938619",
	["lucide-badge-euro"] = "rbxassetid://85552724808775",
	["lucide-badge-plus"] = "rbxassetid://104455648105353",
	["lucide-badge-info"] = "rbxassetid://98380410122482",
	["lucide-badge-percent"] = "rbxassetid://70488566289726",
	["lucide-badge-question-mark"] = "rbxassetid://102240877066011",
	["lucide-badge-minus"] = "rbxassetid://101315554345083",
	["lucide-badge-japanese-yen"] = "rbxassetid://113045284352658",
	["lucide-badge-pound-sterling"] = "rbxassetid://98935044155029",
	["lucide-badge-russian-ruble"] = "rbxassetid://112275627279902",
	["lucide-badge-x"] = "rbxassetid://101243395319925",
	["lucide-badge-turkish-lira"] = "rbxassetid://101434263132943",
	["lucide-badge-swiss-franc"] = "rbxassetid://78642697556686",
	["lucide-ban"] = "rbxassetid://101518975242759",
	["lucide-baggage-claim"] = "rbxassetid://140431745519415",
	["lucide-banana"] = "rbxassetid://86734447359422",
	["lucide-badge"] = "rbxassetid://94978560489891",
	["lucide-bandage"] = "rbxassetid://78234939423601",
	["lucide-banknote-arrow-down"] = "rbxassetid://134457083065515",
	["lucide-banknote-arrow-up"] = "rbxassetid://77764025685875",
	["lucide-barcode"] = "rbxassetid://121608699969250",
	["lucide-banknote"] = "rbxassetid://102066585318630",
	["lucide-baseline"] = "rbxassetid://128247774141861",
	["lucide-banknote-x"] = "rbxassetid://118738923534676",
	["lucide-barrel"] = "rbxassetid://116612716986134",
	["lucide-bath"] = "rbxassetid://101067851305042",
	["lucide-battery"] = "rbxassetid://78118317085253",
	["lucide-battery-charging"] = "rbxassetid://98180549695204",
	["lucide-battery-low"] = "rbxassetid://88294799598630",
	["lucide-battery-full"] = "rbxassetid://125340133800865",
	["lucide-battery-warning"] = "rbxassetid://120288517373566",
	["lucide-battery-plus"] = "rbxassetid://106711223904991",
	["lucide-battery-medium"] = "rbxassetid://73715347041489",
	["lucide-beaker"] = "rbxassetid://73110467757578",
	["lucide-bean"] = "rbxassetid://72912374193199",
	["lucide-bed-single"] = "rbxassetid://105005085469178",
	["lucide-bed-double"] = "rbxassetid://87256665828685",
	["lucide-bed"] = "rbxassetid://123966478228386",
	["lucide-beef"] = "rbxassetid://107606626961304",
	["lucide-bean-off"] = "rbxassetid://128820952943018",
	["lucide-beer-off"] = "rbxassetid://112815418189732",
	["lucide-beer"] = "rbxassetid://132755047015747",
	["lucide-bell-dot"] = "rbxassetid://92844550428675",
	["lucide-bell-off"] = "rbxassetid://82850239154074",
	["lucide-bell-minus"] = "rbxassetid://119315335306046",
	["lucide-bell-plus"] = "rbxassetid://95786634636936",
	["lucide-bell-ring"] = "rbxassetid://108990608140289",
	["lucide-between-horizontal-end"] = "rbxassetid://78170749508107",
	["lucide-bell-electric"] = "rbxassetid://106606348469124",
	["lucide-bell"] = "rbxassetid://92986018789671",
	["lucide-between-horizontal-start"] = "rbxassetid://73392709295543",
	["lucide-biceps-flexed"] = "rbxassetid://129098746499387",
	["lucide-bike"] = "rbxassetid://86948678675242",
	["lucide-between-vertical-start"] = "rbxassetid://90527894877833",
	["lucide-between-vertical-end"] = "rbxassetid://92678977822333",
	["lucide-binary"] = "rbxassetid://98571973201255",
	["lucide-binoculars"] = "rbxassetid://123282186340151",
	["lucide-biohazard"] = "rbxassetid://106659899610477",
	["lucide-birdhouse"] = "rbxassetid://89873652934066",
	["lucide-bird"] = "rbxassetid://128051070767918",
	["lucide-blinds"] = "rbxassetid://118851224898282",
	["lucide-bitcoin"] = "rbxassetid://133789665523083",
	["lucide-blend"] = "rbxassetid://115800779463786",
	["lucide-blocks"] = "rbxassetid://102716213912912",
	["lucide-bluetooth-connected"] = "rbxassetid://101031220149152",
	["lucide-bluetooth-off"] = "rbxassetid://88650866432234",
	["lucide-bluetooth-searching"] = "rbxassetid://90389994706536",
	["lucide-bluetooth"] = "rbxassetid://104154761844829",
	["lucide-bold"] = "rbxassetid://111520769173402",
	["lucide-bolt"] = "rbxassetid://100119987131796",
	["lucide-bomb"] = "rbxassetid://93241930182003",
	["lucide-bone"] = "rbxassetid://79800390446261",
	["lucide-book-a"] = "rbxassetid://137104343428455",
	["lucide-book-alert"] = "rbxassetid://91488851625933",
	["lucide-book-check"] = "rbxassetid://121069401172336",
	["lucide-book-audio"] = "rbxassetid://92694694813663",
	["lucide-book-copy"] = "rbxassetid://70771353229611",
	["lucide-book-dashed"] = "rbxassetid://135248639794134",
	["lucide-book-headphones"] = "rbxassetid://124546088059614",
	["lucide-book-image"] = "rbxassetid://104183725295808",
	["lucide-book-down"] = "rbxassetid://107990586598244",
	["lucide-book-heart"] = "rbxassetid://117316245973630",
	["lucide-book-key"] = "rbxassetid://85786219507047",
	["lucide-book-lock"] = "rbxassetid://114707451339109",
	["lucide-book-marked"] = "rbxassetid://87495016304285",
	["lucide-book-minus"] = "rbxassetid://125338544034101",
	["lucide-book-open-text"] = "rbxassetid://126539006156634",
	["lucide-book-open-check"] = "rbxassetid://126176385003423",
	["lucide-book-open"] = "rbxassetid://90912587435986",
	["lucide-book-plus"] = "rbxassetid://106800842279251",
	["lucide-book-type"] = "rbxassetid://112713438928681",
	["lucide-book-text"] = "rbxassetid://110858035175756",
	["lucide-book-up-2"] = "rbxassetid://140644523318440",
	["lucide-book-up"] = "rbxassetid://82634423935348",
	["lucide-book-x"] = "rbxassetid://75519368428679",
	["lucide-book-user"] = "rbxassetid://115260150286267",
	["lucide-book"] = "rbxassetid://122723818641136",
	["lucide-bookmark-check"] = "rbxassetid://100305287679595",
	["lucide-bookmark-minus"] = "rbxassetid://89339472182643",
	["lucide-bookmark-plus"] = "rbxassetid://121629455703261",
	["lucide-bookmark-x"] = "rbxassetid://95199400082726",
	["lucide-bookmark"] = "rbxassetid://79402714274099",
	["lucide-boom-box"] = "rbxassetid://79278219767666",
	["lucide-bot-message-square"] = "rbxassetid://140005134976316",
	["lucide-bot-off"] = "rbxassetid://108232370142862",
	["lucide-bot"] = "rbxassetid://140736083325394",
	["lucide-bow-arrow"] = "rbxassetid://120505014624085",
	["lucide-bottle-wine"] = "rbxassetid://83525579067279",
	["lucide-box"] = "rbxassetid://124463062989036",
	["lucide-boxes"] = "rbxassetid://80428483999163",
	["lucide-braces"] = "rbxassetid://134464413061657",
	["lucide-brain-circuit"] = "rbxassetid://140345789749626",
	["lucide-brain-cog"] = "rbxassetid://112334082333372",
	["lucide-brackets"] = "rbxassetid://82255555018168",
	["lucide-brick-wall-fire"] = "rbxassetid://113638535614716",
	["lucide-brain"] = "rbxassetid://117595464594048",
	["lucide-brick-wall-shield"] = "rbxassetid://130727573120968",
	["lucide-brick-wall"] = "rbxassetid://72678001347999",
	["lucide-briefcase-business"] = "rbxassetid://130776517324525",
	["lucide-briefcase-conveyor-belt"] = "rbxassetid://129801966448976",
	["lucide-briefcase-medical"] = "rbxassetid://139347477504625",
	["lucide-briefcase"] = "rbxassetid://82757538374728",
	["lucide-bring-to-front"] = "rbxassetid://98158815328542",
	["lucide-brush-cleaning"] = "rbxassetid://114865910576575",
	["lucide-brush"] = "rbxassetid://104804660794508",
	["lucide-bubbles"] = "rbxassetid://74043669293391",
	["lucide-bug-off"] = "rbxassetid://70750253825664",
	["lucide-bug"] = "rbxassetid://133217899175868",
	["lucide-bug-play"] = "rbxassetid://101255792432435",
	["lucide-building-2"] = "rbxassetid://90211404869801",
	["lucide-building"] = "rbxassetid://94142196417142",
	["lucide-bus-front"] = "rbxassetid://114061367083086",
	["lucide-bus"] = "rbxassetid://103533775544693",
	["lucide-cable"] = "rbxassetid://123971108968315",
	["lucide-cake"] = "rbxassetid://78809026942881",
	["lucide-calculator"] = "rbxassetid://111319996351107",
	["lucide-cable-car"] = "rbxassetid://100990843310986",
	["lucide-cake-slice"] = "rbxassetid://77017796632392",
	["lucide-calendar-1"] = "rbxassetid://97520920737467",
	["lucide-calendar-arrow-down"] = "rbxassetid://91064263011603",
	["lucide-calendar-arrow-up"] = "rbxassetid://99637106996581",
	["lucide-calendar-check-2"] = "rbxassetid://114125132570695",
	["lucide-calendar-check"] = "rbxassetid://116253684302599",
	["lucide-calendar-clock"] = "rbxassetid://136384122630507",
	["lucide-calendar-cog"] = "rbxassetid://108707456136692",
	["lucide-calendar-days"] = "rbxassetid://116053302884403",
	["lucide-calendar-fold"] = "rbxassetid://78499415876043",
	["lucide-calendar-heart"] = "rbxassetid://129045890791373",
	["lucide-calendar-minus-2"] = "rbxassetid://92914082775319",
	["lucide-calendar-minus"] = "rbxassetid://98794994270597",
	["lucide-calendar-off"] = "rbxassetid://129310823272421",
	["lucide-calendar-plus-2"] = "rbxassetid://85285860422019",
	["lucide-calendar-plus"] = "rbxassetid://100688207800828",
	["lucide-calendar-range"] = "rbxassetid://111810913033024",
	["lucide-calendar-sync"] = "rbxassetid://133220655127088",
	["lucide-calendar-search"] = "rbxassetid://114039715128216",
	["lucide-calendar-x-2"] = "rbxassetid://97240797436634",
	["lucide-calendar-x"] = "rbxassetid://128431845692537",
	["lucide-calendar"] = "rbxassetid://122212681541035",
	["lucide-camera-off"] = "rbxassetid://133932005072215",
	["lucide-camera"] = "rbxassetid://103581066098430",
	["lucide-candy-cane"] = "rbxassetid://94939985265229",
	["lucide-candy-off"] = "rbxassetid://88990479901694",
	["lucide-candy"] = "rbxassetid://74395895317493",
	["lucide-cannabis"] = "rbxassetid://75289534442544",
	["lucide-captions-off"] = "rbxassetid://99426968303211",
	["lucide-car-front"] = "rbxassetid://99974862129908",
	["lucide-captions"] = "rbxassetid://81276942849544",
	["lucide-car-taxi-front"] = "rbxassetid://75835068120509",
	["lucide-car"] = "rbxassetid://82812587709594",
	["lucide-caravan"] = "rbxassetid://116439873777523",
	["lucide-card-sim"] = "rbxassetid://85439953191353",
	["lucide-carrot"] = "rbxassetid://123662079147516",
	["lucide-case-lower"] = "rbxassetid://132422866744394",
	["lucide-case-upper"] = "rbxassetid://139433939295333",
	["lucide-case-sensitive"] = "rbxassetid://95136793964342",
	["lucide-cassette-tape"] = "rbxassetid://75499923724913",
	["lucide-cast"] = "rbxassetid://128033542394208",
	["lucide-castle"] = "rbxassetid://74342594680492",
	["lucide-cat"] = "rbxassetid://123889736680476",
	["lucide-cctv"] = "rbxassetid://82683346848440",
	["lucide-chart-area"] = "rbxassetid://118262958526826",
	["lucide-chart-bar-big"] = "rbxassetid://82562770849927",
	["lucide-chart-bar-decreasing"] = "rbxassetid://96375771294561",
	["lucide-chart-bar-increasing"] = "rbxassetid://110809152432047",
	["lucide-chart-bar-stacked"] = "rbxassetid://82174193159719",
	["lucide-chart-bar"] = "rbxassetid://103995825613537",
	["lucide-chart-candlestick"] = "rbxassetid://112748651353579",
	["lucide-chart-column-big"] = "rbxassetid://90681415263457",
	["lucide-chart-column-decreasing"] = "rbxassetid://95111949611377",
	["lucide-chart-column-increasing"] = "rbxassetid://112854116621325",
	["lucide-chart-column-stacked"] = "rbxassetid://130815119774342",
	["lucide-chart-column"] = "rbxassetid://113570673491876",
	["lucide-chart-gantt"] = "rbxassetid://105536255199936",
	["lucide-chart-network"] = "rbxassetid://79520870122240",
	["lucide-chart-line"] = "rbxassetid://131046231337699",
	["lucide-chart-no-axes-column-decreasing"] = "rbxassetid://126343881898808",
	["lucide-chart-no-axes-column-increasing"] = "rbxassetid://99281337487173",
	["lucide-chart-no-axes-combined"] = "rbxassetid://108729618602768",
	["lucide-chart-no-axes-gantt"] = "rbxassetid://124799685645328",
	["lucide-chart-pie"] = "rbxassetid://96106407745361",
	["lucide-chart-scatter"] = "rbxassetid://129693290375415",
	["lucide-chart-spline"] = "rbxassetid://133038781937336",
	["lucide-check-check"] = "rbxassetid://82008427041187",
	["lucide-check-line"] = "rbxassetid://87594411605293",
	["lucide-check"] = "rbxassetid://87094841427580",
	["lucide-cherry"] = "rbxassetid://80140793814176",
	["lucide-chef-hat"] = "rbxassetid://76995841204351",
	["lucide-chess-bishop"] = "rbxassetid://134317427411066",
	["lucide-chess-king"] = "rbxassetid://125706376827705",
	["lucide-chess-pawn"] = "rbxassetid://103120686818215",
	["lucide-chess-knight"] = "rbxassetid://126712097152759",
	["lucide-chess-queen"] = "rbxassetid://88518024426987",
	["lucide-chess-rook"] = "rbxassetid://118683442753293",
	["lucide-chevron-first"] = "rbxassetid://121886420549566",
	["lucide-chevron-down"] = "rbxassetid://103223387937319",
	["lucide-chevron-last"] = "rbxassetid://110016827907126",
	["lucide-chevron-left"] = "rbxassetid://94181145808233",
	["lucide-chevron-up"] = "rbxassetid://129408335757027",
	["lucide-chevron-right"] = "rbxassetid://104874753130630",
	["lucide-chevrons-down-up"] = "rbxassetid://79293562088887",
	["lucide-chevrons-down"] = "rbxassetid://120950821242934",
	["lucide-chevrons-left-right-ellipsis"] = "rbxassetid://84983020575513",
	["lucide-chevrons-left-right"] = "rbxassetid://75769819897403",
	["lucide-chevrons-left"] = "rbxassetid://125809177615447",
	["lucide-chevrons-right-left"] = "rbxassetid://137573153592233",
	["lucide-chevrons-right"] = "rbxassetid://107104911377550",
	["lucide-chevrons-up-down"] = "rbxassetid://82924571843667",
	["lucide-chevrons-up"] = "rbxassetid://107154820316297",
	["lucide-chromium"] = "rbxassetid://135518195940817",
	["lucide-cigarette-off"] = "rbxassetid://108894229209554",
	["lucide-church"] = "rbxassetid://106317033319260",
	["lucide-cigarette"] = "rbxassetid://132115894045225",
	["lucide-circle-alert"] = "rbxassetid://107514968688735",
	["lucide-circle-arrow-down"] = "rbxassetid://84529918944346",
	["lucide-circle-arrow-left"] = "rbxassetid://88991329949001",
	["lucide-circle-arrow-out-down-left"] = "rbxassetid://132564871193338",
	["lucide-circle-arrow-out-down-right"] = "rbxassetid://125571968216970",
	["lucide-circle-arrow-out-up-left"] = "rbxassetid://123299086652800",
	["lucide-circle-arrow-right"] = "rbxassetid://85317839380029",
	["lucide-circle-check-big"] = "rbxassetid://113030214027267",
	["lucide-circle-arrow-up"] = "rbxassetid://89466164270861",
	["lucide-circle-check"] = "rbxassetid://138722225919600",
	["lucide-circle-chevron-right"] = "rbxassetid://135660060313721",
	["lucide-circle-chevron-down"] = "rbxassetid://102007457949013",
	["lucide-circle-chevron-up"] = "rbxassetid://85036267451789",
	["lucide-circle-chevron-left"] = "rbxassetid://124384902180726",
	["lucide-circle-dashed"] = "rbxassetid://84342901022097",
	["lucide-circle-divide"] = "rbxassetid://88295424429169",
	["lucide-circle-arrow-out-up-right"] = "rbxassetid://84631329515480",
	["lucide-circle-dot-dashed"] = "rbxassetid://104267974984791",
	["lucide-circle-dollar-sign"] = "rbxassetid://131850032806063",
	["lucide-circle-dot"] = "rbxassetid://88018780936807",
	["lucide-circle-ellipsis"] = "rbxassetid://98452861805576",
	["lucide-circle-equal"] = "rbxassetid://115567608354532",
	["lucide-circle-fading-arrow-up"] = "rbxassetid://136248854954252",
	["lucide-circle-fading-plus"] = "rbxassetid://109146422378799",
	["lucide-circle-gauge"] = "rbxassetid://118873788439098",
	["lucide-circle-minus"] = "rbxassetid://94451483271759",
	["lucide-circle-off"] = "rbxassetid://103851042045774",
	["lucide-circle-parking-off"] = "rbxassetid://81011530136572",
	["lucide-circle-parking"] = "rbxassetid://111444708821861",
	["lucide-circle-pause"] = "rbxassetid://115909305286891",
	["lucide-circle-percent"] = "rbxassetid://108345882434902",
	["lucide-circle-play"] = "rbxassetid://102297279653970",
	["lucide-circle-plus"] = "rbxassetid://119568567947937",
	["lucide-circle-pound-sterling"] = "rbxassetid://134660977089510",
	["lucide-circle-power"] = "rbxassetid://125238902438636",
	["lucide-circle-question-mark"] = "rbxassetid://85169507614755",
	["lucide-circle-slash-2"] = "rbxassetid://86810307205966",
	["lucide-circle-slash"] = "rbxassetid://111994989162803",
	["lucide-circle-small"] = "rbxassetid://96386484116204",
	["lucide-circle-star"] = "rbxassetid://131963629948566",
	["lucide-circle-stop"] = "rbxassetid://101880983726386",
	["lucide-circle-user-round"] = "rbxassetid://70980270104566",
	["lucide-circle-x"] = "rbxassetid://78733624425654",
	["lucide-circle"] = "rbxassetid://130206663687965",
	["lucide-circuit-board"] = "rbxassetid://131162320590629",
	["lucide-citrus"] = "rbxassetid://133914484046351",
	["lucide-clapperboard"] = "rbxassetid://87994290469459",
	["lucide-clipboard-check"] = "rbxassetid://117382012272220",
	["lucide-circle-user"] = "rbxassetid://71619064953472",
	["lucide-clipboard-clock"] = "rbxassetid://124441263777250",
	["lucide-clipboard-copy"] = "rbxassetid://100403352598119",
	["lucide-clipboard-list"] = "rbxassetid://123821058500206",
	["lucide-clipboard-minus"] = "rbxassetid://131504614214997",
	["lucide-clipboard-paste"] = "rbxassetid://80182306978235",
	["lucide-clipboard-pen-line"] = "rbxassetid://123860301063934",
	["lucide-clipboard-pen"] = "rbxassetid://93320544956716",
	["lucide-clipboard-plus"] = "rbxassetid://77662757035255",
	["lucide-clipboard-type"] = "rbxassetid://138196914632931",
	["lucide-clipboard-x"] = "rbxassetid://93366806355520",
	["lucide-clipboard"] = "rbxassetid://113663117976023",
	["lucide-clock-1"] = "rbxassetid://113454898752373",
	["lucide-clock-11"] = "rbxassetid://137246905548889",
	["lucide-clock-12"] = "rbxassetid://138293101540822",
	["lucide-clock-2"] = "rbxassetid://138441442475093",
	["lucide-clock-3"] = "rbxassetid://115343663198256",
	["lucide-clock-10"] = "rbxassetid://120387560227337",
	["lucide-clock-4"] = "rbxassetid://97771013312549",
	["lucide-clock-5"] = "rbxassetid://73888387072203",
	["lucide-clock-6"] = "rbxassetid://83784677808341",
	["lucide-clock-7"] = "rbxassetid://76118988452703",
	["lucide-clock-8"] = "rbxassetid://123266581784685",
	["lucide-clock-9"] = "rbxassetid://78708548463132",
	["lucide-clock-alert"] = "rbxassetid://93063264012489",
	["lucide-clock-arrow-down"] = "rbxassetid://127543269177042",
	["lucide-clock-arrow-up"] = "rbxassetid://76821217588234",
	["lucide-clock-check"] = "rbxassetid://109732547038762",
	["lucide-clock-fading"] = "rbxassetid://114819314915942",
	["lucide-clock-plus"] = "rbxassetid://93925110724700",
	["lucide-clock"] = "rbxassetid://139851423696667",
	["lucide-closed-caption"] = "rbxassetid://118738254580900",
	["lucide-cloud-alert"] = "rbxassetid://89478949399625",
	["lucide-cloud-check"] = "rbxassetid://132881979830173",
	["lucide-cloud-cog"] = "rbxassetid://122417099827577",
	["lucide-cloud-download"] = "rbxassetid://72478173326379",
	["lucide-cloud-fog"] = "rbxassetid://124079870744890",
	["lucide-cloud-hail"] = "rbxassetid://91192738645993",
	["lucide-cloud-lightning"] = "rbxassetid://137833039705770",
	["lucide-cloud-drizzle"] = "rbxassetid://121557270237341",
	["lucide-cloud-moon-rain"] = "rbxassetid://112788800748992",
	["lucide-cloud-moon"] = "rbxassetid://129642273666664",
	["lucide-cloud-off"] = "rbxassetid://107155061269103",
	["lucide-cloud-rain-wind"] = "rbxassetid://121245475277579",
	["lucide-cloud-rain"] = "rbxassetid://121649697528447",
	["lucide-cloud-snow"] = "rbxassetid://126439117825655",
	["lucide-cloud-sun-rain"] = "rbxassetid://138950924654720",
	["lucide-cloud-sun"] = "rbxassetid://105178531268580",
	["lucide-cloud-upload"] = "rbxassetid://100734555816059",
	["lucide-cloud"] = "rbxassetid://137231318826123",
	["lucide-cloudy"] = "rbxassetid://73249767001654",
	["lucide-clover"] = "rbxassetid://114845709519789",
	["lucide-club"] = "rbxassetid://138300983997218",
	["lucide-code-xml"] = "rbxassetid://101748661956945",
	["lucide-code"] = "rbxassetid://72069146538086",
	["lucide-codesandbox"] = "rbxassetid://133284865067332",
	["lucide-codepen"] = "rbxassetid://101438025548085",
	["lucide-coffee"] = "rbxassetid://100395382589803",
	["lucide-cog"] = "rbxassetid://88736731606398",
	["lucide-coins"] = "rbxassetid://132443494570075",
	["lucide-columns-2"] = "rbxassetid://108264027883109",
	["lucide-columns-3-cog"] = "rbxassetid://78745140374932",
	["lucide-columns-3"] = "rbxassetid://85373797690931",
	["lucide-columns-4"] = "rbxassetid://75940935311015",
	["lucide-combine"] = "rbxassetid://97815463468029",
	["lucide-command"] = "rbxassetid://82080879408046",
	["lucide-compass"] = "rbxassetid://97564727838415",
	["lucide-component"] = "rbxassetid://134144485641331",
	["lucide-computer"] = "rbxassetid://81032027435945",
	["lucide-concierge-bell"] = "rbxassetid://81777157339711",
	["lucide-cone"] = "rbxassetid://115432394754761",
	["lucide-construction"] = "rbxassetid://119522917188644",
	["lucide-contact-round"] = "rbxassetid://95708741521812",
	["lucide-contact"] = "rbxassetid://116220461276828",
	["lucide-container"] = "rbxassetid://88550572218063",
	["lucide-contrast"] = "rbxassetid://132967737461639",
	["lucide-cookie"] = "rbxassetid://122159915499706",
	["lucide-cooking-pot"] = "rbxassetid://105005758283498",
	["lucide-copy-check"] = "rbxassetid://98232166540454",
	["lucide-copy-plus"] = "rbxassetid://104981459015752",
	["lucide-copy-minus"] = "rbxassetid://113996515346735",
	["lucide-copy-x"] = "rbxassetid://133499460929346",
	["lucide-copy-slash"] = "rbxassetid://91220337906231",
	["lucide-copyleft"] = "rbxassetid://136562303540665",
	["lucide-copyright"] = "rbxassetid://76322901353742",
	["lucide-corner-down-left"] = "rbxassetid://96677272730579",
	["lucide-corner-down-right"] = "rbxassetid://134667109074827",
	["lucide-corner-left-down"] = "rbxassetid://72470587971918",
	["lucide-corner-left-up"] = "rbxassetid://73953954863215",
	["lucide-corner-right-down"] = "rbxassetid://84941025228999",
	["lucide-copy"] = "rbxassetid://128463727794542",
	["lucide-corner-right-up"] = "rbxassetid://79801870040113",
	["lucide-corner-up-left"] = "rbxassetid://123514297443736",
	["lucide-corner-up-right"] = "rbxassetid://84241960900564",
	["lucide-cpu"] = "rbxassetid://122936516042287",
	["lucide-creative-commons"] = "rbxassetid://71466571846572",
	["lucide-credit-card"] = "rbxassetid://133360811635727",
	["lucide-croissant"] = "rbxassetid://98280325891641",
	["lucide-crop"] = "rbxassetid://76055472302483",
	["lucide-cross"] = "rbxassetid://75100956787938",
	["lucide-crosshair"] = "rbxassetid://119124184549056",
	["lucide-crown"] = "rbxassetid://136122001401017",
	["lucide-cuboid"] = "rbxassetid://95082826412885",
	["lucide-currency"] = "rbxassetid://73671572489615",
	["lucide-cup-soda"] = "rbxassetid://124008454793344",
	["lucide-cylinder"] = "rbxassetid://111253761238108",
	["lucide-dam"] = "rbxassetid://87881824702178",
	["lucide-database-backup"] = "rbxassetid://75311650224117",
	["lucide-database"] = "rbxassetid://119299664310591",
	["lucide-database-zap"] = "rbxassetid://108584033443039",
	["lucide-decimals-arrow-left"] = "rbxassetid://106742398028170",
	["lucide-delete"] = "rbxassetid://129223837108610",
	["lucide-dessert"] = "rbxassetid://113562954276962",
	["lucide-decimals-arrow-right"] = "rbxassetid://135916529001991",
	["lucide-diameter"] = "rbxassetid://106024440049223",
	["lucide-diamond-minus"] = "rbxassetid://94944912113536",
	["lucide-diamond-percent"] = "rbxassetid://115734739111887",
	["lucide-diamond-plus"] = "rbxassetid://123686365574625",
	["lucide-diamond"] = "rbxassetid://91344995267499",
	["lucide-dice-2"] = "rbxassetid://111293771714862",
	["lucide-dice-1"] = "rbxassetid://99201818629880",
	["lucide-dice-3"] = "rbxassetid://140385478470416",
	["lucide-dice-4"] = "rbxassetid://121522450870676",
	["lucide-dice-5"] = "rbxassetid://123629316296933",
	["lucide-dice-6"] = "rbxassetid://87042080881970",
	["lucide-dices"] = "rbxassetid://95089680619494",
	["lucide-diff"] = "rbxassetid://80112085374614",
	["lucide-disc-2"] = "rbxassetid://121078777317372",
	["lucide-disc-3"] = "rbxassetid://94384652290056",
	["lucide-disc-album"] = "rbxassetid://86341639226387",
	["lucide-disc"] = "rbxassetid://109431817995341",
	["lucide-divide"] = "rbxassetid://124908211519684",
	["lucide-dna-off"] = "rbxassetid://84260545543694",
	["lucide-dna"] = "rbxassetid://82925188897386",
	["lucide-dock"] = "rbxassetid://130432548288501",
	["lucide-dog"] = "rbxassetid://135737866848801",
	["lucide-dollar-sign"] = "rbxassetid://72619464046558",
	["lucide-donut"] = "rbxassetid://122654366921014",
	["lucide-door-closed"] = "rbxassetid://114150080075522",
	["lucide-door-closed-locked"] = "rbxassetid://125126374811533",
	["lucide-door-open"] = "rbxassetid://123778216631047",
	["lucide-dot"] = "rbxassetid://136673888685240",
	["lucide-download"] = "rbxassetid://100820322908093",
	["lucide-drafting-compass"] = "rbxassetid://85336386803408",
	["lucide-drama"] = "rbxassetid://90011340110072",
	["lucide-dribbble"] = "rbxassetid://83826963617748",
	["lucide-drill"] = "rbxassetid://125341078941381",
	["lucide-drone"] = "rbxassetid://80273660110899",
	["lucide-droplet-off"] = "rbxassetid://120009591467366",
	["lucide-droplet"] = "rbxassetid://120745643292261",
	["lucide-droplets"] = "rbxassetid://121681742993337",
	["lucide-drum"] = "rbxassetid://124152150067768",
	["lucide-drumstick"] = "rbxassetid://80983300653310",
	["lucide-dumbbell"] = "rbxassetid://138245019812319",
	["lucide-ear"] = "rbxassetid://124953202931671",
	["lucide-ear-off"] = "rbxassetid://106457179918226",
	["lucide-earth-lock"] = "rbxassetid://77630277353747",
	["lucide-earth"] = "rbxassetid://99567852560587",
	["lucide-eclipse"] = "rbxassetid://120170549207328",
	["lucide-egg-fried"] = "rbxassetid://107696247511912",
	["lucide-egg-off"] = "rbxassetid://71865222834020",
	["lucide-egg"] = "rbxassetid://74077828249299",
	["lucide-ellipsis"] = "rbxassetid://78449915318917",
	["lucide-ellipsis-vertical"] = "rbxassetid://130645731741151",
	["lucide-equal-approximately"] = "rbxassetid://123996847137772",
	["lucide-equal-not"] = "rbxassetid://108053548732555",
	["lucide-equal"] = "rbxassetid://97680214480216",
	["lucide-eraser"] = "rbxassetid://100652041684396",
	["lucide-ethernet-port"] = "rbxassetid://83059942598586",
	["lucide-euro"] = "rbxassetid://133717180614905",
	["lucide-expand"] = "rbxassetid://138020628831868",
	["lucide-ev-charger"] = "rbxassetid://129061580743760",
	["lucide-external-link"] = "rbxassetid://108766284581078",
	["lucide-eye-closed"] = "rbxassetid://94679378452708",
	["lucide-eye-off"] = "rbxassetid://71078373482627",
	["lucide-eye"] = "rbxassetid://84586229544223",
	["lucide-facebook"] = "rbxassetid://71385196703457",
	["lucide-factory"] = "rbxassetid://132999616234981",
	["lucide-fast-forward"] = "rbxassetid://118513526984000",
	["lucide-fan"] = "rbxassetid://117386414979086",
	["lucide-feather"] = "rbxassetid://123769058034984",
	["lucide-fence"] = "rbxassetid://88818973066412",
	["lucide-ferris-wheel"] = "rbxassetid://133128632263942",
	["lucide-figma"] = "rbxassetid://120705462239526",
	["lucide-file-archive"] = "rbxassetid://94339146764953",
	["lucide-file-axis-3d"] = "rbxassetid://110188053750644",
	["lucide-file-badge"] = "rbxassetid://111037832298396",
	["lucide-file-box"] = "rbxassetid://86680241427851",
	["lucide-file-braces-corner"] = "rbxassetid://131946856612247",
	["lucide-file-braces"] = "rbxassetid://84427132110312",
	["lucide-file-chart-column-increasing"] = "rbxassetid://87515411829113",
	["lucide-file-chart-column"] = "rbxassetid://80108292403787",
	["lucide-file-chart-line"] = "rbxassetid://118005825824629",
	["lucide-file-chart-pie"] = "rbxassetid://107639383851167",
	["lucide-file-check-corner"] = "rbxassetid://129978795373472",
	["lucide-file-check"] = "rbxassetid://108618371356640",
	["lucide-file-clock"] = "rbxassetid://139643888311815",
	["lucide-file-code-corner"] = "rbxassetid://133387515339792",
	["lucide-file-code"] = "rbxassetid://115281703183663",
	["lucide-file-cog"] = "rbxassetid://85942694904587",
	["lucide-file-diff"] = "rbxassetid://94870713921565",
	["lucide-file-digit"] = "rbxassetid://85958556237660",
	["lucide-file-down"] = "rbxassetid://135257456757735",
	["lucide-file-exclamation-point"] = "rbxassetid://91750055723378",
	["lucide-file-headphone"] = "rbxassetid://108763383896474",
	["lucide-file-heart"] = "rbxassetid://129966799800008",
	["lucide-file-image"] = "rbxassetid://104274766178160",
	["lucide-file-input"] = "rbxassetid://90646074183163",
	["lucide-file-key"] = "rbxassetid://92440256929652",
	["lucide-file-lock"] = "rbxassetid://76980156391910",
	["lucide-file-minus-corner"] = "rbxassetid://120966114846559",
	["lucide-file-minus"] = "rbxassetid://119106212477183",
	["lucide-file-music"] = "rbxassetid://136136876922410",
	["lucide-file-output"] = "rbxassetid://128552508259693",
	["lucide-file-pen-line"] = "rbxassetid://83518561169870",
	["lucide-file-pen"] = "rbxassetid://95425438458747",
	["lucide-file-play"] = "rbxassetid://100763826634694",
	["lucide-file-plus-corner"] = "rbxassetid://78517434084413",
	["lucide-file-plus"] = "rbxassetid://118438263178788",
	["lucide-file-question-mark"] = "rbxassetid://131885651218637",
	["lucide-file-scan"] = "rbxassetid://102713455869698",
	["lucide-file-search-corner"] = "rbxassetid://83816859916634",
	["lucide-file-search"] = "rbxassetid://130659571527880",
	["lucide-file-signal"] = "rbxassetid://75545722651039",
	["lucide-file-sliders"] = "rbxassetid://71903238418061",
	["lucide-file-spreadsheet"] = "rbxassetid://90200363634013",
	["lucide-file-stack"] = "rbxassetid://80727374771864",
	["lucide-file-symlink"] = "rbxassetid://116471238173611",
	["lucide-file-terminal"] = "rbxassetid://133083862330487",
	["lucide-file-text"] = "rbxassetid://115284332253825",
	["lucide-file-type-corner"] = "rbxassetid://117445859705507",
	["lucide-file-type"] = "rbxassetid://108904497138686",
	["lucide-file-up"] = "rbxassetid://70528395015940",
	["lucide-file-user"] = "rbxassetid://120216706412554",
	["lucide-file-video-camera"] = "rbxassetid://105983947710503",
	["lucide-file-volume"] = "rbxassetid://80573298141215",
	["lucide-file-x-corner"] = "rbxassetid://105551647199014",
	["lucide-file-x"] = "rbxassetid://126193753613258",
	["lucide-file"] = "rbxassetid://87255401659870",
	["lucide-film"] = "rbxassetid://105347963847094",
	["lucide-files"] = "rbxassetid://102391076620192",
	["lucide-fingerprint"] = "rbxassetid://116393223079983",
	["lucide-fire-extinguisher"] = "rbxassetid://98055077209529",
	["lucide-fish-off"] = "rbxassetid://122847512230931",
	["lucide-fish-symbol"] = "rbxassetid://123118629335632",
	["lucide-fish"] = "rbxassetid://82592705493804",
	["lucide-flag-off"] = "rbxassetid://121562927612543",
	["lucide-flag-triangle-left"] = "rbxassetid://75395548540594",
	["lucide-flag-triangle-right"] = "rbxassetid://131344001192872",
	["lucide-flag"] = "rbxassetid://90315583265113",
	["lucide-flame"] = "rbxassetid://88573180774976",
	["lucide-flame-kindling"] = "rbxassetid://93852253183041",
	["lucide-flashlight-off"] = "rbxassetid://121575632549357",
	["lucide-flashlight"] = "rbxassetid://127237270232350",
	["lucide-flask-conical-off"] = "rbxassetid://74215918311243",
	["lucide-flask-conical"] = "rbxassetid://92363223751618",
	["lucide-flask-round"] = "rbxassetid://137860883688107",
	["lucide-flip-horizontal-2"] = "rbxassetid://126220971987740",
	["lucide-flip-vertical-2"] = "rbxassetid://120054095852694",
	["lucide-flip-horizontal"] = "rbxassetid://96623693441271",
	["lucide-flip-vertical"] = "rbxassetid://90077372315899",
	["lucide-flower-2"] = "rbxassetid://108507068937434",
	["lucide-flower"] = "rbxassetid://128883084271859",
	["lucide-focus"] = "rbxassetid://75001591953071",
	["lucide-fold-horizontal"] = "rbxassetid://111086196755758",
	["lucide-fold-vertical"] = "rbxassetid://116627357412632",
	["lucide-folder-archive"] = "rbxassetid://77750425007186",
	["lucide-folder-clock"] = "rbxassetid://75266409782876",
	["lucide-folder-check"] = "rbxassetid://128166080923864",
	["lucide-folder-closed"] = "rbxassetid://96084215893251",
	["lucide-folder-code"] = "rbxassetid://111114572127754",
	["lucide-folder-cog"] = "rbxassetid://92435026944010",
	["lucide-folder-dot"] = "rbxassetid://127079206879087",
	["lucide-folder-down"] = "rbxassetid://122774694127191",
	["lucide-folder-git-2"] = "rbxassetid://137882529004198",
	["lucide-folder-git"] = "rbxassetid://113495028414841",
	["lucide-folder-heart"] = "rbxassetid://100812946130537",
	["lucide-folder-input"] = "rbxassetid://84199859130367",
	["lucide-folder-kanban"] = "rbxassetid://90845210247037",
	["lucide-folder-key"] = "rbxassetid://94247827470011",
	["lucide-folder-lock"] = "rbxassetid://129631598904132",
	["lucide-folder-minus"] = "rbxassetid://85854915193371",
	["lucide-folder-open-dot"] = "rbxassetid://125348097394400",
	["lucide-folder-open"] = "rbxassetid://77744859901309",
	["lucide-folder-output"] = "rbxassetid://135285574919155",
	["lucide-folder-pen"] = "rbxassetid://78587158368364",
	["lucide-folder-plus"] = "rbxassetid://93057308721557",
	["lucide-folder-root"] = "rbxassetid://95224160750678",
	["lucide-folder-search-2"] = "rbxassetid://86860614307543",
	["lucide-folder-search"] = "rbxassetid://131127787857999",
	["lucide-folder-symlink"] = "rbxassetid://138650370214952",
	["lucide-folder-sync"] = "rbxassetid://104408248199533",
	["lucide-folder-tree"] = "rbxassetid://86379991475354",
	["lucide-folder-up"] = "rbxassetid://87980648385612",
	["lucide-folder-x"] = "rbxassetid://139720728298750",
	["lucide-folder"] = "rbxassetid://107268726142323",
	["lucide-folders"] = "rbxassetid://96663097513322",
	["lucide-footprints"] = "rbxassetid://122362549360138",
	["lucide-forklift"] = "rbxassetid://71380229503176",
	["lucide-forward"] = "rbxassetid://132706238679461",
	["lucide-frame"] = "rbxassetid://94739752532338",
	["lucide-framer"] = "rbxassetid://112760292091022",
	["lucide-frown"] = "rbxassetid://108168379708837",
	["lucide-fuel"] = "rbxassetid://98485592959003",
	["lucide-funnel-plus"] = "rbxassetid://136496409730859",
	["lucide-fullscreen"] = "rbxassetid://140029490334827",
	["lucide-funnel-x"] = "rbxassetid://92865725363630",
	["lucide-funnel"] = "rbxassetid://121007436886647",
	["lucide-gallery-horizontal-end"] = "rbxassetid://71725977830225",
	["lucide-gallery-horizontal"] = "rbxassetid://111883023568480",
	["lucide-gallery-thumbnails"] = "rbxassetid://99454573206257",
	["lucide-gallery-vertical-end"] = "rbxassetid://96978046171892",
	["lucide-gallery-vertical"] = "rbxassetid://135930145074448",
	["lucide-gamepad-2"] = "rbxassetid://136497971865501",
	["lucide-gamepad-directional"] = "rbxassetid://133672138400476",
	["lucide-gauge"] = "rbxassetid://127095088175101",
	["lucide-gamepad"] = "rbxassetid://92764835721066",
	["lucide-gavel"] = "rbxassetid://104614994868142",
	["lucide-gem"] = "rbxassetid://126079406603750",
	["lucide-georgian-lari"] = "rbxassetid://82868863303787",
	["lucide-ghost"] = "rbxassetid://86463660178859",
	["lucide-gift"] = "rbxassetid://108519120439558",
	["lucide-git-branch-minus"] = "rbxassetid://80187999120050",
	["lucide-git-branch-plus"] = "rbxassetid://100845415440135",
	["lucide-git-branch"] = "rbxassetid://98752498655713",
	["lucide-git-commit-horizontal"] = "rbxassetid://81428079977402",
	["lucide-git-commit-vertical"] = "rbxassetid://123084084972444",
	["lucide-git-compare-arrows"] = "rbxassetid://73447329960275",
	["lucide-git-compare"] = "rbxassetid://117915732831013",
	["lucide-git-fork"] = "rbxassetid://77861673332481",
	["lucide-git-graph"] = "rbxassetid://133037283157703",
	["lucide-git-pull-request-arrow"] = "rbxassetid://127804022642477",
	["lucide-git-merge"] = "rbxassetid://108100105720002",
	["lucide-git-pull-request-closed"] = "rbxassetid://103795784782702",
	["lucide-git-pull-request-create-arrow"] = "rbxassetid://110035480366791",
	["lucide-git-pull-request-draft"] = "rbxassetid://101849838844965",
	["lucide-git-pull-request-create"] = "rbxassetid://73922009651251",
	["lucide-git-pull-request"] = "rbxassetid://134890863887177",
	["lucide-github"] = "rbxassetid://90442344355717",
	["lucide-glass-water"] = "rbxassetid://73852985217447",
	["lucide-gitlab"] = "rbxassetid://74847303617405",
	["lucide-glasses"] = "rbxassetid://138327635108330",
	["lucide-globe-lock"] = "rbxassetid://124777534934695",
	["lucide-globe"] = "rbxassetid://121892495315737",
	["lucide-goal"] = "rbxassetid://139525313616846",
	["lucide-gpu"] = "rbxassetid://86310200329550",
	["lucide-graduation-cap"] = "rbxassetid://108143073004000",
	["lucide-grape"] = "rbxassetid://94212913547728",
	["lucide-grid-2x2-check"] = "rbxassetid://107778683629728",
	["lucide-grid-2x2-plus"] = "rbxassetid://93494065607655",
	["lucide-grid-2x2-x"] = "rbxassetid://116918270075168",
	["lucide-grid-2x2"] = "rbxassetid://74972285132812",
	["lucide-grid-3x2"] = "rbxassetid://127237607313372",
	["lucide-grid-3x3"] = "rbxassetid://130624828845334",
	["lucide-grip-horizontal"] = "rbxassetid://107452070161871",
	["lucide-grip-vertical"] = "rbxassetid://111342175169212",
	["lucide-grip"] = "rbxassetid://98224060867469",
	["lucide-group"] = "rbxassetid://100115796502836",
	["lucide-guitar"] = "rbxassetid://70634289338498",
	["lucide-ham"] = "rbxassetid://103218847878805",
	["lucide-hammer"] = "rbxassetid://129162084211991",
	["lucide-hamburger"] = "rbxassetid://117800720477645",
	["lucide-hand-coins"] = "rbxassetid://137135612943122",
	["lucide-hand-grab"] = "rbxassetid://124852578247982",
	["lucide-hand-fist"] = "rbxassetid://92264285937687",
	["lucide-hand-heart"] = "rbxassetid://107922963485284",
	["lucide-hand-helping"] = "rbxassetid://105776129286384",
	["lucide-hand-metal"] = "rbxassetid://110306157796579",
	["lucide-hand-platter"] = "rbxassetid://77025962869908",
	["lucide-hand"] = "rbxassetid://138061943524463",
	["lucide-handbag"] = "rbxassetid://126458080699645",
	["lucide-hard-drive-download"] = "rbxassetid://101148109842994",
	["lucide-handshake"] = "rbxassetid://125245507632077",
	["lucide-hard-drive-upload"] = "rbxassetid://136949962752918",
	["lucide-hard-drive"] = "rbxassetid://105496479593334",
	["lucide-hard-hat"] = "rbxassetid://107921625644712",
	["lucide-hash"] = "rbxassetid://138551571043823",
	["lucide-hat-glasses"] = "rbxassetid://106151343087559",
	["lucide-haze"] = "rbxassetid://77593629089346",
	["lucide-hdmi-port"] = "rbxassetid://72909074290661",
	["lucide-heading-1"] = "rbxassetid://108366837595310",
	["lucide-heading-2"] = "rbxassetid://108399864495071",
	["lucide-heading-3"] = "rbxassetid://93187427004275",
	["lucide-heading-4"] = "rbxassetid://87490226969795",
	["lucide-heading-5"] = "rbxassetid://100474818435383",
	["lucide-heading-6"] = "rbxassetid://86348102132031",
	["lucide-heading"] = "rbxassetid://100225229640075",
	["lucide-headphone-off"] = "rbxassetid://135565162427522",
	["lucide-headphones"] = "rbxassetid://130980031990503",
	["lucide-headset"] = "rbxassetid://94421619082158",
	["lucide-heart-crack"] = "rbxassetid://97910916371765",
	["lucide-heart-handshake"] = "rbxassetid://83992765024844",
	["lucide-heart-minus"] = "rbxassetid://106522754548211",
	["lucide-heart-off"] = "rbxassetid://84018392298422",
	["lucide-heart-plus"] = "rbxassetid://140560450564568",
	["lucide-heart"] = "rbxassetid://116548733348165",
	["lucide-helicopter"] = "rbxassetid://80026702359428",
	["lucide-hexagon"] = "rbxassetid://77153485156642",
	["lucide-heart-pulse"] = "rbxassetid://125140331309496",
	["lucide-highlighter"] = "rbxassetid://100662309160112",
	["lucide-history"] = "rbxassetid://78323145134041",
	["lucide-hop-off"] = "rbxassetid://99626935397106",
	["lucide-hop"] = "rbxassetid://99595753034903",
	["lucide-hospital"] = "rbxassetid://89780900885543",
	["lucide-hotel"] = "rbxassetid://129456013028421",
	["lucide-hourglass"] = "rbxassetid://107428588046119",
	["lucide-house-heart"] = "rbxassetid://136128528520278",
	["lucide-house-plug"] = "rbxassetid://106231180268417",
	["lucide-heater"] = "rbxassetid://71620219616184",
	["lucide-house-plus"] = "rbxassetid://117387354681806",
	["lucide-house-wifi"] = "rbxassetid://133543673676580",
	["lucide-house"] = "rbxassetid://117158858229715",
	["lucide-ice-cream-bowl"] = "rbxassetid://116430452211676",
	["lucide-ice-cream-cone"] = "rbxassetid://121476220426559",
	["lucide-id-card-lanyard"] = "rbxassetid://84192683486474",
	["lucide-image-down"] = "rbxassetid://103895009628951",
	["lucide-id-card"] = "rbxassetid://123429919193564",
	["lucide-image-minus"] = "rbxassetid://115615448533062",
	["lucide-image-off"] = "rbxassetid://81334185205824",
	["lucide-image-play"] = "rbxassetid://98187451863926",
	["lucide-image-plus"] = "rbxassetid://119072611707161",
	["lucide-image-up"] = "rbxassetid://125952357146523",
	["lucide-image-upscale"] = "rbxassetid://140597686328401",
	["lucide-image"] = "rbxassetid://104728449791983",
	["lucide-images"] = "rbxassetid://96196781495845",
	["lucide-import"] = "rbxassetid://129043146935452",
	["lucide-inbox"] = "rbxassetid://119132055764026",
	["lucide-indian-rupee"] = "rbxassetid://75170758596788",
	["lucide-infinity"] = "rbxassetid://72806696637649",
	["lucide-info"] = "rbxassetid://88068430669656",
	["lucide-inspection-panel"] = "rbxassetid://137247676785488",
	["lucide-iteration-ccw"] = "rbxassetid://73772216441614",
	["lucide-instagram"] = "rbxassetid://133619240052748",
	["lucide-japanese-yen"] = "rbxassetid://87809669933668",
	["lucide-iteration-cw"] = "rbxassetid://102769450820257",
	["lucide-italic"] = "rbxassetid://79356424569147",
	["lucide-kanban"] = "rbxassetid://106685923834692",
	["lucide-joystick"] = "rbxassetid://107172845243539",
	["lucide-kayak"] = "rbxassetid://126957119651542",
	["lucide-key-round"] = "rbxassetid://71121298158320",
	["lucide-key-square"] = "rbxassetid://120013278174541",
	["lucide-key"] = "rbxassetid://136504216693355",
	["lucide-keyboard-music"] = "rbxassetid://134292800800399",
	["lucide-keyboard-off"] = "rbxassetid://83190375371761",
	["lucide-keyboard"] = "rbxassetid://77247338408610",
	["lucide-lamp-ceiling"] = "rbxassetid://73422649706087",
	["lucide-lamp-desk"] = "rbxassetid://123046250917145",
	["lucide-lamp-floor"] = "rbxassetid://140111294843982",
	["lucide-lamp-wall-down"] = "rbxassetid://133914995491360",
	["lucide-lamp-wall-up"] = "rbxassetid://123858651364894",
	["lucide-lamp"] = "rbxassetid://102144334060895",
	["lucide-land-plot"] = "rbxassetid://83920406156963",
	["lucide-languages"] = "rbxassetid://96791960375235",
	["lucide-landmark"] = "rbxassetid://117708186520366",
	["lucide-laptop-minimal-check"] = "rbxassetid://102433170114071",
	["lucide-laptop-minimal"] = "rbxassetid://78632367101590",
	["lucide-laptop"] = "rbxassetid://76559677350820",
	["lucide-lasso-select"] = "rbxassetid://84736713428476",
	["lucide-lasso"] = "rbxassetid://114131172927866",
	["lucide-laugh"] = "rbxassetid://134622393946154",
	["lucide-layers-2"] = "rbxassetid://116144650165277",
	["lucide-layers"] = "rbxassetid://129313475515456",
	["lucide-layout-dashboard"] = "rbxassetid://85565639978932",
	["lucide-layout-grid"] = "rbxassetid://119103903159248",
	["lucide-layout-list"] = "rbxassetid://81899347699850",
	["lucide-layout-panel-left"] = "rbxassetid://74332229491684",
	["lucide-layout-panel-top"] = "rbxassetid://136612509327033",
	["lucide-layout-template"] = "rbxassetid://102401436212569",
	["lucide-leaf"] = "rbxassetid://118236369495965",
	["lucide-leafy-green"] = "rbxassetid://72618576349476",
	["lucide-lectern"] = "rbxassetid://131890588380254",
	["lucide-library-big"] = "rbxassetid://129065535946415",
	["lucide-library"] = "rbxassetid://119154800743972",
	["lucide-life-buoy"] = "rbxassetid://72179775264820",
	["lucide-ligature"] = "rbxassetid://82539978143925",
	["lucide-lightbulb-off"] = "rbxassetid://117986652001052",
	["lucide-line-squiggle"] = "rbxassetid://80131863470506",
	["lucide-lightbulb"] = "rbxassetid://137831108095518",
	["lucide-link-2-off"] = "rbxassetid://115547392134183",
	["lucide-link-2"] = "rbxassetid://78096404862526",
	["lucide-link"] = "rbxassetid://94869749114315",
	["lucide-linkedin"] = "rbxassetid://82447398060669",
	["lucide-list-check"] = "rbxassetid://133323763781799",
	["lucide-list-checks"] = "rbxassetid://110535231838184",
	["lucide-list-chevrons-up-down"] = "rbxassetid://116491324644612",
	["lucide-list-chevrons-down-up"] = "rbxassetid://125986889234147",
	["lucide-list-collapse"] = "rbxassetid://84084117411967",
	["lucide-list-end"] = "rbxassetid://115742538988344",
	["lucide-list-filter-plus"] = "rbxassetid://131373357759520",
	["lucide-list-filter"] = "rbxassetid://131678371413521",
	["lucide-list-indent-increase"] = "rbxassetid://71190512441232",
	["lucide-list-indent-decrease"] = "rbxassetid://91718966727755",
	["lucide-list-minus"] = "rbxassetid://139486752443311",
	["lucide-list-music"] = "rbxassetid://107269645613734",
	["lucide-list-ordered"] = "rbxassetid://76961664030330",
	["lucide-list-plus"] = "rbxassetid://134041752185482",
	["lucide-list-start"] = "rbxassetid://104083889285543",
	["lucide-list-todo"] = "rbxassetid://76548760686802",
	["lucide-list-tree"] = "rbxassetid://110021838422331",
	["lucide-list-restart"] = "rbxassetid://118007916922156",
	["lucide-list-video"] = "rbxassetid://126776596723007",
	["lucide-list-x"] = "rbxassetid://116967934200594",
	["lucide-list"] = "rbxassetid://101979889191306",
	["lucide-loader-circle"] = "rbxassetid://92630967969808",
	["lucide-loader"] = "rbxassetid://135387269563108",
	["lucide-loader-pinwheel"] = "rbxassetid://96229486477236",
	["lucide-locate-fixed"] = "rbxassetid://92665266803055",
	["lucide-locate-off"] = "rbxassetid://132116489352952",
	["lucide-locate"] = "rbxassetid://114038997508013",
	["lucide-lock-keyhole-open"] = "rbxassetid://121620135081253",
	["lucide-lock-keyhole"] = "rbxassetid://93479983696082",
	["lucide-lock-open"] = "rbxassetid://136955323515981",
	["lucide-log-in"] = "rbxassetid://80731799029478",
	["lucide-lock"] = "rbxassetid://90921773104239",
	["lucide-log-out"] = "rbxassetid://87452029891656",
	["lucide-logs"] = "rbxassetid://115342957193649",
	["lucide-lollipop"] = "rbxassetid://96086436728073",
	["lucide-luggage"] = "rbxassetid://102475073472771",
	["lucide-magnet"] = "rbxassetid://115800338178361",
	["lucide-mail-check"] = "rbxassetid://130866366241101",
	["lucide-mail-minus"] = "rbxassetid://90357440084572",
	["lucide-mail-open"] = "rbxassetid://120912370020238",
	["lucide-mail-plus"] = "rbxassetid://105453437540305",
	["lucide-mail-search"] = "rbxassetid://138611539125594",
	["lucide-mail-warning"] = "rbxassetid://108324270986237",
	["lucide-mail-x"] = "rbxassetid://131567019093955",
	["lucide-mail"] = "rbxassetid://102210422931497",
	["lucide-mail-question-mark"] = "rbxassetid://83635124879033",
	["lucide-mailbox"] = "rbxassetid://136502315559793",
	["lucide-map-minus"] = "rbxassetid://79548303981195",
	["lucide-mails"] = "rbxassetid://95259554750782",
	["lucide-map-pin-check-inside"] = "rbxassetid://118855942766023",
	["lucide-map-pin-check"] = "rbxassetid://75463730278213",
	["lucide-map-pin-house"] = "rbxassetid://136620156501660",
	["lucide-map-pin-minus-inside"] = "rbxassetid://138025408823855",
	["lucide-map-pin-minus"] = "rbxassetid://115682143831777",
	["lucide-map-pin-off"] = "rbxassetid://122175289904916",
	["lucide-map-pin-plus-inside"] = "rbxassetid://110959469718100",
	["lucide-map-pin-pen"] = "rbxassetid://140426111268524",
	["lucide-map-pin-plus"] = "rbxassetid://104618035407972",
	["lucide-map-pin-x-inside"] = "rbxassetid://118077224812868",
	["lucide-map-pin-x"] = "rbxassetid://130231979784395",
	["lucide-map-pin"] = "rbxassetid://111215190487808",
	["lucide-map-pinned"] = "rbxassetid://83372619239425",
	["lucide-map"] = "rbxassetid://77244185329274",
	["lucide-map-plus"] = "rbxassetid://81706013346909",
	["lucide-mars-stroke"] = "rbxassetid://75636090662077",
	["lucide-mars"] = "rbxassetid://130238707430444",
	["lucide-martini"] = "rbxassetid://111385959473534",
	["lucide-maximize-2"] = "rbxassetid://84017481744159",
	["lucide-maximize"] = "rbxassetid://106863270920996",
	["lucide-medal"] = "rbxassetid://118342639273903",
	["lucide-megaphone-off"] = "rbxassetid://98137888897576",
	["lucide-megaphone"] = "rbxassetid://140438880308430",
	["lucide-meh"] = "rbxassetid://71376399314302",
	["lucide-memory-stick"] = "rbxassetid://106240521273005",
	["lucide-menu"] = "rbxassetid://97830048654884",
	["lucide-merge"] = "rbxassetid://105469716392923",
	["lucide-message-circle-code"] = "rbxassetid://87064808045859",
	["lucide-message-circle-dashed"] = "rbxassetid://120007143767284",
	["lucide-message-circle-more"] = "rbxassetid://78585034415216",
	["lucide-message-circle-off"] = "rbxassetid://105171695148515",
	["lucide-message-circle-heart"] = "rbxassetid://123298805854963",
	["lucide-message-circle-plus"] = "rbxassetid://112808826830629",
	["lucide-message-circle-question-mark"] = "rbxassetid://120498335753248",
	["lucide-message-circle-reply"] = "rbxassetid://123994602133920",
	["lucide-message-circle-warning"] = "rbxassetid://88791055333891",
	["lucide-message-square-code"] = "rbxassetid://127578766801912",
	["lucide-message-square-dashed"] = "rbxassetid://97339682672545",
	["lucide-message-circle"] = "rbxassetid://87724350439979",
	["lucide-message-square-diff"] = "rbxassetid://104853535561407",
	["lucide-message-circle-x"] = "rbxassetid://109185323471410",
	["lucide-message-square-dot"] = "rbxassetid://115155407038598",
	["lucide-message-square-lock"] = "rbxassetid://74043521317438",
	["lucide-message-square-heart"] = "rbxassetid://124866570858282",
	["lucide-message-square-off"] = "rbxassetid://103392259390261",
	["lucide-message-square-more"] = "rbxassetid://74100750389312",
	["lucide-message-square-plus"] = "rbxassetid://73461125274422",
	["lucide-message-square-quote"] = "rbxassetid://99789701045701",
	["lucide-message-square-reply"] = "rbxassetid://124431495504076",
	["lucide-message-square-share"] = "rbxassetid://75022422761144",
	["lucide-message-square-text"] = "rbxassetid://98558503107273",
	["lucide-message-square-warning"] = "rbxassetid://114233969982788",
	["lucide-message-square-x"] = "rbxassetid://114480131577614",
	["lucide-messages-square"] = "rbxassetid://88487722728357",
	["lucide-message-square"] = "rbxassetid://103004885271396",
	["lucide-mic-off"] = "rbxassetid://130636196289557",
	["lucide-mic-vocal"] = "rbxassetid://85452517674120",
	["lucide-mic"] = "rbxassetid://113829618217637",
	["lucide-microchip"] = "rbxassetid://113884581061578",
	["lucide-microscope"] = "rbxassetid://105131306622747",
	["lucide-microwave"] = "rbxassetid://118058013794656",
	["lucide-milk-off"] = "rbxassetid://127828908535164",
	["lucide-milestone"] = "rbxassetid://101221463054316",
	["lucide-minimize-2"] = "rbxassetid://73226205274756",
	["lucide-minimize"] = "rbxassetid://87451643914409",
	["lucide-milk"] = "rbxassetid://75221608717275",
	["lucide-minus"] = "rbxassetid://104589564683158",
	["lucide-monitor-check"] = "rbxassetid://79895590653224",
	["lucide-monitor-cloud"] = "rbxassetid://103436009465276",
	["lucide-monitor-cog"] = "rbxassetid://83533301821185",
	["lucide-monitor-dot"] = "rbxassetid://130058782649938",
	["lucide-monitor-down"] = "rbxassetid://92405649947808",
	["lucide-monitor-off"] = "rbxassetid://86849782824176",
	["lucide-monitor-pause"] = "rbxassetid://70451209237229",
	["lucide-monitor-play"] = "rbxassetid://77299203844191",
	["lucide-monitor-smartphone"] = "rbxassetid://136330942918429",
	["lucide-monitor-speaker"] = "rbxassetid://132422868586647",
	["lucide-monitor-up"] = "rbxassetid://131473896147720",
	["lucide-monitor-stop"] = "rbxassetid://95146484920513",
	["lucide-monitor"] = "rbxassetid://139353277780920",
	["lucide-monitor-x"] = "rbxassetid://139256949689830",
	["lucide-moon"] = "rbxassetid://114821576742195",
	["lucide-moon-star"] = "rbxassetid://86009289158283",
	["lucide-motorbike"] = "rbxassetid://124472585034102",
	["lucide-mountain-snow"] = "rbxassetid://118586013024411",
	["lucide-mountain"] = "rbxassetid://112090145410019",
	["lucide-mouse-off"] = "rbxassetid://111776590515670",
	["lucide-mouse-pointer-2-off"] = "rbxassetid://93737676023776",
	["lucide-mouse-pointer-2"] = "rbxassetid://94380218532701",
	["lucide-mouse-pointer-ban"] = "rbxassetid://132810447109064",
	["lucide-mouse-pointer-click"] = "rbxassetid://100974925049833",
	["lucide-mouse-pointer"] = "rbxassetid://101670551854156",
	["lucide-move-3d"] = "rbxassetid://136916458255997",
	["lucide-mouse"] = "rbxassetid://86593802299475",
	["lucide-move-diagonal-2"] = "rbxassetid://113910105805300",
	["lucide-move-down-left"] = "rbxassetid://109903174474640",
	["lucide-move-diagonal"] = "rbxassetid://132396580711279",
	["lucide-move-down-right"] = "rbxassetid://74529237705395",
	["lucide-move-down"] = "rbxassetid://107144619813971",
	["lucide-move-horizontal"] = "rbxassetid://115560592546233",
	["lucide-move-left"] = "rbxassetid://80545322525492",
	["lucide-move-right"] = "rbxassetid://131278988329492",
	["lucide-move-up-left"] = "rbxassetid://95325907649986",
	["lucide-move-up"] = "rbxassetid://136239030275514",
	["lucide-move-up-right"] = "rbxassetid://135754994001652",
	["lucide-move-vertical"] = "rbxassetid://95753406408439",
	["lucide-move"] = "rbxassetid://118949779309780",
	["lucide-music-2"] = "rbxassetid://124912153067390",
	["lucide-music-3"] = "rbxassetid://135975429715794",
	["lucide-music"] = "rbxassetid://121735471098353",
	["lucide-navigation-2-off"] = "rbxassetid://79358410038434",
	["lucide-navigation-2"] = "rbxassetid://135794129207799",
	["lucide-music-4"] = "rbxassetid://86415335147670",
	["lucide-navigation-off"] = "rbxassetid://98161080839193",
	["lucide-network"] = "rbxassetid://124786341443739",
	["lucide-newspaper"] = "rbxassetid://124862294983379",
	["lucide-nfc"] = "rbxassetid://138712621054579",
	["lucide-navigation"] = "rbxassetid://121792465392585",
	["lucide-non-binary"] = "rbxassetid://75354421731746",
	["lucide-notebook-pen"] = "rbxassetid://133062962478390",
	["lucide-notebook-tabs"] = "rbxassetid://115564390577716",
	["lucide-notebook-text"] = "rbxassetid://134088135763596",
	["lucide-notebook"] = "rbxassetid://126255905540075",
	["lucide-notepad-text-dashed"] = "rbxassetid://73126859884821",
	["lucide-notepad-text"] = "rbxassetid://91911619971147",
	["lucide-nut-off"] = "rbxassetid://100784148710505",
	["lucide-nut"] = "rbxassetid://131703004915852",
	["lucide-octagon-alert"] = "rbxassetid://136499554527588",
	["lucide-octagon-pause"] = "rbxassetid://98781271756246",
	["lucide-octagon-x"] = "rbxassetid://78831958052419",
	["lucide-octagon"] = "rbxassetid://136544294572577",
	["lucide-octagon-minus"] = "rbxassetid://130368971764103",
	["lucide-omega"] = "rbxassetid://71963171494289",
	["lucide-origami"] = "rbxassetid://122921120807855",
	["lucide-orbit"] = "rbxassetid://85243485505722",
	["lucide-package-2"] = "rbxassetid://72763311044692",
	["lucide-option"] = "rbxassetid://89689942785813",
	["lucide-package-open"] = "rbxassetid://104777964816713",
	["lucide-package-minus"] = "rbxassetid://111488655185859",
	["lucide-package-check"] = "rbxassetid://108722801845888",
	["lucide-package-plus"] = "rbxassetid://86505458342241",
	["lucide-package-search"] = "rbxassetid://90506724414429",
	["lucide-package-x"] = "rbxassetid://98384048231969",
	["lucide-package"] = "rbxassetid://122372419510477",
	["lucide-paintbrush-vertical"] = "rbxassetid://119919088195374",
	["lucide-paint-bucket"] = "rbxassetid://103570577531565",
	["lucide-paintbrush"] = "rbxassetid://75935012051533",
	["lucide-paint-roller"] = "rbxassetid://97134283403504",
	["lucide-palette"] = "rbxassetid://74054293084301",
	["lucide-panda"] = "rbxassetid://88610893340444",
	["lucide-panel-bottom-close"] = "rbxassetid://73284675013407",
	["lucide-panel-bottom-dashed"] = "rbxassetid://114492361603553",
	["lucide-panel-left-close"] = "rbxassetid://117070029525699",
	["lucide-panel-bottom-open"] = "rbxassetid://97397234433778",
	["lucide-panel-bottom"] = "rbxassetid://110021301688704",
	["lucide-panel-left-open"] = "rbxassetid://96678557411248",
	["lucide-panel-left-right-dashed"] = "rbxassetid://90595885833553",
	["lucide-panel-left"] = "rbxassetid://102723108416008",
	["lucide-panel-right-close"] = "rbxassetid://86731946227423",
	["lucide-panel-right-open"] = "rbxassetid://110977219495295",
	["lucide-panel-right-dashed"] = "rbxassetid://137643530050459",
	["lucide-panel-right"] = "rbxassetid://74602496003700",
	["lucide-panel-top-bottom-dashed"] = "rbxassetid://117786090845649",
	["lucide-panel-top-close"] = "rbxassetid://87210445949859",
	["lucide-panel-top-dashed"] = "rbxassetid://121589066591901",
	["lucide-panel-top-open"] = "rbxassetid://99893228311049",
	["lucide-panel-top"] = "rbxassetid://102271099347923",
	["lucide-panels-left-bottom"] = "rbxassetid://138265563184579",
	["lucide-panels-right-bottom"] = "rbxassetid://76948986785063",
	["lucide-panels-top-left"] = "rbxassetid://76084228366793",
	["lucide-panel-left-dashed"] = "rbxassetid://98002654816384",
	["lucide-parking-meter"] = "rbxassetid://78386671113020",
	["lucide-parentheses"] = "rbxassetid://130294727580309",
	["lucide-paperclip"] = "rbxassetid://136520131296164",
	["lucide-pause"] = "rbxassetid://135513904768640",
	["lucide-paw-print"] = "rbxassetid://132551318749155",
	["lucide-party-popper"] = "rbxassetid://104696324409492",
	["lucide-pc-case"] = "rbxassetid://72338632594869",
	["lucide-pen-line"] = "rbxassetid://79207750112559",
	["lucide-pen"] = "rbxassetid://108132003351690",
	["lucide-pen-tool"] = "rbxassetid://118752548699308",
	["lucide-pen-off"] = "rbxassetid://126506632784090",
	["lucide-pencil-off"] = "rbxassetid://122680978487316",
	["lucide-pencil-ruler"] = "rbxassetid://134708462236812",
	["lucide-pencil"] = "rbxassetid://128681444833298",
	["lucide-pentagon"] = "rbxassetid://124288658991504",
	["lucide-pencil-line"] = "rbxassetid://76780160546129",
	["lucide-person-standing"] = "rbxassetid://79071083762909",
	["lucide-philippine-peso"] = "rbxassetid://136024924825071",
	["lucide-percent"] = "rbxassetid://92322872773463",
	["lucide-phone-call"] = "rbxassetid://130029094319460",
	["lucide-phone-incoming"] = "rbxassetid://92323292229716",
	["lucide-phone-missed"] = "rbxassetid://84934792448995",
	["lucide-phone-off"] = "rbxassetid://82713668933334",
	["lucide-phone-forwarded"] = "rbxassetid://81644719426306",
	["lucide-phone"] = "rbxassetid://88795801994591",
	["lucide-phone-outgoing"] = "rbxassetid://80483489270012",
	["lucide-pi"] = "rbxassetid://88826660835267",
	["lucide-piano"] = "rbxassetid://104768610992067",
	["lucide-pickaxe"] = "rbxassetid://106477259189320",
	["lucide-picture-in-picture-2"] = "rbxassetid://140011529979167",
	["lucide-picture-in-picture"] = "rbxassetid://78771030814366",
	["lucide-piggy-bank"] = "rbxassetid://119782782846245",
	["lucide-pilcrow-left"] = "rbxassetid://93819104639121",
	["lucide-pilcrow-right"] = "rbxassetid://105016372949848",
	["lucide-pilcrow"] = "rbxassetid://135220007830017",
	["lucide-pill-bottle"] = "rbxassetid://111777180996851",
	["lucide-pill"] = "rbxassetid://112378084142171",
	["lucide-pin-off"] = "rbxassetid://117093995106477",
	["lucide-pin"] = "rbxassetid://79993056003648",
	["lucide-pipette"] = "rbxassetid://102027497504842",
	["lucide-plane-landing"] = "rbxassetid://136071263309262",
	["lucide-plane-takeoff"] = "rbxassetid://119652661623788",
	["lucide-pizza"] = "rbxassetid://139869394551363",
	["lucide-plane"] = "rbxassetid://128234826267374",
	["lucide-play"] = "rbxassetid://71128824073086",
	["lucide-plug-2"] = "rbxassetid://78974653313877",
	["lucide-plug"] = "rbxassetid://88904922802858",
	["lucide-plus"] = "rbxassetid://75233805311004",
	["lucide-pocket-knife"] = "rbxassetid://92514589576221",
	["lucide-pocket"] = "rbxassetid://99282467067071",
	["lucide-plug-zap"] = "rbxassetid://118214863811873",
	["lucide-podcast"] = "rbxassetid://70427336185824",
	["lucide-pointer-off"] = "rbxassetid://98643391791340",
	["lucide-pointer"] = "rbxassetid://76371100850914",
	["lucide-popcorn"] = "rbxassetid://100891489333645",
	["lucide-popsicle"] = "rbxassetid://79937060342363",
	["lucide-pound-sterling"] = "rbxassetid://92307367709333",
	["lucide-power"] = "rbxassetid://116019387019283",
	["lucide-power-off"] = "rbxassetid://134906220166355",
	["lucide-presentation"] = "rbxassetid://93292385196782",
	["lucide-printer-check"] = "rbxassetid://124221840975232",
	["lucide-printer"] = "rbxassetid://91501117575989",
	["lucide-projector"] = "rbxassetid://100820227428181",
	["lucide-proportions"] = "rbxassetid://80079739485337",
	["lucide-pyramid"] = "rbxassetid://73997319071288",
	["lucide-puzzle"] = "rbxassetid://137712773156741",
	["lucide-qr-code"] = "rbxassetid://88778289816383",
	["lucide-quote"] = "rbxassetid://125778393758705",
	["lucide-rabbit"] = "rbxassetid://107924029731870",
	["lucide-radar"] = "rbxassetid://85516936572279",
	["lucide-radical"] = "rbxassetid://103771445404955",
	["lucide-radiation"] = "rbxassetid://122393434351904",
	["lucide-radio-receiver"] = "rbxassetid://87012857291080",
	["lucide-radio"] = "rbxassetid://96540597021578",
	["lucide-radio-tower"] = "rbxassetid://112644587643078",
	["lucide-radius"] = "rbxassetid://75933157953988",
	["lucide-rail-symbol"] = "rbxassetid://107744548277124",
	["lucide-rainbow"] = "rbxassetid://98877879692251",
	["lucide-rat"] = "rbxassetid://85204187886671",
	["lucide-ratio"] = "rbxassetid://114690865457229",
	["lucide-receipt-cent"] = "rbxassetid://75887317556001",
	["lucide-receipt-indian-rupee"] = "rbxassetid://73989996512185",
	["lucide-receipt-euro"] = "rbxassetid://124720883690153",
	["lucide-receipt-japanese-yen"] = "rbxassetid://140284274607046",
	["lucide-receipt-pound-sterling"] = "rbxassetid://73919748127578",
	["lucide-receipt-russian-ruble"] = "rbxassetid://91232975416657",
	["lucide-receipt-swiss-franc"] = "rbxassetid://94699297534923",
	["lucide-receipt-text"] = "rbxassetid://139174223200610",
	["lucide-receipt-turkish-lira"] = "rbxassetid://114032403602770",
	["lucide-receipt"] = "rbxassetid://85337922519679",
	["lucide-rectangle-circle"] = "rbxassetid://133076048892874",
	["lucide-rectangle-ellipsis"] = "rbxassetid://77019937342882",
	["lucide-rectangle-goggles"] = "rbxassetid://99521469654830",
	["lucide-rectangle-horizontal"] = "rbxassetid://70750730929777",
	["lucide-rectangle-vertical"] = "rbxassetid://89190528967757",
	["lucide-recycle"] = "rbxassetid://115665057166963",
	["lucide-redo-2"] = "rbxassetid://71651974526455",
	["lucide-redo-dot"] = "rbxassetid://116365842250701",
	["lucide-redo"] = "rbxassetid://93928516180926",
	["lucide-refresh-ccw-dot"] = "rbxassetid://94309554761997",
	["lucide-refresh-ccw"] = "rbxassetid://72522507799666",
	["lucide-refrigerator"] = "rbxassetid://84727184083995",
	["lucide-refresh-cw"] = "rbxassetid://113439063293937",
	["lucide-refresh-cw-off"] = "rbxassetid://119525641640082",
	["lucide-regex"] = "rbxassetid://103803468407262",
	["lucide-remove-formatting"] = "rbxassetid://89578946912066",
	["lucide-repeat-1"] = "rbxassetid://88991549510352",
	["lucide-repeat-2"] = "rbxassetid://73881787850755",
	["lucide-repeat"] = "rbxassetid://80969231189660",
	["lucide-replace-all"] = "rbxassetid://122535922581628",
	["lucide-reply-all"] = "rbxassetid://84987507334398",
	["lucide-replace"] = "rbxassetid://75814507796370",
	["lucide-reply"] = "rbxassetid://108388454668509",
	["lucide-rewind"] = "rbxassetid://83281479437771",
	["lucide-ribbon"] = "rbxassetid://89420089684387",
	["lucide-rocket"] = "rbxassetid://131788466321954",
	["lucide-rocking-chair"] = "rbxassetid://137226760912391",
	["lucide-rose"] = "rbxassetid://92966935256408",
	["lucide-roller-coaster"] = "rbxassetid://87531906222362",
	["lucide-rotate-3d"] = "rbxassetid://107753252955247",
	["lucide-rotate-ccw-key"] = "rbxassetid://124547655089619",
	["lucide-rotate-ccw-square"] = "rbxassetid://87327058509015",
	["lucide-rotate-ccw"] = "rbxassetid://101095599141126",
	["lucide-rotate-cw-square"] = "rbxassetid://132762140856972",
	["lucide-rotate-cw"] = "rbxassetid://100235881273355",
	["lucide-router"] = "rbxassetid://113510588602895",
	["lucide-route-off"] = "rbxassetid://131664016749121",
	["lucide-route"] = "rbxassetid://85559969651576",
	["lucide-rows-2"] = "rbxassetid://113562699653253",
	["lucide-rows-3"] = "rbxassetid://120332056704542",
	["lucide-rows-4"] = "rbxassetid://128933363625820",
	["lucide-rss"] = "rbxassetid://80649234465619",
	["lucide-ruler-dimension-line"] = "rbxassetid://78145988801476",
	["lucide-ruler"] = "rbxassetid://130027725508939",
	["lucide-sailboat"] = "rbxassetid://83683803317575",
	["lucide-russian-ruble"] = "rbxassetid://106072219675786",
	["lucide-sandwich"] = "rbxassetid://140292983569448",
	["lucide-salad"] = "rbxassetid://116091784915518",
	["lucide-satellite-dish"] = "rbxassetid://96177411240810",
	["lucide-satellite"] = "rbxassetid://77948711641962",
	["lucide-saudi-riyal"] = "rbxassetid://73465796556265",
	["lucide-save-all"] = "rbxassetid://129297987134404",
	["lucide-save-off"] = "rbxassetid://110896442853119",
	["lucide-save"] = "rbxassetid://105897098129184",
	["lucide-scale"] = "rbxassetid://78905247749838",
	["lucide-scale-3d"] = "rbxassetid://125497725117093",
	["lucide-scaling"] = "rbxassetid://96994034300108",
	["lucide-scan-barcode"] = "rbxassetid://73347823484851",
	["lucide-scan-eye"] = "rbxassetid://85302441084977",
	["lucide-scan-face"] = "rbxassetid://131586936133619",
	["lucide-scan-heart"] = "rbxassetid://94578578934099",
	["lucide-scan-line"] = "rbxassetid://71147185268435",
	["lucide-scan-search"] = "rbxassetid://107063460056091",
	["lucide-scan-qr-code"] = "rbxassetid://124392877969987",
	["lucide-scan-text"] = "rbxassetid://122179388652143",
	["lucide-scan"] = "rbxassetid://89218537518607",
	["lucide-school"] = "rbxassetid://70499927042660",
	["lucide-scissors-line-dashed"] = "rbxassetid://139522161251225",
	["lucide-scissors"] = "rbxassetid://127225501780663",
	["lucide-screen-share-off"] = "rbxassetid://112024126206141",
	["lucide-scroll-text"] = "rbxassetid://115816594733071",
	["lucide-screen-share"] = "rbxassetid://77476054564343",
	["lucide-scroll"] = "rbxassetid://87829447785627",
	["lucide-search-check"] = "rbxassetid://103334000418768",
	["lucide-search-code"] = "rbxassetid://107061802958601",
	["lucide-search-slash"] = "rbxassetid://117134211229124",
	["lucide-search"] = "rbxassetid://87773460790106",
	["lucide-search-x"] = "rbxassetid://115390690193877",
	["lucide-section"] = "rbxassetid://129318031718496",
	["lucide-send-horizontal"] = "rbxassetid://101299199046262",
	["lucide-send-to-back"] = "rbxassetid://91946303092254",
	["lucide-send"] = "rbxassetid://103227678696712",
	["lucide-separator-horizontal"] = "rbxassetid://83153412585635",
	["lucide-separator-vertical"] = "rbxassetid://89920753188449",
	["lucide-server-cog"] = "rbxassetid://90433595069435",
	["lucide-server-crash"] = "rbxassetid://82979483303823",
	["lucide-server-off"] = "rbxassetid://84983374225435",
	["lucide-server"] = "rbxassetid://118576905995405",
	["lucide-settings-2"] = "rbxassetid://78026012600197",
	["lucide-settings"] = "rbxassetid://78969686563882",
	["lucide-shapes"] = "rbxassetid://104199457318082",
	["lucide-share"] = "rbxassetid://71244133411900",
	["lucide-sheet"] = "rbxassetid://105018203702082",
	["lucide-shield-alert"] = "rbxassetid://83766235946011",
	["lucide-shell"] = "rbxassetid://74808424964483",
	["lucide-share-2"] = "rbxassetid://87914396702491",
	["lucide-shield-ban"] = "rbxassetid://107123141574787",
	["lucide-shield-check"] = "rbxassetid://104368293929283",
	["lucide-shield-ellipsis"] = "rbxassetid://88776952092891",
	["lucide-shield-minus"] = "rbxassetid://79543120092330",
	["lucide-shield-half"] = "rbxassetid://83220624861868",
	["lucide-shield-off"] = "rbxassetid://129035809248931",
	["lucide-shield-plus"] = "rbxassetid://82042477661228",
	["lucide-shield-question-mark"] = "rbxassetid://132519964651604",
	["lucide-shield-x"] = "rbxassetid://132237746795947",
	["lucide-shield-user"] = "rbxassetid://99843165596934",
	["lucide-shield"] = "rbxassetid://85396477857239",
	["lucide-ship-wheel"] = "rbxassetid://84033407514485",
	["lucide-ship"] = "rbxassetid://72375037563525",
	["lucide-shirt"] = "rbxassetid://107562094208033",
	["lucide-shopping-bag"] = "rbxassetid://126537311627645",
	["lucide-shovel"] = "rbxassetid://135187483599507",
	["lucide-shopping-basket"] = "rbxassetid://93759741286879",
	["lucide-shopping-cart"] = "rbxassetid://137304016272182",
	["lucide-shower-head"] = "rbxassetid://102655704410096",
	["lucide-shredder"] = "rbxassetid://91011927352410",
	["lucide-shrimp"] = "rbxassetid://72178430949754",
	["lucide-shrink"] = "rbxassetid://135757301572032",
	["lucide-shrub"] = "rbxassetid://105996642982844",
	["lucide-shuffle"] = "rbxassetid://119474657247324",
	["lucide-sigma"] = "rbxassetid://84632332859432",
	["lucide-signal-high"] = "rbxassetid://75386493947511",
	["lucide-signal-low"] = "rbxassetid://81021409006913",
	["lucide-signal-medium"] = "rbxassetid://121005469545532",
	["lucide-signal-zero"] = "rbxassetid://108153009041314",
	["lucide-signal"] = "rbxassetid://90685413345324",
	["lucide-signature"] = "rbxassetid://100862084654093",
	["lucide-signpost-big"] = "rbxassetid://112070272930379",
	["lucide-signpost"] = "rbxassetid://139408172805267",
	["lucide-siren"] = "rbxassetid://73212486961741",
	["lucide-skip-back"] = "rbxassetid://119198036213678",
	["lucide-skip-forward"] = "rbxassetid://125244517825680",
	["lucide-skull"] = "rbxassetid://77573759887203",
	["lucide-slack"] = "rbxassetid://127245457408509",
	["lucide-slash"] = "rbxassetid://98291711549338",
	["lucide-slice"] = "rbxassetid://72221382143123",
	["lucide-sliders-horizontal"] = "rbxassetid://108956055047682",
	["lucide-sliders-vertical"] = "rbxassetid://113868595081871",
	["lucide-smartphone-charging"] = "rbxassetid://93008390926008",
	["lucide-smartphone-nfc"] = "rbxassetid://79891244079734",
	["lucide-smartphone"] = "rbxassetid://101291940767279",
	["lucide-smile-plus"] = "rbxassetid://107339849810997",
	["lucide-smile"] = "rbxassetid://137761704777819",
	["lucide-snail"] = "rbxassetid://113498987138706",
	["lucide-snowflake"] = "rbxassetid://85686475568714",
	["lucide-soap-dispenser-droplet"] = "rbxassetid://70801280907574",
	["lucide-sofa"] = "rbxassetid://93406168462550",
	["lucide-solar-panel"] = "rbxassetid://80763909537842",
	["lucide-soup"] = "rbxassetid://120184724037658",
	["lucide-space"] = "rbxassetid://73594882947464",
	["lucide-spade"] = "rbxassetid://77338459579855",
	["lucide-sparkle"] = "rbxassetid://128840054863612",
	["lucide-sparkles"] = "rbxassetid://126437119963884",
	["lucide-speaker"] = "rbxassetid://88534016222141",
	["lucide-speech"] = "rbxassetid://99870374037472",
	["lucide-spell-check-2"] = "rbxassetid://135009332642597",
	["lucide-spell-check"] = "rbxassetid://90613896380250",
	["lucide-spline-pointer"] = "rbxassetid://87798935475023",
	["lucide-spline"] = "rbxassetid://75989831308167",
	["lucide-split"] = "rbxassetid://102240173978641",
	["lucide-spool"] = "rbxassetid://130318165820765",
	["lucide-spotlight"] = "rbxassetid://88335457473579",
	["lucide-spray-can"] = "rbxassetid://118623637967969",
	["lucide-sprout"] = "rbxassetid://127934599821694",
	["lucide-square-activity"] = "rbxassetid://77343432103780",
	["lucide-square-arrow-down-left"] = "rbxassetid://128882841263198",
	["lucide-square-arrow-down-right"] = "rbxassetid://121646359336676",
	["lucide-square-arrow-down"] = "rbxassetid://73895362698649",
	["lucide-square-arrow-left"] = "rbxassetid://135536084637118",
	["lucide-square-arrow-out-down-left"] = "rbxassetid://116028711241071",
	["lucide-square-arrow-out-down-right"] = "rbxassetid://89908422077315",
	["lucide-square-arrow-out-up-left"] = "rbxassetid://88084491602593",
	["lucide-square-arrow-out-up-right"] = "rbxassetid://76428700975595",
	["lucide-square-arrow-up-left"] = "rbxassetid://128870810619600",
	["lucide-square-arrow-up-right"] = "rbxassetid://114119578696704",
	["lucide-square-arrow-up"] = "rbxassetid://103734190367828",
	["lucide-square-asterisk"] = "rbxassetid://100644113924389",
	["lucide-square-arrow-right"] = "rbxassetid://71160338332426",
	["lucide-square-bottom-dashed-scissors"] = "rbxassetid://86059074427494",
	["lucide-square-chart-gantt"] = "rbxassetid://133774544536563",
	["lucide-square-check-big"] = "rbxassetid://90215010800954",
	["lucide-square-check"] = "rbxassetid://72633199492029",
	["lucide-square-chevron-down"] = "rbxassetid://96761990426374",
	["lucide-square-chevron-left"] = "rbxassetid://125332104115114",
	["lucide-square-chevron-right"] = "rbxassetid://115550970530608",
	["lucide-square-chevron-up"] = "rbxassetid://134343214185815",
	["lucide-square-dashed-bottom-code"] = "rbxassetid://96406385039434",
	["lucide-square-code"] = "rbxassetid://84183972073466",
	["lucide-square-dashed-bottom"] = "rbxassetid://127975598530174",
	["lucide-square-dashed-kanban"] = "rbxassetid://132318505319707",
	["lucide-square-dashed-mouse-pointer"] = "rbxassetid://112809486489040",
	["lucide-square-dashed-top-solid"] = "rbxassetid://123755801389199",
	["lucide-square-dashed"] = "rbxassetid://99084006927645",
	["lucide-square-divide"] = "rbxassetid://119247396998137",
	["lucide-square-equal"] = "rbxassetid://110347545439522",
	["lucide-square-function"] = "rbxassetid://70952744716838",
	["lucide-square-dot"] = "rbxassetid://138432453107615",
	["lucide-square-kanban"] = "rbxassetid://115572128864502",
	["lucide-square-library"] = "rbxassetid://85801068256635",
	["lucide-square-menu"] = "rbxassetid://82736655112279",
	["lucide-square-m"] = "rbxassetid://70435625084901",
	["lucide-square-minus"] = "rbxassetid://90379781579196",
	["lucide-square-parking"] = "rbxassetid://117256761239596",
	["lucide-square-mouse-pointer"] = "rbxassetid://116964284079569",
	["lucide-square-parking-off"] = "rbxassetid://85324044172091",
	["lucide-square-pause"] = "rbxassetid://116471856834832",
	["lucide-square-pen"] = "rbxassetid://127378512890782",
	["lucide-square-pi"] = "rbxassetid://134751514418506",
	["lucide-square-percent"] = "rbxassetid://136410823956661",
	["lucide-square-pilcrow"] = "rbxassetid://91941848089002",
	["lucide-square-play"] = "rbxassetid://84160763073727",
	["lucide-square-plus"] = "rbxassetid://121674592300105",
	["lucide-square-power"] = "rbxassetid://73776919289064",
	["lucide-square-radical"] = "rbxassetid://78427251625452",
	["lucide-square-round-corner"] = "rbxassetid://108303481153969",
	["lucide-square-scissors"] = "rbxassetid://117282369401047",
	["lucide-square-sigma"] = "rbxassetid://80124721167205",
	["lucide-square-slash"] = "rbxassetid://82906531943020",
	["lucide-square-split-horizontal"] = "rbxassetid://122046079262273",
	["lucide-square-split-vertical"] = "rbxassetid://84387613179489",
	["lucide-square-square"] = "rbxassetid://108906396828729",
	["lucide-square-stack"] = "rbxassetid://139805692512368",
	["lucide-square-star"] = "rbxassetid://105404945337605",
	["lucide-square-stop"] = "rbxassetid://113401039188802",
	["lucide-square-terminal"] = "rbxassetid://124407348708938",
	["lucide-square-user-round"] = "rbxassetid://134689923506315",
	["lucide-square-x"] = "rbxassetid://100995274570976",
	["lucide-square"] = "rbxassetid://100083523975161",
	["lucide-squares-exclude"] = "rbxassetid://116299821924243",
	["lucide-squares-intersect"] = "rbxassetid://106060022534961",
	["lucide-squares-subtract"] = "rbxassetid://99779230617579",
	["lucide-squares-unite"] = "rbxassetid://115226990407111",
	["lucide-square-user"] = "rbxassetid://71220376528705",
	["lucide-squircle-dashed"] = "rbxassetid://84876353045665",
	["lucide-squircle"] = "rbxassetid://99727143850471",
	["lucide-squirrel"] = "rbxassetid://96154475290601",
	["lucide-stamp"] = "rbxassetid://131862041640736",
	["lucide-star-half"] = "rbxassetid://114885266751435",
	["lucide-star-off"] = "rbxassetid://129927419904098",
	["lucide-star"] = "rbxassetid://138472016819607",
	["lucide-step-back"] = "rbxassetid://82198016885064",
	["lucide-step-forward"] = "rbxassetid://78128169561221",
	["lucide-stethoscope"] = "rbxassetid://133097907321954",
	["lucide-sticker"] = "rbxassetid://133878644046104",
	["lucide-sticky-note"] = "rbxassetid://84825610793394",
	["lucide-store"] = "rbxassetid://114109092613272",
	["lucide-stretch-horizontal"] = "rbxassetid://110639094168105",
	["lucide-stretch-vertical"] = "rbxassetid://77687299125223",
	["lucide-strikethrough"] = "rbxassetid://81834063789665",
	["lucide-subscript"] = "rbxassetid://78635685349190",
	["lucide-sun-dim"] = "rbxassetid://115132407887818",
	["lucide-sun-medium"] = "rbxassetid://85685421189424",
	["lucide-sun-moon"] = "rbxassetid://123998354034796",
	["lucide-sun-snow"] = "rbxassetid://101326819655480",
	["lucide-sun"] = "rbxassetid://122702753843672",
	["lucide-sunrise"] = "rbxassetid://104305108039542",
	["lucide-sunset"] = "rbxassetid://97546838540350",
	["lucide-superscript"] = "rbxassetid://88196232787474",
	["lucide-swiss-franc"] = "rbxassetid://92457377041953",
	["lucide-switch-camera"] = "rbxassetid://82483412011752",
	["lucide-sword"] = "rbxassetid://137759336314865",
	["lucide-swatch-book"] = "rbxassetid://100880381738403",
	["lucide-swords"] = "rbxassetid://93678586917184",
	["lucide-syringe"] = "rbxassetid://91452837778553",
	["lucide-table-2"] = "rbxassetid://119550965037579",
	["lucide-table-cells-merge"] = "rbxassetid://101295546072939",
	["lucide-table-cells-split"] = "rbxassetid://101546699198963",
	["lucide-table-columns-split"] = "rbxassetid://98130522842357",
	["lucide-table-of-contents"] = "rbxassetid://124075017766604",
	["lucide-table-properties"] = "rbxassetid://96481011896160",
	["lucide-table"] = "rbxassetid://96874492394332",
	["lucide-table-rows-split"] = "rbxassetid://123510754600607",
	["lucide-tablet-smartphone"] = "rbxassetid://101893214435696",
	["lucide-tablet"] = "rbxassetid://79711365524474",
	["lucide-tablets"] = "rbxassetid://80640579149604",
	["lucide-tag"] = "rbxassetid://86760445169142",
	["lucide-tags"] = "rbxassetid://117108855162841",
	["lucide-tally-1"] = "rbxassetid://104986417224831",
	["lucide-tally-2"] = "rbxassetid://104087559764939",
	["lucide-tally-3"] = "rbxassetid://107468906939750",
	["lucide-tally-4"] = "rbxassetid://103565365665146",
	["lucide-tally-5"] = "rbxassetid://89788650221744",
	["lucide-tangent"] = "rbxassetid://117433122688937",
	["lucide-target"] = "rbxassetid://110420827043048",
	["lucide-telescope"] = "rbxassetid://115116166309298",
	["lucide-tent"] = "rbxassetid://90958212648338",
	["lucide-tent-tree"] = "rbxassetid://73775828583688",
	["lucide-terminal"] = "rbxassetid://97374315863655",
	["lucide-test-tube-diagonal"] = "rbxassetid://85649956026368",
	["lucide-test-tubes"] = "rbxassetid://112870217768596",
	["lucide-text-align-center"] = "rbxassetid://131684392974793",
	["lucide-text-align-end"] = "rbxassetid://88824152645125",
	["lucide-test-tube"] = "rbxassetid://96247517588931",
	["lucide-text-align-start"] = "rbxassetid://125368952549429",
	["lucide-text-align-justify"] = "rbxassetid://128847420024946",
	["lucide-text-cursor-input"] = "rbxassetid://119081971768105",
	["lucide-text-cursor"] = "rbxassetid://103518397713606",
	["lucide-text-initial"] = "rbxassetid://85100268827690",
	["lucide-text-quote"] = "rbxassetid://121207029295158",
	["lucide-text-select"] = "rbxassetid://120724470218946",
	["lucide-theater"] = "rbxassetid://130504036256601",
	["lucide-text-wrap"] = "rbxassetid://75588925341713",
	["lucide-thermometer-snowflake"] = "rbxassetid://112009096262160",
	["lucide-thermometer-sun"] = "rbxassetid://125170926734633",
	["lucide-text-search"] = "rbxassetid://84185821853759",
	["lucide-thermometer"] = "rbxassetid://113977315513722",
	["lucide-thumbs-down"] = "rbxassetid://132770860391509",
	["lucide-thumbs-up"] = "rbxassetid://126182753052597",
	["lucide-ticket-check"] = "rbxassetid://128628476988956",
	["lucide-ticket-minus"] = "rbxassetid://132065209072956",
	["lucide-ticket-percent"] = "rbxassetid://91390289993875",
	["lucide-ticket-plus"] = "rbxassetid://101372123976656",
	["lucide-ticket-x"] = "rbxassetid://116688775069470",
	["lucide-ticket"] = "rbxassetid://96674465148169",
	["lucide-ticket-slash"] = "rbxassetid://71682935003573",
	["lucide-tickets-plane"] = "rbxassetid://90385077135944",
	["lucide-timer-off"] = "rbxassetid://112549762598535",
	["lucide-tickets"] = "rbxassetid://80716936657775",
	["lucide-timer-reset"] = "rbxassetid://77747985854116",
	["lucide-timer"] = "rbxassetid://83213933612047",
	["lucide-toggle-left"] = "rbxassetid://86640936259402",
	["lucide-toggle-right"] = "rbxassetid://72757888162800",
	["lucide-touchpad-off"] = "rbxassetid://107253829673902",
	["lucide-toilet"] = "rbxassetid://114819166189430",
	["lucide-tool-case"] = "rbxassetid://100116237648472",
	["lucide-torus"] = "rbxassetid://115373403041424",
	["lucide-tornado"] = "rbxassetid://76373307014972",
	["lucide-touchpad"] = "rbxassetid://91900889086796",
	["lucide-tower-control"] = "rbxassetid://114113858469166",
	["lucide-toy-brick"] = "rbxassetid://129631599857851",
	["lucide-tractor"] = "rbxassetid://126199115090114",
	["lucide-train-front-tunnel"] = "rbxassetid://83194044542605",
	["lucide-train-front"] = "rbxassetid://93463368859380",
	["lucide-traffic-cone"] = "rbxassetid://85075037079197",
	["lucide-train-track"] = "rbxassetid://128961125198436",
	["lucide-tram-front"] = "rbxassetid://76760768039681",
	["lucide-transgender"] = "rbxassetid://110281558647755",
	["lucide-trash-2"] = "rbxassetid://82430852390974",
	["lucide-trash"] = "rbxassetid://88192090804752",
	["lucide-tree-palm"] = "rbxassetid://91638729812789",
	["lucide-tree-pine"] = "rbxassetid://119135971786446",
	["lucide-trees"] = "rbxassetid://100052971940700",
	["lucide-trello"] = "rbxassetid://111339332890176",
	["lucide-tree-deciduous"] = "rbxassetid://88530284712113",
	["lucide-trending-down"] = "rbxassetid://133305384317439",
	["lucide-trending-up-down"] = "rbxassetid://121144453068449",
	["lucide-trending-up"] = "rbxassetid://79276764011620",
	["lucide-triangle-alert"] = "rbxassetid://82094603330968",
	["lucide-triangle-dashed"] = "rbxassetid://83267032457272",
	["lucide-triangle-right"] = "rbxassetid://115367459935008",
	["lucide-triangle"] = "rbxassetid://132419586859734",
	["lucide-trophy"] = "rbxassetid://99605947659852",
	["lucide-truck-electric"] = "rbxassetid://96200084281099",
	["lucide-truck"] = "rbxassetid://72418803525911",
	["lucide-turkish-lira"] = "rbxassetid://111349646591354",
	["lucide-turntable"] = "rbxassetid://105301812889365",
	["lucide-turtle"] = "rbxassetid://124465596631468",
	["lucide-tv-minimal-play"] = "rbxassetid://110289795808224",
	["lucide-tv-minimal"] = "rbxassetid://109954649614047",
	["lucide-tv"] = "rbxassetid://75715857915361",
	["lucide-twitch"] = "rbxassetid://136587344877168",
	["lucide-twitter"] = "rbxassetid://110779789219733",
	["lucide-type-outline"] = "rbxassetid://99301459264736",
	["lucide-umbrella-off"] = "rbxassetid://122875354983478",
	["lucide-type"] = "rbxassetid://139888359287918",
	["lucide-umbrella"] = "rbxassetid://120069237833091",
	["lucide-underline"] = "rbxassetid://130351503549384",
	["lucide-undo-2"] = "rbxassetid://135619844622527",
	["lucide-undo-dot"] = "rbxassetid://103498133000426",
	["lucide-undo"] = "rbxassetid://73324648180952",
	["lucide-unfold-horizontal"] = "rbxassetid://90809805084640",
	["lucide-unfold-vertical"] = "rbxassetid://98925955593115",
	["lucide-ungroup"] = "rbxassetid://96125012617932",
	["lucide-university"] = "rbxassetid://71297320674621",
	["lucide-unlink-2"] = "rbxassetid://132928128576894",
	["lucide-unlink"] = "rbxassetid://127929148856574",
	["lucide-unplug"] = "rbxassetid://77389791351554",
	["lucide-upload"] = "rbxassetid://112384273395852",
	["lucide-usb"] = "rbxassetid://110615576584508",
	["lucide-user-check"] = "rbxassetid://83733831617881",
	["lucide-user-cog"] = "rbxassetid://73849430413885",
	["lucide-user-lock"] = "rbxassetid://100767406112271",
	["lucide-user-minus"] = "rbxassetid://121199767957523",
	["lucide-user-pen"] = "rbxassetid://105163865487460",
	["lucide-user-plus"] = "rbxassetid://126096571523601",
	["lucide-user-round-check"] = "rbxassetid://91598234136274",
	["lucide-user-round-cog"] = "rbxassetid://92618616577913",
	["lucide-user-round-minus"] = "rbxassetid://136065875920885",
	["lucide-user-round-plus"] = "rbxassetid://110896680175557",
	["lucide-user-round-pen"] = "rbxassetid://132512706049372",
	["lucide-user-round-search"] = "rbxassetid://127405499354686",
	["lucide-user-round-x"] = "rbxassetid://117388680433660",
	["lucide-user-round"] = "rbxassetid://131091716091360",
	["lucide-user-search"] = "rbxassetid://75980990439194",
	["lucide-user-star"] = "rbxassetid://71839304465616",
	["lucide-user-x"] = "rbxassetid://108408333226063",
	["lucide-user"] = "rbxassetid://91474334345243",
	["lucide-users-round"] = "rbxassetid://93648694836382",
	["lucide-users"] = "rbxassetid://109799724386715",
	["lucide-utensils-crossed"] = "rbxassetid://94229321631994",
	["lucide-utensils"] = "rbxassetid://95619070214928",
	["lucide-utility-pole"] = "rbxassetid://91190201836678",
	["lucide-variable"] = "rbxassetid://118069142188827",
	["lucide-vault"] = "rbxassetid://112922195109981",
	["lucide-vector-square"] = "rbxassetid://134525953599385",
	["lucide-vegan"] = "rbxassetid://100415093068607",
	["lucide-venetian-mask"] = "rbxassetid://105811310088940",
	["lucide-venus-and-mars"] = "rbxassetid://127359436177296",
	["lucide-venus"] = "rbxassetid://89999677941853",
	["lucide-vibrate-off"] = "rbxassetid://71809838958365",
	["lucide-vibrate"] = "rbxassetid://125579090406882",
	["lucide-videotape"] = "rbxassetid://87329154872260",
	["lucide-video-off"] = "rbxassetid://128119085782619",
	["lucide-video"] = "rbxassetid://96663284364714",
	["lucide-view"] = "rbxassetid://80193127066722",
	["lucide-voicemail"] = "rbxassetid://84433629601724",
	["lucide-volleyball"] = "rbxassetid://120378261012726",
	["lucide-volume-1"] = "rbxassetid://74043360622064",
	["lucide-volume-2"] = "rbxassetid://90671599972181",
	["lucide-volume"] = "rbxassetid://130428943191110",
	["lucide-vote"] = "rbxassetid://115636316927430",
	["lucide-volume-off"] = "rbxassetid://111487376160259",
	["lucide-volume-x"] = "rbxassetid://77114006716121",
	["lucide-wallet-cards"] = "rbxassetid://131959632494049",
	["lucide-wallet-minimal"] = "rbxassetid://120364156802380",
	["lucide-wallet"] = "rbxassetid://88581287221473",
	["lucide-wallpaper"] = "rbxassetid://131854523371906",
	["lucide-warehouse"] = "rbxassetid://123773625545694",
	["lucide-wand"] = "rbxassetid://105735253992261",
	["lucide-washing-machine"] = "rbxassetid://95864892079235",
	["lucide-wand-sparkles"] = "rbxassetid://108161736734904",
	["lucide-watch"] = "rbxassetid://109986400252427",
	["lucide-waves-ladder"] = "rbxassetid://78838138897144",
	["lucide-waves"] = "rbxassetid://114431788291236",
	["lucide-waypoints"] = "rbxassetid://115456597740575",
	["lucide-webcam"] = "rbxassetid://110869261105928",
	["lucide-webhook-off"] = "rbxassetid://107985831275010",
	["lucide-webhook"] = "rbxassetid://115707249192058",
	["lucide-weight"] = "rbxassetid://80221503960114",
	["lucide-wheat-off"] = "rbxassetid://100814520858646",
	["lucide-wheat"] = "rbxassetid://93689899667052",
	["lucide-whole-word"] = "rbxassetid://104653567455214",
	["lucide-wifi-cog"] = "rbxassetid://114915943367394",
	["lucide-wifi-high"] = "rbxassetid://75232149276299",
	["lucide-wifi-pen"] = "rbxassetid://120601606968871",
	["lucide-wifi-off"] = "rbxassetid://109227564316116",
	["lucide-wifi-low"] = "rbxassetid://80514656704846",
	["lucide-wifi-sync"] = "rbxassetid://127729169747586",
	["lucide-wifi-zero"] = "rbxassetid://80366162994847",
	["lucide-wifi"] = "rbxassetid://87518356403818",
	["lucide-wind-arrow-down"] = "rbxassetid://80552076618251",
	["lucide-wind"] = "rbxassetid://140475550761298",
	["lucide-wine"] = "rbxassetid://111070648545230",
	["lucide-workflow"] = "rbxassetid://82829283435740",
	["lucide-wine-off"] = "rbxassetid://91744421611723",
	["lucide-worm"] = "rbxassetid://109189317185920",
	["lucide-x"] = "rbxassetid://116998807311805",
	["lucide-wrench"] = "rbxassetid://126123914381064",
	["lucide-youtube"] = "rbxassetid://114818083741535",
	["lucide-zap-off"] = "rbxassetid://82827541702053",
	["lucide-zoom-out"] = "rbxassetid://88164586813836",
	["lucide-zoom-in"] = "rbxassetid://132505805888775",
	["lucide-zap"] = "rbxassetid://139528609101647",
	["lucide-anvil"] = "rbxassetid://134603584329702",
	["lucide-app-window"] = "rbxassetid://98905551433370",
	["lucide-archive-restore"] = "rbxassetid://120934819638726",
	["lucide-archive"] = "rbxassetid://126173454813577",
	["lucide-app-window-mac"] = "rbxassetid://84460436594082",
	["lucide-aperture"] = "rbxassetid://124245394850399",
	["lucide-apple"] = "rbxassetid://108359623175773",
	["lucide-arrow-big-down-dash"] = "rbxassetid://125733643439021",
	["lucide-arrow-big-right-dash"] = "rbxassetid://135306817546748",
	["lucide-arrow-big-left"] = "rbxassetid://80668451409611",
	["lucide-arrow-big-left-dash"] = "rbxassetid://79097495230729",
	["lucide-armchair"] = "rbxassetid://98287222826442",
	["lucide-arrow-big-down"] = "rbxassetid://81217019746795",
	["lucide-arrow-big-right"] = "rbxassetid://112783778650170",
	["lucide-arrow-big-up-dash"] = "rbxassetid://139499221221421",
	["lucide-arrow-big-up"] = "rbxassetid://80868892014936",
	["lucide-arrow-down-1-0"] = "rbxassetid://110003672883161",
	["lucide-arrow-down-0-1"] = "rbxassetid://120418661696671",
	["lucide-arrow-down-from-line"] = "rbxassetid://104581855260712",
	["lucide-arrow-down-left"] = "rbxassetid://103505233541752",
	["lucide-arrow-down-a-z"] = "rbxassetid://81157659900485",
	["lucide-arrow-down-narrow-wide"] = "rbxassetid://87097530659688",
	["lucide-arrow-down-right"] = "rbxassetid://84156144906396",
	["lucide-arrow-down-wide-narrow"] = "rbxassetid://95668665826995",
	["lucide-arrow-down-to-line"] = "rbxassetid://89978220173827",
	["lucide-arrow-down-up"] = "rbxassetid://108632631078657",
	["lucide-arrow-down-to-dot"] = "rbxassetid://94264146936668",
	["lucide-arrow-down"] = "rbxassetid://121138744416131",
	["lucide-arrow-down-z-a"] = "rbxassetid://128586087695065",
	["lucide-arrow-left-right"] = "rbxassetid://121197368097623",
	["lucide-arrow-left-from-line"] = "rbxassetid://92907415444853",
	["lucide-arrow-left"] = "rbxassetid://76468390144997",
	["lucide-arrow-right-left"] = "rbxassetid://98920092617667",
	["lucide-arrow-right-from-line"] = "rbxassetid://118130042636840",
	["lucide-arrow-left-to-line"] = "rbxassetid://122880152766242"
}
function Library:GetIcon(Name)
	if Name ~= nil and Icons["lucide-" .. Name] then
		return Icons["lucide-" .. Name]
	end
	return nil
end

local Elements = {}
Elements.__index = Elements
Elements.__namecall = function(Table, Key, ...)
	return Elements[Key](...)
end

for _, ElementComponent in pairs(ElementsTable) do
	Elements["Add" .. ElementComponent.__type] = function(self, Idx, Config)
		ElementComponent.Container = self.Container
		ElementComponent.Type = self.Type
		ElementComponent.ScrollFrame = self.ScrollFrame
		ElementComponent.Library = Library

		return ElementComponent:New(Idx, Config)
	end
end

Library.Elements = Elements

if RunService:IsStudio() then
	makefolder = function(...) return ... end;
	makefile = function(...) return ... end;
	isfile = function(...) return ... end;
	isfolder = function(...) return ... end;
	readfile = function(...) return ... end;
	writefile = function(...) return ... end;
	listfiles = function (...) return {...} end;
end

local SaveManager = {} do
	SaveManager.Folder = "FluentSettings"
	SaveManager.Ignore = {}
	SaveManager.Parser = {
		Toggle = {
			Save = function(idx, object) 
				return { type = "Toggle", idx = idx, value = object.Value } 
			end,
			Load = function(idx, data)
				if SaveManager.Options[idx] then 
					SaveManager.Options[idx]:SetValue(data.value)
				end
			end,
		},
		Slider = {
			Save = function(idx, object)
				return { type = "Slider", idx = idx, value = tostring(object.Value) }
			end,
			Load = function(idx, data)
				if SaveManager.Options[idx] then 
					SaveManager.Options[idx]:SetValue(data.value)
				end
			end,
		},
		Dropdown = {
			Save = function(idx, object)
				return { type = "Dropdown", idx = idx, value = object.Value, mutli = object.Multi }
			end,
			Load = function(idx, data)
				if SaveManager.Options[idx] then 
					SaveManager.Options[idx]:SetValue(data.value)
				end
			end,
		},
		Colorpicker = {
			Save = function(idx, object)
				return { type = "Colorpicker", idx = idx, value = object.Value:ToHex(), transparency = object.Transparency }
			end,
			Load = function(idx, data)
				if SaveManager.Options[idx] then 
					SaveManager.Options[idx]:SetValueRGB(Color3.fromHex(data.value), data.transparency)
				end
			end,
		},
		Keybind = {
			Save = function(idx, object)
				return { type = "Keybind", idx = idx, mode = object.Mode, key = object.Value }
			end,
			Load = function(idx, data)
				if SaveManager.Options[idx] then 
					SaveManager.Options[idx]:SetValue(data.key, data.mode)
				end
			end,
		},

		Input = {
			Save = function(idx, object)
				return { type = "Input", idx = idx, text = object.Value }
			end,
			Load = function(idx, data)
				if SaveManager.Options[idx] and type(data.text) == "string" then
					SaveManager.Options[idx]:SetValue(data.text)
				end
			end,
		},
	}

	function SaveManager:SetIgnoreIndexes(list)
		for _, key in next, list do
			self.Ignore[key] = true
		end
	end
	function SaveManager:SetFolder(folder)
		self.Folder = folder;
		self:BuildFolderTree()
	end

	function SaveManager:Save(name)
		if (not name) then
			return false, "no config file is selected"
		end

		local fullPath = self.Folder .. "/" .. name .. ".json"

		local data = {
			objects = {}
		}


		for idx, option in next, SaveManager.Options do
			if self.Parser[option.Type] and not self.Ignore[idx] then
				table.insert(data.objects, self.Parser[option.Type].Save(idx, option))
			end
		end	

		local success, encoded = pcall(httpService.JSONEncode, httpService, data)
		if not success then
			return false, "failed to encode data"
		end

		writefile(fullPath, encoded)
		return true
	end

	if not RunService:IsStudio() then
		function SaveManager:Load(name)
			if (not name) then
				return false, "no config file is selected"
			end

			local file = self.Folder .. "/" .. name .. ".json"
			if not isfile(file) then return false, "Create Config Save File" end

			local success, decoded = pcall(httpService.JSONDecode, httpService, readfile(file))
			if not success then return false, "decode error" end

			for _, option in next, decoded.objects do
				if self.Parser[option.type] and not self.Ignore[option.idx] then
					task.spawn(function() self.Parser[option.type].Load(option.idx, option) end)
				end
			end

			Fluent.SettingLoaded = true

			return true, decoded
		end
	end

	function SaveManager:IgnoreThemeSettings()
		self:SetIgnoreIndexes({ 
			"InterfaceTheme", "AcrylicToggle", "TransparentToggle", "MenuKeybind"
		})
	end

	function SaveManager:BuildFolderTree()
		local paths = {
			self.Folder,
			self.Folder .. "/"
		}

		for i = 1, #paths do
			local str = paths[i]
			if not isfolder(str) then
				makefolder(str)
			end
		end
	end

	function SaveManager:RefreshConfigList()
		local list = listfiles(self.Folder .. "/")

		local out = {}
		for i = 1, #list do
			local file = list[i]
			if file:sub(-5) == ".json" then
				local pos = file:find(".json", 1, true)
				local start = pos

				local char = file:sub(pos, pos)
				while char ~= "/" and char ~= "\\" and char ~= "" do
					pos = pos - 1
					char = file:sub(pos, pos)
				end

				if char == "/" or char == "\\" then
					local name = file:sub(pos + 1, start - 1)
					if name ~= "options" then
						table.insert(out, name)
					end
				end
			end
		end

		return out
	end

	function SaveManager:SetLibrary(library)
		self.Library = library
		self.Options = library.Options
	end

	if not RunService:IsStudio() then
		function SaveManager:LoadAutoloadConfig()
			if isfile(self.Folder .. "/autoload.txt") then
				local name = readfile(self.Folder .. "/autoload.txt")

				local success, err = self:Load(name)
				if not success then
					return self.Library:Notify({
						Title = "Interface",
						Content = "Config loader",
						SubContent = "Failed to load autoload config: " .. err,
						Duration = 7
					})
				end

				self.Library:Notify({
					Title = "Interface",
					Content = "Config loader",
					SubContent = string.format("Auto loaded config %q", name),
					Duration = 7
				})
			end
		end
	end

	function SaveManager:BuildConfigSection(tab)
		assert(self.Library, "Must set SaveManager.Library")

		local section = tab:AddSection("Configuration", "settings")

		section:AddInput("SaveManager_ConfigName",    { Title = "Config name" })
		section:AddDropdown("SaveManager_ConfigList", { Title = "Config list", Values = self:RefreshConfigList(), AllowNull = true })

		section:AddButton({
			Title = "Create config",
			Callback = function()
				local name = SaveManager.Options.SaveManager_ConfigName.Value

				if name:gsub(" ", "") == "" then 
					return self.Library:Notify({
						Title = "Interface",
						Content = "Config loader",
						SubContent = "Invalid config name (empty)",
						Duration = 7
					})
				end

				local success, err = self:Save(name)
				if not success then
					return self.Library:Notify({
						Title = "Interface",
						Content = "Config loader",
						SubContent = "Failed to save config: " .. err,
						Duration = 7
					})
				end

				self.Library:Notify({
					Title = "Interface",
					Content = "Config loader",
					SubContent = string.format("Created config %q", name),
					Duration = 7
				})

				SaveManager.Options.SaveManager_ConfigList:SetValues(self:RefreshConfigList())
				SaveManager.Options.SaveManager_ConfigList:SetValue(nil)
			end
		})

		section:AddButton({Title = "Load config", Callback = function()
			local name = SaveManager.Options.SaveManager_ConfigList.Value

			local success, err = self:Load(name)
			if not success then
				return self.Library:Notify({
					Title = "Interface",
					Content = "Config loader",
					SubContent = "Failed to load config: " .. err,
					Duration = 7
				})
			end

			self.Library:Notify({
				Title = "Interface",
				Content = "Config loader",
				SubContent = string.format("Loaded config %q", name),
				Duration = 7
			})
		end})

		section:AddButton({Title = "Save config", Callback = function()
			local name = SaveManager.Options.SaveManager_ConfigList.Value

			local success, err = self:Save(name)
			if not success then
				return self.Library:Notify({
					Title = "Interface",
					Content = "Config loader",
					SubContent = "Failed to overwrite config: " .. err,
					Duration = 7
				})
			end

			self.Library:Notify({
				Title = "Interface",
				Content = "Config loader",
				SubContent = string.format("Overwrote config %q", name),
				Duration = 7
			})
		end})

		section:AddButton({Title = "Refresh list", Callback = function()
			SaveManager.Options.SaveManager_ConfigList:SetValues(self:RefreshConfigList())
			SaveManager.Options.SaveManager_ConfigList:SetValue(nil)
		end})

		local AutoloadButton
		AutoloadButton = section:AddButton({Title = "Set as autoload", Description = "Current autoload config: none", Callback = function()
			local name = SaveManager.Options.SaveManager_ConfigList.Value
			writefile(self.Folder .. "/autoload.txt", name)
			AutoloadButton:SetDesc("Current autoload config: " .. name)
			self.Library:Notify({
				Title = "Interface",
				Content = "Config loader",
				SubContent = string.format("Set %q to auto load", name),
				Duration = 7
			})
		end})

		if isfile(self.Folder .. "/autoload.txt") then
			local name = readfile(self.Folder .. "/autoload.txt")
			AutoloadButton:SetDesc("Current autoload config: " .. name)
		end

		SaveManager:SetIgnoreIndexes({ "SaveManager_ConfigList", "SaveManager_ConfigName" })
	end

	if not RunService:IsStudio() then
		SaveManager:BuildFolderTree()
	end
end

local InterfaceManager = {} do
	InterfaceManager.Folder = "FluentSettings"
	InterfaceManager.Settings = {
		Acrylic = true,
		Transparency = true,
		MenuKeybind = "M"
	}

	function InterfaceManager:SetTheme(name)
		InterfaceManager.Settings.Theme = name
	end

	function InterfaceManager:SetFolder(folder)
		self.Folder = folder;
		self:BuildFolderTree()
	end

	function InterfaceManager:SetLibrary(library)
		self.Library = library
	end

	function InterfaceManager:BuildFolderTree()
		local paths = {}

		local parts = self.Folder:split("/")
		for idx = 1, #parts do
			paths[#paths + 1] = table.concat(parts, "/", 1, idx)
		end

		table.insert(paths, self.Folder)
		table.insert(paths, self.Folder .. "/")

		for i = 1, #paths do
			local str = paths[i]
			if not isfolder(str) then
				makefolder(str)
			end
		end
	end

	function InterfaceManager:SaveSettings()
		writefile(self.Folder .. "/options.json", httpService:JSONEncode(InterfaceManager.Settings))
	end

	function InterfaceManager:LoadSettings()
		local path = self.Folder .. "/options.json"
		if isfile(path) then
			local data = readfile(path)

			if not RunService:IsStudio() then local success, decoded = pcall(httpService.JSONDecode, httpService, data) end

			if success then
				for i, v in next, decoded do
					InterfaceManager.Settings[i] = v
				end
			end
		end
	end
	function InterfaceManager:BuildInterfaceSection(tab)
		assert(self.Library, "Must set InterfaceManager.Library")
		local Library = self.Library
		local Settings = InterfaceManager.Settings

		InterfaceManager:LoadSettings()

		local section = tab:AddSection("Interface", "monitor")
		local InterfaceTheme = section:AddDropdown("InterfaceTheme", {
			Title = "Theme",
			Description = "Changes the interface theme.",
			Values = Library.Themes,
			Default = self.Library.Theme,
			Callback = function(Value)
				Library:SetTheme(Value)
				Settings.Theme = Value
				InterfaceManager:SaveSettings()
			end
		})

		InterfaceTheme:SetValue(Settings.Theme)

		if Library.UseAcrylic and not Mobile then
			section:AddToggle("AcrylicToggle", {
				Title = "Acrylic",
				Description = "The blurred background requires graphic quality 8+",
				Default = Settings.Acrylic,
				Callback = function(Value)
					Library:ToggleAcrylic(Value)
					Settings.Acrylic = Value
					InterfaceManager:SaveSettings()
				end
			})
		elseif Mobile then
			Settings.Acrylic = false
		end

		section:AddSlider("WindowTransparency", {
			Title = "Window Transparency",
			Description = "Adjusts the window transparency.",
			Default = 1,
			Min = 0,
			Max = 3,
			Rounding = 1,
			Callback = function(Value)
				Library:SetWindowTransparency(Value)
			end
		})


		local MenuKeybind = section:AddKeybind("MenuKeybind", { Title = "Minimize Bind", Default = Library.MinimizeKey.Name or Settings.MenuKeybind })
		MenuKeybind:OnChanged(function()
			Settings.MenuKeybind = MenuKeybind.Value
			InterfaceManager:SaveSettings()
		end)
		Library.MinimizeKeybind = MenuKeybind
	end
end

function Library:CreateWindow(Config)
	assert(Config.Title, "Window - Missing Title")

	if Library.Window then
		print("You cannot create more than one window.")
		return
	end

	Library.MinimizeKey = Config.MinimizeKey or Enum.KeyCode.LeftControl
	Library.UseAcrylic = Config.Acrylic or false
	Library.Acrylic = Config.Acrylic or false
	Library.Theme = Config.Theme or "Dark"

	if Config.Acrylic then
		Acrylic.init()
	end

	local Icon = Config.Icon
	if not fischbypass then 
		if Library:GetIcon(Icon) then
			Icon = Library:GetIcon(Icon)
		end

		if Icon == "" or Icon == nil then
			Icon = nil
		end
	end

	local Window = Components.Window({
		Parent = GUI,
		Size = Config.Size,
		Title = Config.Title,
		Icon = Icon,
		SubTitle = Config.SubTitle,
		TabWidth = Config.TabWidth,
		Search = Config.Search,
		UserInfoTitle = Config.UserInfoTitle,
		UserInfo = Config.UserInfo,
		UserInfoTop = Config.UserInfoTop,
		UserInfoSubtitle = Config.UserInfoSubtitle,
		UserInfoSubtitleColor = Config.UserInfoSubtitleColor,
		DropdownsOutsideWindow = Config.DropdownsOutsideWindow,
	})

	Library.Window = Window
	table.insert(Library.Windows, Window)
	InterfaceManager:SetTheme(Config.Theme)
	Library:SetTheme(Config.Theme)

	return Window
end

function Library:CreateMinimizer(Config)
	Config = Config or {}
	if self.Minimizer and self.Minimizer.Parent then
		return self.Minimizer
	end

	local parentGui = Library.GUI or GUI
	if parentGui then parentGui.DisplayOrder = 1000 end
	local isMobile = Mobile and true or false

	local iconAsset = "rbxassetid://10734897102"
	if type(Config.Icon) == "string" and Config.Icon ~= "" then
		pcall(function()
			local resolved = Library:GetIcon(Config.Icon)
			if resolved then
				iconAsset = resolved
			elseif string.match(Config.Icon, "^rbxassetid://%d+$") then
				iconAsset = Config.Icon
			end
		end)
	end

	local useAcrylic = (Config.Acrylic == true)

	local cornerRadius = tonumber(Config.Corner)
	local backgroundTransparency = (typeof(Config.Transparency) == "number") and math.clamp(Config.Transparency, 0, 1) or 0
	local draggableWhole = (Config.Draggable == true)

	local holder
	local function createButton(isDesktop)
		return New("TextButton", {
			Name = "MinimizeButton",
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = backgroundTransparency or 0,
			AutoButtonColor = true,
			ThemeTag = {
				BackgroundColor3 = "Element",
			},
		}, {
			New("UICorner", { CornerRadius = UDim.new(0, cornerRadius or (isDesktop and 14 or 12)) }),
			New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Transparency = isDesktop and 0.6 or 0.7,
				Thickness = isDesktop and 2 or 1.5,
				ThemeTag = {
					Color = "ElementBorder",
				},
			}),
			New("ImageLabel", {
				Name = "Icon",
				Image = iconAsset,
				Size = UDim2.new(0.8, 0, 0.8, 0),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				ThemeTag = {
					ImageColor3 = "Text",
				},
			}, {
				New("UIAspectRatioConstraint", { AspectRatio = 1, AspectType = Enum.AspectType.FitWithinMaxSize }),
				New("UICorner", { CornerRadius = UDim.new(0, 0) })
			}),

		})
	end

	if isMobile then
		holder = New("Frame", {
			Name = "FluentMinimizer",
			Parent = parentGui,
			Size = Config.Size or UDim2.fromOffset(36, 36),
			Position = Config.Position or UDim2.new(0.45, 0, 0.025, 0),
			BackgroundTransparency = 1,
			ZIndex = 999999999,
			Visible = (Config.Visible ~= false),
		})
	else
		holder = New("Frame", {
			Name = "FluentMinimizer",
			Parent = parentGui,
			Size = Config.Size or UDim2.fromOffset(36, 36),
			Position = Config.Position or UDim2.new(0, 300, 0, 20),
			BackgroundTransparency = 1,
			ZIndex = 999999999,
			Visible = (Config.Visible ~= false),
		})
	end

	if useAcrylic then
		local miniAcrylic = Acrylic.AcrylicPaint()
		miniAcrylic.Frame.Parent = holder
		miniAcrylic.Frame.Size = UDim2.fromScale(1, 1)
		pcall(function() miniAcrylic.AddParent(holder) end)

		local desiredCorner = UDim.new(0, cornerRadius or 0)
		pcall(function()
			for _, descendant in ipairs(miniAcrylic.Frame:GetDescendants()) do
				if descendant.ClassName == "UICorner" then
					descendant.CornerRadius = desiredCorner
				elseif descendant.ClassName == "ImageLabel" then
					descendant.Size = UDim2.fromScale(1, 1)
					descendant.Position = UDim2.new(0.5, 0, 0.5, 0)
					descendant.AnchorPoint = Vector2.new(0.5, 0.5)
				end
			end
		end)
		self.MinimizerAcrylic = miniAcrylic
	end

	local btnInstance = createButton(not isMobile)
	btnInstance.Parent = holder
	btnInstance.ZIndex = (holder.ZIndex or 0) + 1

	local button = holder:FindFirstChildOfClass("TextButton")
	if button then
		local isDragging = false
		local dragStart, dragOffset

		if draggableWhole then
			Creator.AddSignal(button.InputBegan, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					isDragging = true
					local pos = Input.Position
					dragStart = Vector2.new(pos.X, pos.Y)
					dragOffset = holder.Position
					local conn
					conn = Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then
							isDragging = false
							dragStart = nil
							dragOffset = nil
							conn:Disconnect()
						end
					end)
				end
			end)

			Creator.AddSignal(RunService.Heartbeat, function()
				if isDragging and dragStart and dragOffset and holder and holder.Parent then
					local mouse = LocalPlayer:GetMouse()
					local current = Vector2.new(mouse.X, mouse.Y)
					local delta = current - dragStart
					local newX = dragOffset.X.Offset + delta.X
					local newY = dragOffset.Y.Offset + delta.Y
					local viewport = workspace.Camera.ViewportSize
					local size = holder.AbsoluteSize
					if newX < 0 then newX = 0 end
					if newY < 0 then newY = 0 end
					if newX > viewport.X - size.X then newX = viewport.X - size.X end
					if newY > viewport.Y - size.Y then newY = viewport.Y - size.Y end
					holder.Position = UDim2.new(0, newX, 0, newY)
				end
			end)
		end

		AddSignal(button.MouseButton1Click, function()
			task.wait(0.1)
			if not isDragging then
				Library.Window:Minimize()
			end
		end)
	end



	self.Minimizer = holder
	return holder
end

function Library:SetTheme(Value)
	if Library.Window and table.find(Library.Themes, Value) then
		Library.Theme = Value
		Creator.UpdateTheme()

		if Value == "Glass" then
			Library:SetWindowTransparency(0.9)
		end
	end
end

function Library:Destroy()
	if Library.Window then
		Library.Unloaded = true
		if Library.UseAcrylic then
			Library.Window.AcrylicPaint.Model:Destroy()
		end
		Creator.Disconnect()
		Library.GUI:Destroy()
	end
end

function Library:ToggleAcrylic(Value)
	if Library.Window then
		if Library.UseAcrylic then
			Library.Acrylic = Value
			if Library.Window.AcrylicPaint and Library.Window.AcrylicPaint.Model then
				Library.Window.AcrylicPaint.Model.Transparency = Value and 0.95 or 1
			end
		end
	end
end

function Library:ToggleTransparency(Value)
	if Library.Window then
		Library.Window.AcrylicPaint.Frame.Background.BackgroundTransparency = Value and 0.35 or 0
	end
end
function Library:SetWindowTransparency(Value)
	if Library.Window and Library.UseAcrylic then
		Value = math.clamp(Value, 0, 3)

		if Library.Theme == "Glass" then
			local glassTransparency = 0.8 + (Value * 0.05)
			if Value > 1 then
				glassTransparency = 0.85 + ((Value - 1) * 0.04)
			end
			if Value > 2 then
				glassTransparency = 0.93 + ((Value - 2) * 0.04)
			end
			Library.Window.AcrylicPaint.Model.Transparency = math.min(glassTransparency, 0.99)

			local backgroundTransparency = 0.7 + (Value * 0.08)
			if Value > 1 then
				backgroundTransparency = 0.78 + ((Value - 1) * 0.07)
			end
			if Value > 2 then
				backgroundTransparency = 0.85 + ((Value - 2) * 0.1)
			end
			Library.Window.AcrylicPaint.Frame.Background.BackgroundTransparency = math.min(backgroundTransparency, 0.99)

			Library.NotificationTransparency = Value

			for _, notification in pairs(Library.ActiveNotifications or {}) do
				if notification and notification.ApplyTransparency then
					notification:ApplyTransparency()
				end
			end
		else
			Library.Window.AcrylicPaint.Model.Transparency = 0.98
			Library.Window.AcrylicPaint.Frame.Background.BackgroundTransparency = Value * 0.3
		end
	end
end

function Library:Notify(Config)
	return NotificationModule:New(Config)
end

task.wait(0.01)

return Library, SaveManager, InterfaceManager, Mobile
