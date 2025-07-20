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
frame.Size = UDim2.new(0, 400, 0, 200)
frame.Parent = screen_gui

local uilist_layout = Instance.new("UIListLayout")
uilist_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uilist_layout.Padding = UDim.new(0, 8)
uilist_layout.Parent = frame

function Notif.New(config)
    config = config or {}
    local text = config.Text or "Notification"
    local timee = config.Duration or 5
    local bgColor = config.BackgroundColor or Color3.fromRGB(30, 30, 30)
    local textColor = config.TextColor or Color3.fromRGB(220, 220, 220)
    local icon = config.Icon or "rbxassetid://3926305904"
    local iconOffset = config.IconOffset or Vector2.new(924, 724)

    local frame_2 = Instance.new("Frame")
    frame_2.BackgroundTransparency = 1
    frame_2.Size = UDim2.new(0, 0, 0, 0)
    frame_2.Parent = frame

    local frame_3 = Instance.new("Frame")
    frame_3.AnchorPoint = Vector2.new(0.5, 1)
    frame_3.AutomaticSize = Enum.AutomaticSize.X
    frame_3.BackgroundColor3 = bgColor
    frame_3.BackgroundTransparency = 0.1
    frame_3.Position = UDim2.new(0.5, 0, 1, 60)
    frame_3.Size = UDim2.new(0, 0, 0, 40)
    frame_3.Parent = frame_2

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0, 8)
    uicorner.Parent = frame_3

    local uipadding = Instance.new("UIPadding")
    uipadding.PaddingBottom = UDim.new(0, 6)
    uipadding.PaddingLeft = UDim.new(0, 12)
    uipadding.PaddingRight = UDim.new(0, 12)
    uipadding.PaddingTop = UDim.new(0, 6)
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

    local text_label = Instance.new("TextLabel")
    text_label.Font = Enum.Font.GothamMedium
    text_label.Text = text
    text_label.TextColor3 = textColor
    text_label.TextSize = 16
    text_label.TextTransparency = 0
    text_label.TextWrapped = true
    text_label.TextXAlignment = Enum.TextXAlignment.Left
    text_label.AutomaticSize = Enum.AutomaticSize.X
    text_label.BackgroundTransparency = 1
    text_label.Size = UDim2.new(0, 0, 0, 28)
    text_label.Parent = frame_3

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

    local image_button = Instance.new("ImageButton")
    image_button.Image = icon
    image_button.ImageColor3 = textColor
    image_button.ImageRectOffset = iconOffset
    image_button.ImageRectSize = Vector2.new(36, 36)
    image_button.AnchorPoint = Vector2.new(0.5, 0.5)
    image_button.BackgroundTransparency = 1
    image_button.Position = UDim2.new(0.5, 0, 0.5, 0)
    image_button.Size = UDim2.new(0, 20, 0, 20)
    image_button.ZIndex = 2
    image_button.Parent = text_button

    -- Animations
    local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    TS:Create(frame_3, tweenInfo, { Position = UDim2.new(0.5, 0, 1, 0) }):Play()
    TS:Create(frame_2, tweenInfo, { Size = UDim2.new(0, 300, 0, 40) }):Play()
    TS:Create(frame_3, tweenInfo, { BackgroundTransparency = 0.1 }):Play()

    local function close_notif()
        local outTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
        TS:Create(image_button, outTweenInfo, { ImageTransparency = 1 }):Play()
        TS:Create(text_button, outTweenInfo, { BackgroundTransparency = 1 }):Play()
        TS:Create(text_label, outTweenInfo, { TextTransparency = 1 }):Play()
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
        TS:Create(image_button, TweenInfo.new(0.2), { 
            ImageColor3 = Color3.fromRGB(255, 80, 80)
        }):Play()
    end)

    text_button.MouseLeave:Connect(function()
        TS:Create(text_button, TweenInfo.new(0.2), { 
            BackgroundTransparency = 0.9,
            BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        }):Play()
        TS:Create(image_button, TweenInfo.new(0.2), { 
            ImageColor3 = textColor
        }):Play()
    end)

    -- Click handlers
    text_button.MouseButton1Click:Connect(close_notif)
    image_button.MouseButton1Click:Connect(close_notif)
    
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
            image_button.ImageColor3 = newTextColor or image_button.ImageColor3
        end
    }
end

return Notif
