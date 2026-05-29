local url = "https://hungquan99.site/checkua"
local response = game:HttpGet(url)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "HttpGetViewer"
screenGui.ResetOnSpawn = false
local success, coreGui = pcall(function() return game:GetService("CoreGui") end)
if success and coreGui then
    screenGui.Parent = coreGui
else
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 450, 0, 250)
frame.Position = UDim2.new(0.5, -225, 0.5, -125)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 8)
uiCorner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 35)
title.BackgroundTransparency = 1
title.Text = " Response Viewer"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 18
title.Font = Enum.Font.GothamBold
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = frame

local titlePadding = Instance.new("UIPadding")
titlePadding.PaddingLeft = UDim.new(0, 15)
titlePadding.Parent = title

local resultLabel = Instance.new("TextLabel")
resultLabel.Size = UDim2.new(1, -30, 1, -90)
resultLabel.Position = UDim2.new(0, 15, 0, 40)
resultLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
resultLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
resultLabel.TextSize = 14
resultLabel.Font = Enum.Font.Code
resultLabel.TextWrapped = true
resultLabel.TextXAlignment = Enum.TextXAlignment.Left
resultLabel.TextYAlignment = Enum.TextYAlignment.Top
resultLabel.Text = response
resultLabel.Parent = frame

local resultCorner = Instance.new("UICorner")
resultCorner.CornerRadius = UDim.new(0, 5)
resultCorner.Parent = resultLabel

local textPadding = Instance.new("UIPadding")
textPadding.PaddingLeft = UDim.new(0, 10)
textPadding.PaddingRight = UDim.new(0, 10)
textPadding.PaddingTop = UDim.new(0, 10)
textPadding.PaddingBottom = UDim.new(0, 10)
textPadding.Parent = resultLabel

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(1, -30, 0, 30)
closeBtn.Position = UDim2.new(0, 15, 1, -40)
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 14
closeBtn.Text = "Close"
closeBtn.Parent = frame

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 5)
btnCorner.Parent = closeBtn

closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
