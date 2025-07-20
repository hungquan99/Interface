-- NotificationSystem with Modern Color Accent Style
-- Usage: NotificationSystem.Show("message", "success")

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Type Definitions
local typeColors = {
	info = Color3.fromRGB(0, 176, 255),
	success = Color3.fromRGB(0, 220, 130),
	error = Color3.fromRGB(255, 95, 95),
	warn = Color3.fromRGB(255, 196, 50)
}

local typeIcons = {
	info = "🛈",
	success = "✔",
	error = "✖",
	warn = "⚠"
}

local activeNotifs = {}
local WIDTH, HEIGHT, PADDING = 340, 70, 10
local DURATION = 4

local function createUIBase()
	local gui = PlayerGui:FindFirstChild("NotificationSystem")
	if not gui then
		gui = Instance.new("ScreenGui")
		gui.Name = "NotificationSystem"
		gui.ResetOnSpawn = false
		gui.IgnoreGuiInset = true
		gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
		gui.Parent = PlayerGui
	end
	return gui
end

local function removeNotification(notif)
	local tweenOut = TweenService:Create(notif, TweenInfo.new(0.3), {
		Position = notif.Position + UDim2.new(0, 0, 0, 20),
		BackgroundTransparency = 1
	})
	tweenOut:Play()
	tweenOut.Completed:Wait()
	notif:Destroy()

	table.remove(activeNotifs, table.find(activeNotifs, notif))

	for i, n in ipairs(activeNotifs) do
		local newY = -(i - 1) * (HEIGHT + PADDING) - 20
		TweenService:Create(n, TweenInfo.new(0.25), {
			Position = UDim2.new(1, -WIDTH - 20, 1, newY)
		}):Play()
	end
end

local function createNotification(message: string, type: string)
	type = typeColors[type] and type or "info"
	local color = typeColors[type]
	local icon = typeIcons[type] or "🛈"
	local screenGui = createUIBase()

	local offsetY = #activeNotifs * (HEIGHT + PADDING)
	local notif = Instance.new("Frame")
	notif.Size = UDim2.new(0, WIDTH, 0, HEIGHT)
	notif.Position = UDim2.new(1, -WIDTH - 20, 1, -(offsetY + 20))
	notif.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
	notif.BackgroundTransparency = 0.15
	notif.BorderSizePixel = 0
	notif.AnchorPoint = Vector2.new(1, 1)
	notif.ClipsDescendants = true
	notif.ZIndex = 10
	notif.Parent = screenGui

	-- Rounded corner
	Instance.new("UICorner", notif).CornerRadius = UDim.new(0, 14)

	-- Thin accent bar
	local bar = Instance.new("Frame", notif)
	bar.Size = UDim2.new(0, 6, 1, 0)
	bar.Position = UDim2.new(0, 0, 0, 0)
	bar.BackgroundColor3 = color
	bar.BorderSizePixel = 0
	Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 6)

	-- Subtle border stroke
	local stroke = Instance.new("UIStroke", notif)
	stroke.Thickness = 1
	stroke.Color = Color3.fromRGB(255, 255, 255)
	stroke.Transparency = 0.85
	stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	-- Hover animation (background lightens slightly)
	notif.MouseEnter:Connect(function()
		TweenService:Create(notif, TweenInfo.new(0.2), { BackgroundTransparency = 0.1 }):Play()
	end)
	notif.MouseLeave:Connect(function()
		TweenService:Create(notif, TweenInfo.new(0.2), { BackgroundTransparency = 0.15 }):Play()
	end)

	-- Icon
	local iconLabel = Instance.new("TextLabel", notif)
	iconLabel.Size = UDim2.new(0, 50, 1, 0)
	iconLabel.Position = UDim2.new(0, 16, 0, 0)
	iconLabel.BackgroundTransparency = 1
	iconLabel.Text = icon
	iconLabel.Font = Enum.Font.GothamBold
	iconLabel.TextSize = 28
	iconLabel.TextColor3 = Color3.fromRGB(240, 240, 240) -- White/neutral
	iconLabel.TextXAlignment = Enum.TextXAlignment.Left
	iconLabel.ZIndex = 11

	-- Message text
	local messageLabel = Instance.new("TextLabel", notif)
	messageLabel.Size = UDim2.new(1, -100, 1, -20)
	messageLabel.Position = UDim2.new(0, 60, 0, 10)
	messageLabel.BackgroundTransparency = 1
	messageLabel.Text = message
	messageLabel.Font = Enum.Font.Gotham
	messageLabel.TextSize = 18
	messageLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
	messageLabel.TextWrapped = true
	messageLabel.TextXAlignment = Enum.TextXAlignment.Left
	messageLabel.TextYAlignment = Enum.TextYAlignment.Top
	messageLabel.ZIndex = 11

	-- ✕ Dismiss button
	local closeButton = Instance.new("TextButton", notif)
	closeButton.Text = "✕"
	closeButton.Size = UDim2.new(0, 25, 0, 25)
	closeButton.Position = UDim2.new(1, -30, 0, 5)
	closeButton.BackgroundTransparency = 1
	closeButton.Font = Enum.Font.GothamBold
	closeButton.TextSize = 20
	closeButton.TextColor3 = Color3.fromRGB(180, 180, 180)
	closeButton.ZIndex = 12
	closeButton.AutoButtonColor = false

	closeButton.MouseEnter:Connect(function()
		TweenService:Create(closeButton, TweenInfo.new(0.2), {
			TextColor3 = Color3.fromRGB(255, 255, 255)
		}):Play()
	end)
	closeButton.MouseLeave:Connect(function()
		TweenService:Create(closeButton, TweenInfo.new(0.2), {
			TextColor3 = Color3.fromRGB(180, 180, 180)
		}):Play()
	end)

	closeButton.MouseButton1Click:Connect(function()
		removeNotification(notif)
	end)

	table.insert(activeNotifs, notif)

	notif.Position = notif.Position + UDim2.new(0, 0, 0, 20)
	notif.BackgroundTransparency = 1
	TweenService:Create(notif, TweenInfo.new(0.35), {
		Position = UDim2.new(1, -WIDTH - 20, 1, -(offsetY + 20)),
		BackgroundTransparency = 0.15
	}):Play()

	task.delay(DURATION, function()
		if notif and notif.Parent then
			removeNotification(notif)
		end
	end)
end

-- Public Interface
local NotificationSystem = {}
function NotificationSystem.Show(message: string, type: string)
	createNotification(message, type)
end

return NotificationSystem
