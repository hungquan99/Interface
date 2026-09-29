local Players       = game:GetService("Players")
local TweenService  = game:GetService("TweenService")
local TextService   = game:GetService("TextService")
local RunService    = game:GetService("RunService")
local CoreGui       = game:GetService("CoreGui")

local Notify = {}

local CONFIG = {
    Width           = 290,
    Anchor          = UDim2.new(1, -18, 0.76, 0),
    MaxVisible      = 5,
    DefaultDuration = 5,
    ShowProgress    = true,
    Spacing         = 8,
    CornerRadius    = 10,

    Background      = Color3.fromRGB(16, 17, 22),
    BackgroundAlpha = 0.08,
    TitleColor      = Color3.fromRGB(245, 245, 250),
    ContentColor    = Color3.fromRGB(170, 172, 185),
    CloseColor      = Color3.fromRGB(150, 152, 165),

    TitleFont       = Enum.Font.GothamBold,
    ContentFont     = Enum.Font.Gotham,
    TitleSize       = 14,
    ContentSize     = 13,
}

local typeIcons = {
    success = "rbxassetid://10709790387",
    warning = "rbxassetid://10709753149",
    fail    = "rbxassetid://10747383819",
    info    = "rbxassetid://10723415903",
}
local CLOSE_ICON = "rbxassetid://110786993356448"

local THEMES = {
    success = { Color = Color3.fromRGB(46, 213, 115),  Icon = typeIcons.success },
    fail    = { Color = Color3.fromRGB(255, 71, 87),   Icon = typeIcons.fail },
    warning = { Color = Color3.fromRGB(255, 177, 66),  Icon = typeIcons.warning },
    info    = { Color = Color3.fromRGB(83, 145, 255),  Icon = typeIcons.info },
}
THEMES.error = THEMES.fail

local function create(class, props, children)
    local obj = Instance.new(class)
    for k, v in pairs(props or {}) do
        if k ~= "Parent" then obj[k] = v end
    end
    for _, child in ipairs(children or {}) do
        child.Parent = obj
    end
    if props and props.Parent then obj.Parent = props.Parent end
    return obj
end

local function tween(obj, time, props, style, dir)
    local t = TweenService:Create(
        obj,
        TweenInfo.new(time, style or Enum.EasingStyle.Quint, dir or Enum.EasingDirection.Out),
        props
    )
    t:Play()
    return t
end

local function getGuiParent(gui)
    local ok, hui = pcall(function() return gethui and gethui() end)
    if ok and hui then
        gui.Parent = hui
        return
    end
    if syn and syn.protect_gui then
        pcall(syn.protect_gui, gui)
    end
    if pcall(function() gui.Parent = CoreGui end) then return end
    gui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
end

local ScreenGui = create("ScreenGui", {
    Name = "ModernNotifications",
    ResetOnSpawn = false,
    IgnoreGuiInset = true,
    DisplayOrder = 999,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
})
getGuiParent(ScreenGui)

local Holder = create("Frame", {
    Name = "Holder",
    AnchorPoint = Vector2.new(1, 1),
    Position = CONFIG.Anchor,
    Size = UDim2.new(0, CONFIG.Width, 0.7, 0),
    BackgroundTransparency = 1,
    Parent = ScreenGui,
}, {
    create("UIListLayout", {
        SortOrder = Enum.SortOrder.LayoutOrder,
        VerticalAlignment = Enum.VerticalAlignment.Bottom,
        HorizontalAlignment = Enum.HorizontalAlignment.Right,
        Padding = UDim.new(0, CONFIG.Spacing),
    }),
})

local UIScale = create("UIScale", { Parent = Holder })
local function updateScale()
    local cam = workspace.CurrentCamera
    if not cam then return end
    UIScale.Scale = math.clamp(cam.ViewportSize.X / 1600, 0.75, 1)
end
updateScale()
if workspace.CurrentCamera then
    workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(updateScale)
end

local order = 0
local active = {}

function Notify.new(opts)
    opts = opts or {}
    local title    = tostring(opts.Title or "Notification")
    local content  = tostring(opts.Content or "")
    local duration = tonumber(opts.Duration) or CONFIG.DefaultDuration
    local theme    = THEMES[string.lower(tostring(opts.Type or "info"))] or THEMES.info
    local showProgress = opts.ShowProgress
    if showProgress == nil then showProgress = CONFIG.ShowProgress end

    order += 1

    local textWidth = CONFIG.Width - 54 - 34
    local contentH = 0
    if content ~= "" then
        contentH = TextService:GetTextSize(
            content, CONFIG.ContentSize, CONFIG.ContentFont, Vector2.new(textWidth, 1000)
        ).Y
    end
    local hasBar = showProgress and duration > 0
    local bottomPad = hasBar and 16 or 12
    local minHeight = hasBar and 60 or 54
    local height = math.max(minHeight, 12 + 18 + (contentH > 0 and (3 + contentH) or 0) + bottomPad)

    local wrapper = create("Frame", {
        Name = "Notif_" .. order,
        LayoutOrder = order,
        Size = UDim2.new(1, 0, 0, 0),
        BackgroundTransparency = 1,
        Parent = Holder,
    })

    local card = create("Frame", {
        Name = "Card",
        Size = UDim2.new(1, 0, 0, height),
        Position = UDim2.new(1, 40, 0, 0),
        BackgroundColor3 = CONFIG.Background,
        BackgroundTransparency = CONFIG.BackgroundAlpha,
        Parent = wrapper,
    }, {
        create("UICorner", { CornerRadius = UDim.new(0, CONFIG.CornerRadius) }),
        create("UIStroke", {
            Color = Color3.fromRGB(255, 255, 255),
            Transparency = 0.9,
            Thickness = 1,
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        }),
    })

    local clip = create("CanvasGroup", {
        Name = "Clip",
        Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1,
        Parent = card,
    }, {
        create("UICorner", { CornerRadius = UDim.new(0, CONFIG.CornerRadius) }),
    })

    create("Frame", {
        Name = "Glow",
        Size = UDim2.new(0.55, 0, 1, 0),
        BackgroundColor3 = theme.Color,
        BorderSizePixel = 0,
        Parent = clip,
    }, {
        create("UIGradient", {
            Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0.88),
                NumberSequenceKeypoint.new(1, 1),
            }),
        }),
    })

    create("Frame", {
        Name = "Accent",
        Size = UDim2.new(0, 3, 1, 0),
        BackgroundColor3 = theme.Color,
        BorderSizePixel = 0,
        Parent = clip,
    })

    local iconBg = create("Frame", {
        Name = "IconBg",
        Size = UDim2.fromOffset(30, 30),
        Position = UDim2.fromOffset(14, 12),
        BackgroundColor3 = theme.Color,
        BackgroundTransparency = 0.82,
        Parent = clip,
    }, {
        create("UICorner", { CornerRadius = UDim.new(1, 0) }),
        create("UIStroke", {
            Color = theme.Color,
            Transparency = 0.6,
            Thickness = 1,
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        }),
    })
    create("ImageLabel", {
        Name = "Icon",
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.fromOffset(16, 16),
        BackgroundTransparency = 1,
        Image = theme.Icon,
        ImageColor3 = theme.Color,
        ScaleType = Enum.ScaleType.Fit,
        Parent = iconBg,
    })

    create("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, -54 - 34, 0, 18),
        Position = UDim2.fromOffset(54, 12),
        BackgroundTransparency = 1,
        Text = title,
        TextColor3 = CONFIG.TitleColor,
        Font = CONFIG.TitleFont,
        TextSize = CONFIG.TitleSize,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextTruncate = Enum.TextTruncate.AtEnd,
        Parent = clip,
    })

    if content ~= "" then
        create("TextLabel", {
            Name = "Content",
            Size = UDim2.new(1, -54 - 34, 0, contentH),
            Position = UDim2.fromOffset(54, 33),
            BackgroundTransparency = 1,
            Text = content,
            TextColor3 = CONFIG.ContentColor,
            Font = CONFIG.ContentFont,
            TextSize = CONFIG.ContentSize,
            TextWrapped = true,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top,
            Parent = clip,
        })
    end

    local closeBtn = create("ImageButton", {
        Name = "Close",
        Size = UDim2.fromOffset(22, 22),
        Position = UDim2.new(1, -30, 0, 9),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        AutoButtonColor = false,
        Image = "",
        Parent = clip,
    }, {
        create("UICorner", { CornerRadius = UDim.new(0, 6) }),
    })
    local closeIcon = create("ImageLabel", {
        Name = "Icon",
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.fromOffset(14, 14),
        BackgroundTransparency = 1,
        Image = CLOSE_ICON,
        ImageColor3 = CONFIG.CloseColor,
        ScaleType = Enum.ScaleType.Fit,
        Parent = closeBtn,
    })

    local track = create("Frame", {
        Name = "Track",
        Size = UDim2.new(1, 0, 0, 3),
        Position = UDim2.new(0, 0, 1, -3),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 0.94,
        BorderSizePixel = 0,
        Parent = clip,
    })
    track.Visible = hasBar
    local fill = create("Frame", {
        Name = "Fill",
        Size = UDim2.fromScale(1, 1),
        BackgroundColor3 = theme.Color,
        BorderSizePixel = 0,
        Parent = track,
    }, {
        create("UIGradient", {
            Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0.4),
                NumberSequenceKeypoint.new(1, 0),
            }),
        }),
    })

    local self = { Closed = false }
    local hovered = false
    local elapsed = 0
    local conn

    function self:Close()
        if self.Closed then return end
        self.Closed = true
        if conn then conn:Disconnect() end
        local idx = table.find(active, self)
        if idx then table.remove(active, idx) end

        task.spawn(function()
            tween(card, 0.3, { Position = UDim2.new(1, 40, 0, 0) },
                Enum.EasingStyle.Quint, Enum.EasingDirection.In)
            tween(clip, 0.3, { GroupTransparency = 1 })
            task.wait(0.22)
            local t = tween(wrapper, 0.25, { Size = UDim2.new(1, 0, 0, 0) })
            t.Completed:Wait()
            wrapper:Destroy()
        end)
    end

    card.MouseEnter:Connect(function()
        hovered = true
        tween(card, 0.2, { BackgroundTransparency = 0 })
    end)
    card.MouseLeave:Connect(function()
        hovered = false
        tween(card, 0.2, { BackgroundTransparency = CONFIG.BackgroundAlpha })
    end)

    closeBtn.MouseEnter:Connect(function()
        tween(closeBtn, 0.15, { BackgroundTransparency = 0.9 })
        tween(closeIcon, 0.15, { ImageColor3 = Color3.fromRGB(255, 255, 255) })
    end)
    closeBtn.MouseLeave:Connect(function()
        tween(closeBtn, 0.15, { BackgroundTransparency = 1 })
        tween(closeIcon, 0.15, { ImageColor3 = CONFIG.CloseColor })
    end)
    closeBtn.MouseButton1Click:Connect(function()
        self:Close()
    end)

    tween(wrapper, 0.3, { Size = UDim2.new(1, 0, 0, height) })
    tween(card, 0.45, { Position = UDim2.new(0, 0, 0, 0) }, Enum.EasingStyle.Back)

    if duration > 0 then
        conn = RunService.Heartbeat:Connect(function(dt)
            if hovered then return end
            elapsed += dt
            if showProgress then
                fill.Size = UDim2.fromScale(math.clamp(1 - elapsed / duration, 0, 1), 1)
            end
            if elapsed >= duration then
                self:Close()
            end
        end)
    end

    table.insert(active, self)
    while #active > CONFIG.MaxVisible do
        active[1]:Close()
    end

    return self
end

function Notify.ClearAll()
    for i = #active, 1, -1 do
        active[i]:Close()
    end
end

--[[
task.spawn(function()
    Notify.new({ Title = "Script Loaded", Content = "Welcome back! All features are ready.", Type = "success", Duration = 5 })
    task.wait(0.6)
    Notify.new({ Title = "Auto Quest", Content = "Started quest: Defeat 25 Yeti.", Type = "info", Duration = 6 })
    task.wait(0.6)
    Notify.new({ Title = "Low Ping Warning", Content = "Server ping is unstable, some actions may be delayed.", Type = "warning", Duration = 7 })
    task.wait(0.6)
    Notify.new({ Title = "Teleport Failed", Content = "Target NPC not found in workspace.", Type = "fail", Duration = 8, ShowProgress = false })
end)
]]

return Notify
