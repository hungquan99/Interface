--[[
    HQ99 Notify
    Clean toast notifications, HQ99 loader style.

    Usage:
        local Notify = loadstring(game:HttpGet("YOUR_URL"))()
        local notif = Notify.new({ Position = "BottomCenter", MaxToasts = 5 })

        notif:Send({ Title = "HQ99 - test", Text = "Authenticated in 6.00s", Type = "success", Duration = 4 })
        notif:Success("Build v4 published", "no obf")
        notif:Info("HQ99", "Loading script...")
        notif:Warning("Key expiring", "2 days left")
        notif:Error("binding_mismatch", "HWID does not match")

    Positions: BottomCenter | BottomRight | BottomLeft | TopCenter | TopRight | TopLeft
    Types:     success | info | warning | error
]]

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local TextService = game:GetService("TextService")

local GUI_NAME = "HQ99_Notify"

local THEME = {
	Background = Color3.fromRGB(10, 10, 12),
	Border = Color3.fromRGB(255, 255, 255),
	Text = Color3.fromRGB(250, 250, 250),
	Muted = Color3.fromRGB(161, 161, 170),
	Faint = Color3.fromRGB(113, 113, 122),
	Bar = Color3.fromRGB(244, 244, 245),
}

local TYPES = {
	success = { Color = Color3.fromRGB(74, 222, 128), Tag = "OK" },
	info = { Color = Color3.fromRGB(228, 228, 231), Tag = "INFO" },
	warning = { Color = Color3.fromRGB(250, 204, 21), Tag = "WARN" },
	error = { Color = Color3.fromRGB(248, 113, 113), Tag = "ERR" },
}

local H = Enum.HorizontalAlignment
local V = Enum.VerticalAlignment
local POSITIONS = {
	BottomCenter = { Anchor = Vector2.new(0.5, 1), Pos = UDim2.new(0.5, 0, 1, -40), H = H.Center, V = V.Bottom, Slide = 14 },
	BottomRight = { Anchor = Vector2.new(1, 1), Pos = UDim2.new(1, -20, 1, -20), H = H.Right, V = V.Bottom, Slide = 14 },
	BottomLeft = { Anchor = Vector2.new(0, 1), Pos = UDim2.new(0, 20, 1, -20), H = H.Left, V = V.Bottom, Slide = 14 },
	TopCenter = { Anchor = Vector2.new(0.5, 0), Pos = UDim2.new(0.5, 0, 0, 20), H = H.Center, V = V.Top, Slide = -14 },
	TopRight = { Anchor = Vector2.new(1, 0), Pos = UDim2.new(1, -20, 0, 20), H = H.Right, V = V.Top, Slide = -14 },
	TopLeft = { Anchor = Vector2.new(0, 0), Pos = UDim2.new(0, 20, 0, 20), H = H.Left, V = V.Top, Slide = -14 },
}

-- helpers ---------------------------------------------------------------

local function create(class, props, children)
	local inst = Instance.new(class)
	for k, v in pairs(props or {}) do
		if k ~= "Parent" then
			inst[k] = v
		end
	end
	for _, child in ipairs(children or {}) do
		child.Parent = inst
	end
	if props and props.Parent then
		inst.Parent = props.Parent
	end
	return inst
end

local function measure(str, size, font)
	local ok, width = pcall(function()
		return TextService:GetTextSize(str, size, font, Vector2.new(1000, 100)).X
	end)
	return ok and width or (#str * size * 0.55)
end

local function mount(gui)
	local env = (typeof(getgenv) == "function" and getgenv()) or _G
	if env.HQ99_NOTIFY_GUI then
		pcall(function()
			env.HQ99_NOTIFY_GUI:Destroy()
		end)
	end

	if typeof(syn) == "table" and typeof(syn.protect_gui) == "function" then
		pcall(syn.protect_gui, gui)
	end

	local ok = false
	if typeof(gethui) == "function" then
		ok = pcall(function()
			gui.Parent = gethui()
		end)
	end
	if not ok or not gui.Parent then
		ok = pcall(function()
			gui.Parent = game:GetService("CoreGui")
		end)
	end
	if not ok or not gui.Parent then
		gui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
	end

	env.HQ99_NOTIFY_GUI = gui
end

-- class -----------------------------------------------------------------

local Notify = {}
Notify.__index = Notify

function Notify.new(options)
	options = options or {}
	local self = setmetatable({}, Notify)

	local cfg = POSITIONS[options.Position or "BottomCenter"] or POSITIONS.BottomCenter
	self.MaxToasts = options.MaxToasts or 5
	self.Duration = options.Duration or 4
	self._cfg = cfg
	self._order = 0
	self._active = {}

	self.Gui = create("ScreenGui", {
		Name = GUI_NAME,
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		DisplayOrder = 999,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	})

	self.Container = create("Frame", {
		Name = "Container",
		BackgroundTransparency = 1,
		AnchorPoint = cfg.Anchor,
		Position = cfg.Pos,
		Size = UDim2.fromOffset(440, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Parent = self.Gui,
	}, {
		create("UIListLayout", {
			Padding = UDim.new(0, 8),
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = cfg.H,
			VerticalAlignment = cfg.V,
		}),
	})

	mount(self.Gui)
	return self
end

function Notify:Send(opts)
	if typeof(opts) ~= "table" then
		opts = { Text = tostring(opts) }
	end

	local kind = TYPES[string.lower(tostring(opts.Type or "info"))] or TYPES.info
	local title = tostring(opts.Title or "HQ99")
	local text = opts.Text ~= nil and tostring(opts.Text) or nil
	local duration = tonumber(opts.Duration) or self.Duration
	local slide = self._cfg.Slide

	-- width fits the content
	local titleW = measure(title, 14, Enum.Font.GothamMedium) + 18 + 56
	local textW = text and (measure(text, 13, Enum.Font.Gotham) + 18) or 0
	local width = math.clamp(math.max(titleW, textW) + 28, 240, 420)

	self._order += 1

	local holder = create("Frame", {
		Name = "Holder",
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(width, 0),
		LayoutOrder = self._order,
		Parent = self.Container,
	})

	local toast = create("CanvasGroup", {
		Name = "Toast",
		BackgroundColor3 = THEME.Background,
		BackgroundTransparency = 0.04,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.fromOffset(width, 0),
		Position = UDim2.fromOffset(0, slide),
		GroupTransparency = 1,
		Parent = holder,
	}, {
		create("UICorner", { CornerRadius = UDim.new(0, 10) }),
	})

	local content = create("Frame", {
		Name = "Content",
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, 0),
		Parent = toast,
	}, {
		create("UIPadding", {
			PaddingTop = UDim.new(0, 12),
			PaddingBottom = UDim.new(0, 12),
			PaddingLeft = UDim.new(0, 14),
			PaddingRight = UDim.new(0, 14),
		}),
		create("UIListLayout", {
			Padding = UDim.new(0, 4),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	})

	-- header: status dot + title + mono tag
	local header = create("Frame", {
		Name = "Header",
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, 0),
		LayoutOrder = 1,
		Parent = content,
	})

	create("Frame", {
		Name = "Dot",
		BackgroundColor3 = kind.Color,
		Size = UDim2.fromOffset(8, 8),
		Position = UDim2.fromOffset(1, 3),
		BorderSizePixel = 0,
		Parent = header,
	}, {
		create("UICorner", { CornerRadius = UDim.new(1, 0) }),
		create("UIStroke", {
			Color = kind.Color,
			Transparency = 0.72,
			Thickness = 3,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		}),
	})

	create("TextLabel", {
		Name = "Title",
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, -70, 0, 0),
		Position = UDim2.fromOffset(18, 0),
		Font = Enum.Font.GothamMedium,
		TextSize = 14,
		TextColor3 = THEME.Text,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextWrapped = true,
		Text = title,
		Parent = header,
	})

	create("TextLabel", {
		Name = "Tag",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, 0, 0, 1),
		Size = UDim2.fromOffset(44, 14),
		Font = Enum.Font.Code,
		TextSize = 11,
		TextColor3 = THEME.Faint,
		TextXAlignment = Enum.TextXAlignment.Right,
		Text = kind.Tag,
		Parent = header,
	})

	if text and text ~= "" then
		create("TextLabel", {
			Name = "Text",
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextColor3 = THEME.Muted,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextWrapped = true,
			Text = text,
			LayoutOrder = 2,
			Parent = content,
		}, {
			create("UIPadding", { PaddingLeft = UDim.new(0, 18) }),
		})
	end

	-- click to dismiss
	local button = create("TextButton", {
		Name = "Hit",
		BackgroundTransparency = 1,
		Text = "",
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 10,
		Parent = toast,
	})

	-- lifecycle
	local dismissed = false
	local handle = {}

	local function dismiss()
		if dismissed then
			return
		end
		dismissed = true

		local idx = table.find(self._active, handle.Dismiss)
		if idx then
			table.remove(self._active, idx)
		end

		pcall(function()
			TweenService:Create(toast, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
				GroupTransparency = 1,
				Position = UDim2.fromOffset(0, slide * 0.6),
			}):Play()
			TweenService:Create(
				holder,
				TweenInfo.new(0.28, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0.1),
				{ Size = UDim2.fromOffset(width, 0) }
			):Play()
		end)

		task.delay(0.5, function()
			holder:Destroy()
		end)
	end

	handle.Dismiss = dismiss
	table.insert(self._active, dismiss)
	button.MouseButton1Click:Connect(dismiss)

	while #self._active > self.MaxToasts do
		local oldest = table.remove(self._active, 1)
		oldest()
	end

	task.spawn(function()
		for _ = 1, 10 do
			if toast.AbsoluteSize.Y > 0 then
				break
			end
			task.wait()
		end
		if dismissed then
			return
		end

		local height = toast.AbsoluteSize.Y
		TweenService:Create(holder, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
			Size = UDim2.fromOffset(width, height),
		}):Play()
		TweenService:Create(toast, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
			GroupTransparency = 0,
			Position = UDim2.fromOffset(0, 0),
		}):Play()
		task.delay(duration, dismiss)
	end)

	return handle
end

function Notify:Success(title, text, duration)
	return self:Send({ Title = title, Text = text, Duration = duration, Type = "success" })
end

function Notify:Info(title, text, duration)
	return self:Send({ Title = title, Text = text, Duration = duration, Type = "info" })
end

function Notify:Warning(title, text, duration)
	return self:Send({ Title = title, Text = text, Duration = duration, Type = "warning" })
end

function Notify:Error(title, text, duration)
	return self:Send({ Title = title, Text = text, Duration = duration, Type = "error" })
end

function Notify:Destroy()
	if self.Gui then
		self.Gui:Destroy()
	end
end

return Notify
