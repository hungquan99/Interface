local Notif = {}

local CoreGUI = game:GetService("CoreGui")
local TS = game:GetService("TweenService")
local US = game:GetService("UserInputService")

local HIDEUI = get_hidden_gui or gethui
if syn and typeof(syn) == "table" and RenderWindow then syn.protect_gui = gethui end

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
screen_gui.IgnoreGuiInset = true
screen_gui.ResetOnSpawn = false
Hide_UI(screen_gui)

local frame = Instance.new("Frame")
frame.AnchorPoint = Vector2.new(0.5, 1)
frame.BackgroundTransparency = 1
frame.Position = UDim2.new(0.5, 0, 1, -20)
frame.Size = UDim2.new(0, 400, 0, 300) -- Increased height to accommodate more notifications
frame.Parent = screen_gui

local uilist_layout = Instance.new("UIListLayout")
uilist_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uilist_layout.Padding = UDim.new(0, 8)
uilist_layout.Parent = frame

-- Notification type configurations
local NOTIF_TYPES = {
    Success = {
        BackgroundColor = Color3.fromRGB(40, 167, 69),
        TextColor = Color3.fromRGB(220, 255, 220),
        Icon = "rbxassetid://3926305904",
        IconOffset = Vector2.new(524, 4) -- Checkmark icon
    },
    Warning = {
        BackgroundColor = Color3.fromRGB(255, 193, 7),
        TextColor = Color3.fromRGB(255, 255, 220),
        Icon = "rbxassetid://3926305904",
        IconOffset = Vector2.new(404, 324) -- Warning icon
    },
    Info = {
        BackgroundColor = Color3.fromRGB(0, 123, 255),
        TextColor = Color3.fromRGB(220, 220, 255),
        Icon = "rbxassetid://3926305904",
        IconOffset = Vector2.new(44, 724) -- Info icon
    },
    Default = {
        BackgroundColor = Color3.fromRGB(30, 30, 30),
        TextColor = Color3.fromRGB(220, 220, 220),
        Icon = "rbxassetid://3926305904",
        IconOffset = Vector2.new(924, 724) -- Default close icon
    }
}

function Notif.New(config)
    config = config or {}
    local notifType = config.Type and NOTIF_TYPES[config.Type] and config.Type or "Default"
    local typeConfig = NOTIF_TYPES[notifType]
    
    local text = config.Text or "Notification"
    local timee = config.Duration or 5
    local bgColor = config.BackgroundColor or typeConfig.BackgroundColor
    local textColor = config.TextColor or typeConfig.TextColor
    local icon = config.Icon or typeConfig.Icon
    local iconOffset = config.IconOffset or typeConfig.IconOffset

    local frame_2 = Instance.new("Frame")
    frame_2.BackgroundTransparency = 1
    frame_2.Size = UDim2.new(0, 0, 0, 0)
    frame_2.Parent = frame

    local frame_3 = Instance.new("Frame")
    frame_3.AnchorPoint = Vector2.new(0.5, 1)
    frame_3.AutomaticSize = Enum.AutomaticSize.XY -- Auto-size for both X and Y
    frame_3.BackgroundColor3 = bgColor
    frame_3.BackgroundTransparency = 0.1
    frame_3.Position = UDim2.new(0.5, 0, 1, 60)
    frame_3.Size = UDim2.new(0, 0, 0, 0) -- Start with zero size for animation
    frame_3.Parent = frame_2

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0, 8)
    uicorner.Parent = frame_3

    local uipadding = Instance.new("UIPadding")
    uipadding.PaddingBottom = UDim.new(0, 8)
    uipadding.PaddingLeft = UDim.new(0, 12)
    uipadding.PaddingRight = UDim.new(0, 12)
    uipadding.PaddingTop = UDim.new(0, 8)
    uipadding.Parent = frame_3

    local uistroke = Instance.new("UIStroke")
    uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    uistroke.Color = Color3.fromRGB(60, 60, 60)
    uistroke.Thickness = 1
    uistroke.Transparency = 0.5
    uistroke.Parent = frame_3

    local uigradient = Instance.new("UIGradient")
    uigradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, bgColor),
        ColorSequenceKeypoint.new(1, bgColor:Lerp(Color3.new(0, 0, 0), 0.2))
    })
    uigradient.Rotation = 45
    uigradient.Parent = frame_3

    local inner_frame = Instance.new("Frame")
    inner_frame.BackgroundTransparency = 1
    inner_frame.Size = UDim2.new(1, -50, 1, 0) -- Reserve space for close button
    inner_frame.Parent = frame_3

    local inner_layout = Instance.new("UIListLayout")
    inner_layout.FillDirection = Enum.FillDirection.Horizontal
    inner_layout.HorizontalAlignment = Enum.HorizontalAlignment.Left
    inner_layout.VerticalAlignment = Enum.VerticalAlignment.Center
    inner_layout.Padding = UDim.new(0, 8)
    inner_layout.Parent = inner_frame

    local icon_label = Instance.new("ImageLabel")
    icon_label.Image = icon
    icon_label.ImageColor3 = textColor
    icon_label.ImageRectOffset = iconOffset
    icon_label.ImageRectSize = Vector2.new(36, 36)
    icon_label.BackgroundTransparency = 1
    icon_label.Size = UDim2.new(0, 24, 0, 24)
    icon_label.Parent = inner_frame

    local text_label = Instance.new("TextLabel")
    text_label.Font = Enum.Font.GothamMedium
    text_label.Text = text
    text_label.TextColor3 = textColor
    text_label.TextSize = 16
    text_label.TextTransparency = 0
    text_label.TextWrapped = true
    text_label.TextXAlignment = Enum.TextXAlignment.Left
    text_label.AutomaticSize = Enum.AutomaticSize.XY
    text_label.BackgroundTransparency = 1
    text_label.Size = UDim2.new(0, 0, 0, 0)
    text_label.Parent = inner_frame

    local text_button = Instance.new("TextButton")
    text_button.Text = ""
    text_button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    text_button.BackgroundTransparency = 0.9
    text_button.AnchorPoint = Vector2.new(1, 0.5)
    text_button.Position = UDim2.new(1, -5, 0.5, 0)
    text_button.Size = UDim2.new(0, 28, 0, 28)
    text_button.Parent = frame_3

    local uicorner_2 = Instance.new("UICorner")
    uicorner_2.CornerRadius = UDim.new(0, 6)
    uicorner_2.Parent = text_button

    local close_button = Instance.new("ImageButton")
    close_button.Image = "rbxassetid://3926305904"
    close_button.ImageColor3 = textColor
    close_button.ImageRectOffset = Vector2.new(924, 724)
    close_button.ImageRectSize = Vector2.new(36, 36)
    close_button.AnchorPoint = Vector2.new(0.5, 0.5)
    close_button.BackgroundTransparency = 1
    close_button.Position = UDim2.new(0.5, 0, 0.5, 0)
    close_button.Size = UDim2.new(0, 20, 0, 20)
    close_button.ZIndex = 2
    close_button.Parent = text_button

    -- Animations
    local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    TS:Create(frame_3, tweenInfo, { Position = UDim2.new(0.5, 0, 1, 0) }):Play()
    TS:Create(frame_2, tweenInfo, { Size = UDim2.new(0, 300, 0, 40) }):Play()
    TS:Create(frame_3, tweenInfo, { BackgroundTransparency = 0.1 }):Play()

    local function close_notif()
        local outTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
        TS:Create(close_button, outTweenInfo, { ImageTransparency = 1 }):Play()
        TS:Create(text_button, outTweenInfo, { BackgroundTransparency = 1 }):Play()
        TS:Create(text_label, outTweenInfo, { TextTransparency = 1 }):Play()
        TS:Create(icon_label, outTweenInfo, { ImageTransparency = 1 }):Play()
        TS:Create(frame_3, outTweenInfo, { BackgroundTransparency = 1 }):Play()
        TS:Create(uistroke, outTweenInfo, { Transparency = 1 }):Play()
        TS:Create(frame_2, outTweenInfo, { Size = UDim2.new(0, 300, 0, 0) }):Play()
        task.delay(0.35, function() frame_2:Destroy() end)
    end

    -- Hover effects
    text_button.MouseEnter:Connect(function()
        TS:Create(text_button, TweenInfo.new(0.2), { 
            BackgroundTransparency = 0.7,
            BackgroundColor3 = Color3.fromRGB(70, 70, 70)
        }):Play()
        TS:Create(close_button, TweenInfo.new(0.2), { 
            ImageColor3 = Color3.fromRGB(255, 80, 80)
        }):Play()
    end)

    text_button.MouseLeave:Connect(function()
        TS:Create(text_button, TweenInfo.new(0.2), { 
            BackgroundTransparency = 0.9,
            BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        }):Play()
        TS:Create(close_button, TweenInfo.new(0.2), { 
            ImageColor3 = textColor
        }):Play()
    end)

    -- Click handlers
    text_button.MouseButton1Click:Connect(close_notif)
    close_button.MouseButton1Click:Connect(close_notif)
    
    -- Keyboard shortcut to close (Escape key)
    local connection
    connection = US.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.Escape then
            close_notif()
            connection:Disconnect()
        end
    end)

    -- Auto-close
    task.delay(timee, close_notif)
    
    return {
        Close = close_notif,
        UpdateText = function(newText)
            text_label.Text = newText
        end,
        UpdateColor = function(newBgColor, newTextColor)
            frame_3.BackgroundColor3 = newBgColor or frame_3.BackgroundColor3
            text_label.TextColor3 = newTextColor or text_label.TextColor3
            icon_label.ImageColor3 = newTextColor or icon_label.ImageColor3
            close_button.ImageColor3 = newTextColor or close_button.ImageColor3
        end,
        UpdateType = function(newType)
            local newTypeConfig = NOTIF_TYPES[newType] or NOTIF_TYPES.Default
            frame_3.BackgroundColor3 = newTypeConfig.BackgroundColor
            text_label.TextColor3 = newTypeConfig.TextColor
            icon_label.ImageColor3 = newTypeConfig.TextColor
            close_button.ImageColor3 = newTypeConfig.TextColor
            icon_label.Image = newTypeConfig.Icon
            icon_label.ImageRectOffset = newTypeConfig.IconOffset
        end
    }
end

return Notif
