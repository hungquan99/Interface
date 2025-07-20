--[[
    NotificationSystem.Show("Your message here", "info") -- types: info, success, error, warn
]]

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- Create or get the screen GUI
local screenGui = PlayerGui:FindFirstChild("NotificationSystem") or Instance.new("ScreenGui")
screenGui.Name = "NotificationSystem"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui

-- Notification types and their colors
local typeColors = {
    info = Color3.fromRGB(0, 170, 255),
    success = Color3.fromRGB(0, 200, 100),
    error = Color3.fromRGB(255, 80, 80),
    warn = Color3.fromRGB(255, 170, 0)
}

-- Notification settings
local DURATION = 4
local WIDTH, HEIGHT = 300, 60
local PADDING = 10

-- Track current notifications for stacking
local activeNotifications = {}

-- Main notification function
local NotificationSystem = {}

function NotificationSystem.Show(message: string, type: string)
    type = typeColors[type] and type or "info"
    local color = typeColors[type]

    -- Create notification frame
    local notify = Instance.new("Frame")
    notify.Size = UDim2.new(0, WIDTH, 0, HEIGHT)
    notify.Position = UDim2.new(1, -WIDTH - 20, 1, 100)
    notify.BackgroundColor3 = color
    notify.BackgroundTransparency = 1
    notify.BorderSizePixel = 0
    notify.AnchorPoint = Vector2.new(1, 1)
    notify.Parent = screenGui
    notify.ClipsDescendants = true
    notify.Name = "Notification"

    -- Rounded Corners
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 12)
    corner.Parent = notify

    -- Text
    local text = Instance.new("TextLabel")
    text.Text = message
    text.Size = UDim2.new(1, -20, 1, -20)
    text.Position = UDim2.new(0, 10, 0, 10)
    text.Font = Enum.Font.GothamMedium
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
    text.TextScaled = true
    text.BackgroundTransparency = 1
    text.TextWrapped = true
    text.Parent = notify

    -- Calculate position for stacking
    local offsetY = #activeNotifications * (HEIGHT + PADDING)
    notify.Position = UDim2.new(1, -WIDTH - 20, 1, -(offsetY + 20))

    table.insert(activeNotifications, notify)

    -- Animate In
    TweenService:Create(notify, TweenInfo.new(0.35, Enum.EasingStyle.Sine), {
        BackgroundTransparency = 0,
        Position = notify.Position + UDim2.new(0, 0, 0, -10)
    }):Play()

    -- Auto-remove after duration
    task.delay(DURATION, function()
        local outTween = TweenService:Create(notify, TweenInfo.new(0.35, Enum.EasingStyle.Sine), {
            BackgroundTransparency = 1,
            Position = notify.Position + UDim2.new(0, 0, 0, 20)
        })
        outTween:Play()
        outTween.Completed:Wait()
        notify:Destroy()

        -- Remove from stack and update remaining
        table.remove(activeNotifications, table.find(activeNotifications, notify))
        for i, notif in ipairs(activeNotifications) do
            local newY = -(i - 1) * (HEIGHT + PADDING) - 20
            TweenService:Create(notif, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
                Position = UDim2.new(1, -WIDTH - 20, 1, newY)
            }):Play()
        end
    end)
end

-- Example test
-- NotificationSystem.Show("Loading script...", "info")
-- NotificationSystem.Show("Script loaded successfully!", "success")
-- NotificationSystem.Show("An error occurred.", "error")
-- NotificationSystem.Show("Missing permissions!", "warn")

return NotificationSystem
