local Notif = {}

local CoreGUI = game:GetService("CoreGui")
local TS = game:GetService("TweenService")

local HIDEUI = get_hidden_gui or gethui
if syn and typeof(syn) == "table" and RenderWindow then syn.protect_gui = gethui; end
local function Hide_UI(gui)
    if HIDEUI then
        gui["Parent"] = HIDEUI()
    elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
        syn.protect_gui(gui)
        gui["Parent"] = CoreGUI
    elseif CoreGUI:FindFirstChild('RobloxGui') then
        gui["Parent"] = CoreGUI.RobloxGui
    else
        gui["Parent"] = CoreGUI
    end
end

local screen_gui = Instance.new("ScreenGui")
Hide_UI(screen_gui)

local frame = Instance.new("Frame")
frame.AnchorPoint = Vector2.new(0.5, 0.95)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 1
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.5, 0, 0.955, 0)
frame.Size = UDim2.new(0, 100, 0, 100)
frame.Visible = true
frame.Parent = screen_gui

local uilist_layout = Instance.new("UIListLayout")
uilist_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uilist_layout.Parent = frame

function Notif.New(text, timee, type)
    local frame_2 = Instance.new("Frame")
    frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
    frame_2.BorderColor3 = Color3.new(0, 0, 0)
    frame_2.BorderSizePixel = 0
    frame_2.BackgroundTransparency = 1
    frame_2.Size = UDim2.new(0, 100, 0, 0)
    frame_2.Visible = true
    frame_2.Parent = frame

    local typeColors = {
        success = Color3.fromRGB(76, 175, 80), -- green
        warning = Color3.fromRGB(255, 193, 7), -- yellow
        fail    = Color3.fromRGB(244, 67, 54), -- red
        info    = Color3.fromRGB(33, 150, 243), -- blue
    }

    local typeIcons = {
        success = "rbxassetid://10709790387",
        warning = "rbxassetid://10709753149",
        fail    = "rbxassetid://10747383819",
        info    = "rbxassetid://10723415903",
    }

    local baseColor = Color3.fromRGB(36, 36, 36)
    local accentColor = typeColors[type] or baseColor
    local iconAsset = typeIcons[type]

    local frame_3 = Instance.new("Frame")
    frame_3.AnchorPoint = Vector2.new(0.5, 1)
    frame_3.AutomaticSize = Enum.AutomaticSize.X
    frame_3.BackgroundColor3 = baseColor
    frame_3.BackgroundTransparency = 0.2
    frame_3.BorderColor3 = Color3.new(0, 0, 0)
    frame_3.Position = UDim2.new(0.5, 0, 1, 60)
    frame_3.Size = UDim2.new(0, 0, 0, 30)
    frame_3.Visible = true
    frame_3.Parent = frame_2

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0, 6)
    uicorner.Parent = frame_3

    local uipadding = Instance.new("UIPadding")
    uipadding.PaddingBottom = UDim.new(0, 3)
    uipadding.PaddingLeft = UDim.new(0, 8)
    uipadding.PaddingRight = UDim.new(0, 8)
    uipadding.PaddingTop = UDim.new(0, 3)
    uipadding.Parent = frame_3

    local uistroke = Instance.new("UIStroke")
    uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    uistroke.Color = accentColor
    uistroke.Parent = frame_3

    local frame_3_layout = Instance.new("UIListLayout")
    frame_3_layout.FillDirection = Enum.FillDirection.Horizontal
    frame_3_layout.HorizontalAlignment = Enum.HorizontalAlignment.Left
    frame_3_layout.VerticalAlignment = Enum.VerticalAlignment.Center
    frame_3_layout.SortOrder = Enum.SortOrder.LayoutOrder
    frame_3_layout.Padding = UDim.new(0, 8)
    frame_3_layout.Parent = frame_3

    if iconAsset then
        local icon = Instance.new("ImageLabel")
        icon.Image = iconAsset
        icon.BackgroundTransparency = 1
        icon.Size = UDim2.new(0, 20, 0, 20)
        icon.LayoutOrder = 1
        icon.Parent = frame_3
    end

    local text_label = Instance.new("TextLabel")
    text_label.Font = Enum.Font.Gotham
    text_label.Text = text
    text_label.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    text_label.TextSize = 14
    text_label.AutomaticSize = Enum.AutomaticSize.X
    text_label.BackgroundColor3 = Color3.new(1, 1, 1)
    text_label.BackgroundTransparency = 1
    text_label.BorderColor3 = Color3.new(0, 0, 0)
    text_label.BorderSizePixel = 0
    text_label.Size = UDim2.new(0, 0, 0, 24)
    text_label.LayoutOrder = 2
    text_label.Parent = frame_3

    local uipadding_2 = Instance.new("UIPadding")
    uipadding_2.PaddingLeft = UDim.new(0, 0)
    uipadding_2.PaddingRight = UDim.new(0, 0)
    uipadding_2.Parent = text_label

    local text_button = Instance.new("TextButton")
    text_button.Font = Enum.Font.SourceSans
    text_button.Text = ""
    text_button.TextColor3 = Color3.new(0, 0, 0)
    text_button.TextSize = 14
    text_button.BackgroundColor3 = Color3.new(0, 0, 0)
    text_button.BackgroundTransparency = 1
    text_button.BorderColor3 = Color3.new(0, 0, 0)
    text_button.BorderSizePixel = 0
    text_button.Size = UDim2.new(0, 24, 0, 24)
    text_button.LayoutOrder = 3
    text_button.Parent = frame_3

    local uicorner_2 = Instance.new("UICorner")
    uicorner_2.CornerRadius = UDim.new(0, 5)
    uicorner_2.Parent = text_button

    local image_button = Instance.new("ImageButton")
    image_button.Image = "rbxassetid://3926305904"
    image_button.ImageColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    image_button.ImageRectOffset = Vector2.new(924, 724)
    image_button.ImageRectSize = Vector2.new(36, 36)
    image_button.AnchorPoint = Vector2.new(0.5, 0.5)
    image_button.BackgroundTransparency = 1
    image_button.Position = UDim2.new(0.5, 0, 0.5, 0)
    image_button.Size = UDim2.new(0, 18, 0, 18)
    image_button.Visible = true
    image_button.ZIndex = 2
    image_button.Parent = text_button

    TS:Create(frame_3, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Position = UDim2.new(0.5, 0, 1, 0) }):Play()
    TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 35) }):Play()

    local function close_notif()
        TS:Create(image_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { ImageTransparency = 1 }):Play()
        TS:Create(text_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TS:Create(text_label, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { TextTransparency = 1 }):Play()
        task.wait(0.17)
        TS:Create(frame_3, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TS:Create(uistroke, TweenInfo.new(0.24, Enum.EasingStyle.Quint), { Transparency = 1 }):Play()
        task.wait(0.05)
        TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 0) }):Play()
        task.wait(0.2)
        frame_2:Destroy()
    end

    text_button.MouseEnter:Connect(function()
        TS:Create(text_button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 0.8 }):Play()
        TS:Create(image_button, TweenInfo.new(0.3, Enum.EasingStyle.Quint),
            { ImageColor3 = Color3.new(0.890196, 0.054902, 0.054902) }):Play()
    end)

    text_button.MouseLeave:Connect(function()
        TS:Create(text_button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
        TS:Create(image_button, TweenInfo.new(0.3, Enum.EasingStyle.Quint),
            { ImageColor3 = Color3.new(0.784314, 0.784314, 0.784314) }):Play()
    end)

    text_button.MouseButton1Click:Connect(close_notif)
    image_button.MouseButton1Click:Connect(close_notif)
    task.delay(tonumber(timee) and timee or 10, close_notif)
end

return Notif
