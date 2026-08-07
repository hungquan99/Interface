local TweenService = game:GetService("TweenService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local ICON = "rbxassetid://10709753149"
local CLOSE_ICON = "rbxassetid://116396312853810"
local TITLE = "Limited Support"
local MSG = "Some features may not work correctly on Xeno / Solara."
local SHOW_TIME = 15

local BG = Color3.fromRGB(24, 24, 27)
local ACCENT = Color3.fromRGB(255, 176, 32)
local TEXT = Color3.fromRGB(235, 235, 235)
local SUBTEXT = Color3.fromRGB(160, 160, 165)

local function getExecutorName()
	local ok, name = pcall(function()
		if identifyexecutor then return identifyexecutor() end
		if getexecutorname then return getexecutorname() end
		return "unknown"
	end)
	if not ok then return "unknown" end
	return name
end

local function isUnsupported()
	local n = getExecutorName():lower()
	return n:find("xeno") or n:find("solara")
end

local function makeNotify()
	local gui = Instance.new("ScreenGui")
	gui.Name = "ExecutorWarningNotify"
	gui.ResetOnSpawn = false
	gui.IgnoreGuiInset = true
	gui.DisplayOrder = 2147483647
	gui.Parent = PlayerGui

	local card = Instance.new("Frame")
	card.AnchorPoint = Vector2.new(1, 0)
	card.Size = UDim2.fromOffset(300, 64)
	card.Position = UDim2.new(1, 20, 0, 60)
	card.BackgroundColor3 = BG
	card.BorderSizePixel = 0
	card.ClipsDescendants = true
	card.Parent = gui

	Instance.new("UICorner", card).CornerRadius = UDim.new(0, 10)

	local stroke = Instance.new("UIStroke")
	stroke.Color = ACCENT
	stroke.Thickness = 1
	stroke.Transparency = 0.4
	stroke.Parent = card

	local accent = Instance.new("Frame")
	accent.Size = UDim2.new(0, 4, 1, 0)
	accent.BackgroundColor3 = ACCENT
	accent.BorderSizePixel = 0
	accent.Parent = card

	local icon = Instance.new("ImageLabel")
	icon.BackgroundTransparency = 1
	icon.Image = ICON
	icon.ImageColor3 = ACCENT
	icon.Size = UDim2.fromOffset(28, 28)
	icon.AnchorPoint = Vector2.new(0, 0.5)
	icon.Position = UDim2.new(0, 16, 0.5, 0)
	icon.Parent = card

	local title = Instance.new("TextLabel")
	title.BackgroundTransparency = 1
	title.Font = Enum.Font.GothamBold
	title.Text = TITLE
	title.TextSize = 14
	title.TextColor3 = TEXT
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.Size = UDim2.new(1, -60, 0, 18)
	title.Position = UDim2.new(0, 54, 0, 10)
	title.Parent = card

	local msg = Instance.new("TextLabel")
	msg.BackgroundTransparency = 1
	msg.Font = Enum.Font.Gotham
	msg.Text = MSG
	msg.TextSize = 12
	msg.TextColor3 = SUBTEXT
	msg.TextXAlignment = Enum.TextXAlignment.Left
	msg.TextWrapped = true
	msg.Size = UDim2.new(1, -68, 0, 30)
	msg.Position = UDim2.new(0, 54, 0, 28)
	msg.Parent = card

	local close = Instance.new("ImageButton")
	close.BackgroundTransparency = 1
	close.Image = CLOSE_ICON
	close.ImageColor3 = SUBTEXT
	close.Size = UDim2.fromOffset(16, 16)
	close.Position = UDim2.new(1, -24, 0, 8)
	close.Parent = card

	close.MouseEnter:Connect(function()
		close.ImageColor3 = TEXT
	end)
	close.MouseLeave:Connect(function()
		close.ImageColor3 = SUBTEXT
	end)

	return gui, card, close
end

local function show()
	local gui, card, close = makeNotify()

	TweenService:Create(card, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
		Position = UDim2.new(1, -20, 0, 60)
	}):Play()

	local function dismiss()
		local tw = TweenService:Create(card, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
			Position = UDim2.new(1, 20, 0, 60)
		})
		tw:Play()
		tw.Completed:Wait()
		gui:Destroy()
	end

	close.MouseButton1Click:Connect(dismiss)

	task.delay(SHOW_TIME, function()
		if gui.Parent then
			dismiss()
		end
	end)
end

if isUnsupported() then
	show()
end

return {
	Show = show,
	IsUnsupported = isUnsupported,
	GetExecutorName = getExecutorName,
}
