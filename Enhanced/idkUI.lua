--// Enhanced ProjectWD UI Library
--// Original by ProjectWD — Discord: https://discord.gg/88gR5XUpkC
--// Enhanced: Minimal design · ColorPicker · Keybind · Mobile · Bug fixes

local function randomString(length)
    local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    local str = ""
    math.randomseed(tick())
    for i = 1, length do
        local rand = math.random(1, #chars)
        str = str .. string.sub(chars, rand, rand)
    end
    return str
end

local randomUI = randomString(12)
_G.CurrentUIName = randomUI

local function SafeDestroyUI()
    pcall(function()
        local containers = {game:GetService("CoreGui")}
        if gethui then
            local altGui = gethui()
            if altGui and altGui ~= game:GetService("CoreGui") then
                table.insert(containers, altGui)
            end
        end
        for _, container in pairs(containers) do
            for _, gui in pairs(container:GetChildren()) do
                if gui:IsA("ScreenGui") and (gui.Name == "ProjectWD" or gui:GetAttribute("SecureUI")) then
                    gui:Destroy()
                end
            end
        end
    end)
end

SafeDestroyUI()

if not game:IsLoaded() then game.Loaded:Wait() end
task.wait(1)

local function GetScreenInfo()
    local viewportSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080)
    local UIS = game:GetService("UserInputService")
    local isMobile = (viewportSize.X <= 768) or (UIS.TouchEnabled and not UIS.MouseEnabled)
    local responsiveWidth  = math.min(math.clamp(viewportSize.X * 0.7, 300, 800), 600)
    local responsiveHeight = math.min(math.clamp(viewportSize.Y * 0.8, 300, 600), 400)
    return {
        ViewportSize   = viewportSize,
        IsMobile       = isMobile,
        UIWidth        = responsiveWidth,
        UIHeight       = responsiveHeight,
        Scale          = math.min(responsiveWidth / 600, responsiveHeight / 400),
    }
end

local function GetProtectedGui()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = randomUI
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.ResetOnSpawn = false
    if syn and syn.protect_gui then syn.protect_gui(ScreenGui) end
    local parentContainer = gethui and gethui() or game:GetService("CoreGui")
    ScreenGui.Parent = parentContainer
    ScreenGui:SetAttribute("SecureUI", true)
    return ScreenGui
end

-- Theme
_G.Color         = Color3.fromRGB(59, 130, 246)
_G.BGColor       = Color3.fromRGB(10, 10, 10)
_G.Surface       = Color3.fromRGB(16, 16, 16)
_G.Border        = Color3.fromRGB(38, 38, 38)
_G.TextPrimary   = Color3.fromRGB(238, 238, 238)
_G.TextSecondary = Color3.fromRGB(130, 135, 145)
_G.Accent        = Color3.fromRGB(59, 130, 246)

IKAI = true
if IKAI then
    local UserInputService = game:GetService("UserInputService")
    local TweenService     = game:GetService("TweenService")
    local RunService       = game:GetService("RunService")
    local LocalPlayer      = game:GetService("Players").LocalPlayer
    local tween            = TweenService

    -- Helper: gradient text
    local function gradient(text, colors)
        if not colors or #colors == 0 then return text end
        if #colors == 1 then
            local c = colors[1]
            return string.format('<font color="rgb(%d,%d,%d)">%s</font>',
                math.floor(c.R*255), math.floor(c.G*255), math.floor(c.B*255), text)
        end
        local result, segments = "", #colors - 1
        for i = 1, #text do
            local pos = (i-1)/(#text-1)
            local seg = math.min(math.floor(pos*segments), segments-1)
            local t = (pos - seg/segments) / (1/segments)
            local s1, s2 = colors[seg+1], colors[seg+2]
            local r = math.floor((s1.R + (s2.R-s1.R)*t)*255)
            local g = math.floor((s1.G + (s2.G-s1.G)*t)*255)
            local b = math.floor((s1.B + (s2.B-s1.B)*t)*255)
            result = result..string.format('<font color="rgb(%d,%d,%d)">%s</font>', r, g, b, text:sub(i,i))
        end
        return result
    end

    -- Helper: make frame draggable
    local function MakeDraggable(handle, frame)
        local dragging, dragStart, startPos
        handle.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging  = true
                dragStart = input.Position
                startPos  = frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then dragging = false end
                end)
            end
        end)
        UserInputService.InputChanged:Connect(function(input)
            if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                local delta = input.Position - dragStart
                TweenService:Create(frame, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
                    Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
                                         startPos.Y.Scale, startPos.Y.Offset + delta.Y)
                }):Play()
            end
        end)
    end

    -- Shared tween shorthand
    local function tw(inst, props, t, style)
        TweenService:Create(inst, TweenInfo.new(t or 0.2, Enum.EasingStyle[style or "Quad"], Enum.EasingDirection.Out), props):Play()
    end

    library = {}

    function library:Window(text, logo, keybind, gradientText, accentColor)
        if accentColor then _G.Accent = accentColor end
        local currentpage = ""
        local yoo = keybind and string.gsub(tostring(keybind), "Enum.KeyCode.", "") or "RightControl"
        local screenInfo = GetScreenInfo()
        local isMobile   = screenInfo.IsMobile
        local W, H       = screenInfo.UIWidth, screenInfo.UIHeight
        local tabW       = isMobile and 110 or 145
        local pageW      = W - tabW - (isMobile and 22 or 28)
        local elemW      = pageW - (isMobile and 20 or 24)
        local topH       = isMobile and 46 or 40
        local toggled    = false
        local MiniFrame

        local ShadcnUI = GetProtectedGui()

        -- ── Main frame ────────────────────────────────────────────────
        local Main = Instance.new("Frame")
        Main.Name = "Main"
        Main.Parent = ShadcnUI
        Main.AnchorPoint = Vector2.new(0.5, 0.5)
        Main.BackgroundColor3 = _G.Surface
        Main.Position = UDim2.new(0.5, 0, 0.5, 0)
        Main.Size = UDim2.new(0, W, 0, H)
        Main.BorderSizePixel = 0
        Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 8)
        local MainStroke = Instance.new("UIStroke", Main)
        MainStroke.Color = _G.Border
        MainStroke.Thickness = 1

        -- ── Top bar ───────────────────────────────────────────────────
        local Top = Instance.new("Frame", Main)
        Top.Name = "Top"
        Top.BackgroundColor3 = _G.Surface
        Top.Size = UDim2.new(1, 0, 0, topH)
        Top.BorderSizePixel = 0
        Instance.new("UICorner", Top).CornerRadius = UDim.new(0, 8)

        -- Bottom divider on top bar
        local Divider = Instance.new("Frame", Top)
        Divider.BackgroundColor3 = _G.Border
        Divider.BorderSizePixel = 0
        Divider.Position = UDim2.new(0, 0, 1, -1)
        Divider.Size = UDim2.new(1, 0, 0, 1)

        local Name = Instance.new("TextLabel", Top)
        Name.BackgroundTransparency = 1
        Name.Position = UDim2.new(0, isMobile and 12 or 18, 0, 0)
        Name.Size = UDim2.new(0, isMobile and 160 or 220, 1, 0)
        Name.Font = Enum.Font.GothamSemibold
        Name.TextColor3 = _G.TextPrimary
        Name.TextSize = isMobile and 13 or 15
        Name.TextXAlignment = Enum.TextXAlignment.Left
        Name.RichText = true
        Name.Text = gradientText and gradient(text, gradientText) or text

        -- Keybind badge
        local BindButton = Instance.new("TextButton", Top)
        BindButton.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
        BindButton.BackgroundTransparency = 0
        BindButton.Position = UDim2.new(1, isMobile and -145 or -175, 0.5, -10)
        BindButton.Size = UDim2.new(0, isMobile and 100 or 120, 0, 20)
        BindButton.Font = Enum.Font.GothamMedium
        BindButton.Text = "[ "..yoo.." ]"
        BindButton.TextColor3 = _G.TextSecondary
        BindButton.TextSize = isMobile and 9 or 11
        BindButton.AutoButtonColor = false
        BindButton.Visible = not isMobile
        Instance.new("UICorner", BindButton).CornerRadius = UDim.new(0, 4)
        local BindStroke = Instance.new("UIStroke", BindButton)
        BindStroke.Color = _G.Border
        BindStroke.Thickness = 1

        -- Minimize button
        local MinBtn = Instance.new("TextButton", Top)
        MinBtn.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
        MinBtn.Position = UDim2.new(1, isMobile and -36 or -40, 0.5, -10)
        MinBtn.Size = UDim2.new(0, 20, 0, 20)
        MinBtn.Text = "−"
        MinBtn.Font = Enum.Font.GothamBold
        MinBtn.TextSize = isMobile and 15 or 14
        MinBtn.TextColor3 = _G.TextSecondary
        MinBtn.AutoButtonColor = false
        Instance.new("UICorner", MinBtn).CornerRadius = UDim.new(0, 4)
        local MinStroke = Instance.new("UIStroke", MinBtn)
        MinStroke.Color = _G.Border
        MinStroke.Thickness = 1

        MinBtn.MouseEnter:Connect(function()  tw(MinBtn, {TextColor3 = _G.TextPrimary}) end)
        MinBtn.MouseLeave:Connect(function() tw(MinBtn, {TextColor3 = _G.TextSecondary}) end)

        -- Mini restore button
        local function createMiniFrame()
            if MiniFrame then return MiniFrame end
            MiniFrame = Instance.new("TextButton", ShadcnUI)
            MiniFrame.BackgroundColor3 = _G.Accent
            MiniFrame.Size = UDim2.new(0, 90, 0, 28)
            MiniFrame.Position = UDim2.new(0.5, -45, 0, 12)
            MiniFrame.Text = "Open Hub"
            MiniFrame.TextColor3 = Color3.new(1,1,1)
            MiniFrame.Font = Enum.Font.GothamMedium
            MiniFrame.TextSize = 12
            MiniFrame.Visible = false
            MiniFrame.AutoButtonColor = false
            Instance.new("UICorner", MiniFrame).CornerRadius = UDim.new(0, 6)
            MakeDraggable(MiniFrame, MiniFrame)
            local moved = false
            MiniFrame.MouseMoved:Connect(function() moved = true end)
            MiniFrame.MouseButton1Down:Connect(function() moved = false end)
            MiniFrame.MouseButton1Up:Connect(function()
                if not moved then Main.Visible = true; MiniFrame.Visible = false end
            end)
            return MiniFrame
        end

        MinBtn.MouseButton1Click:Connect(function()
            Main.Visible = false
            createMiniFrame().Visible = true
        end)

        BindButton.MouseButton1Click:Connect(function()
            BindButton.Text = "[ ... ]"
            local inp = UserInputService.InputBegan:Wait()
            local k = inp.KeyCode == Enum.KeyCode.Unknown and inp.UserInputType or inp.KeyCode
            if k.Name ~= "Focus" and k.Name ~= "MouseMovement" then
                yoo = k.Name
                BindButton.Text = "[ "..yoo.." ]"
            end
        end)

        UserInputService.InputBegan:Connect(function(input)
            if input.KeyCode == Enum.KeyCode[yoo] then
                toggled = not toggled
                Main.Visible = not toggled
                if MiniFrame then MiniFrame.Visible = toggled end
            end
        end)

        MakeDraggable(Top, Main)

        -- ── Tab sidebar ───────────────────────────────────────────────
        local Tab = Instance.new("Frame", Main)
        Tab.BackgroundColor3 = _G.Surface
        Tab.Position = UDim2.new(0, isMobile and 6 or 10, 0, topH + (isMobile and 6 or 8))
        Tab.Size = UDim2.new(0, tabW, 0, H - topH - (isMobile and 12 or 16))
        Tab.BorderSizePixel = 0
        Instance.new("UICorner", Tab).CornerRadius = UDim.new(0, 6)
        local TabStroke = Instance.new("UIStroke", Tab)
        TabStroke.Color = _G.Border
        TabStroke.Thickness = 1

        local ScrollTab = Instance.new("ScrollingFrame", Tab)
        ScrollTab.Active = true
        ScrollTab.BackgroundTransparency = 1
        ScrollTab.Size = UDim2.new(1, 0, 1, 0)
        ScrollTab.CanvasSize = UDim2.new(0,0,0,0)
        ScrollTab.ScrollBarThickness = isMobile and 2 or 0

        local PLL = Instance.new("UIListLayout", ScrollTab)
        PLL.SortOrder = Enum.SortOrder.LayoutOrder
        PLL.Padding = UDim.new(0, isMobile and 5 or 6)
        PLL.HorizontalAlignment = Enum.HorizontalAlignment.Center

        local PPD = Instance.new("UIPadding", ScrollTab)
        PPD.PaddingTop = UDim.new(0, isMobile and 8 or 10)

        -- ── Page area ─────────────────────────────────────────────────
        local Page = Instance.new("Frame", Main)
        Page.BackgroundColor3 = _G.Surface
        Page.Position = UDim2.new(0, tabW + (isMobile and 12 or 18), 0, topH + (isMobile and 6 or 8))
        Page.Size = UDim2.new(0, pageW, 0, H - topH - (isMobile and 12 or 16))
        Page.BorderSizePixel = 0
        Instance.new("UICorner", Page).CornerRadius = UDim.new(0, 6)
        local PageStroke = Instance.new("UIStroke", Page)
        PageStroke.Color = _G.Border
        PageStroke.Thickness = 1

        local MainPage = Instance.new("Frame", Page)
        MainPage.ClipsDescendants = true
        MainPage.BackgroundTransparency = 1
        MainPage.Size = UDim2.new(1, 0, 1, 0)

        local PageList = Instance.new("Folder", MainPage)
        local UIPageLayout = Instance.new("UIPageLayout", PageList)
        UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
        UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
        UIPageLayout.FillDirection = Enum.FillDirection.Vertical
        UIPageLayout.TweenTime = 0.35
        UIPageLayout.GamepadInputEnabled = false
        UIPageLayout.ScrollWheelInputEnabled = false
        UIPageLayout.TouchInputEnabled = false

        -- ── Tab builder ───────────────────────────────────────────────
        local abc = false
        local uitab = {}

        function uitab:Tab(tabText)
            -- Tab button
            local TabBtn = Instance.new("TextButton", ScrollTab)
            TabBtn.Name = tabText.."Server"
            TabBtn.Text = isMobile and string.sub(tabText, 1, 9) or tabText
            TabBtn.BackgroundColor3 = _G.Surface
            TabBtn.BackgroundTransparency = 1
            TabBtn.Size = UDim2.new(0, tabW - 16, 0, isMobile and 28 or 30)
            TabBtn.Font = Enum.Font.GothamMedium
            TabBtn.TextColor3 = _G.TextSecondary
            TabBtn.TextSize = isMobile and 11 or 13
            TabBtn.AutoButtonColor = false
            Instance.new("UICorner", TabBtn).CornerRadius = UDim.new(0, 5)
            local TBStroke = Instance.new("UIStroke", TabBtn)
            TBStroke.Color = _G.Border
            TBStroke.Thickness = 1
            TBStroke.Transparency = 1

            TabBtn.MouseEnter:Connect(function()
                if TabBtn.BackgroundTransparency > 0.5 then
                    tw(TabBtn, {TextColor3 = _G.TextPrimary})
                end
            end)
            TabBtn.MouseLeave:Connect(function()
                if TabBtn.BackgroundTransparency > 0.5 then
                    tw(TabBtn, {TextColor3 = _G.TextSecondary})
                end
            end)

            -- Page scroll frame
            local MFP = Instance.new("ScrollingFrame", PageList)
            MFP.Name = tabText.."_Page"
            MFP.Active = true
            MFP.BackgroundTransparency = 1
            MFP.BorderSizePixel = 0
            MFP.Size = UDim2.new(1, 0, 1, 0)
            MFP.CanvasSize = UDim2.new(0,0,0,0)
            MFP.ScrollBarThickness = isMobile and 2 or 0
            MFP.ClipsDescendants = true

            local UIPad = Instance.new("UIPadding", MFP)
            UIPad.PaddingLeft  = UDim.new(0, isMobile and 10 or 12)
            UIPad.PaddingTop   = UDim.new(0, isMobile and 10 or 12)
            UIPad.PaddingRight = UDim.new(0, isMobile and 10 or 12)

            local UIList = Instance.new("UIListLayout", MFP)
            UIList.Padding    = UDim.new(0, isMobile and 6 or 7)
            UIList.SortOrder  = Enum.SortOrder.LayoutOrder
            UIList.HorizontalAlignment = Enum.HorizontalAlignment.Center

            -- Activate tab
            local function activateTab()
                for _, v in next, ScrollTab:GetChildren() do
                    if v:IsA("TextButton") then
                        tw(v, {BackgroundColor3 = _G.Surface, BackgroundTransparency = 1, TextColor3 = _G.TextSecondary})
                        local s = v:FindFirstChildOfClass("UIStroke")
                        if s then tw(s, {Transparency = 1}) end
                    end
                end
                tw(TabBtn, {BackgroundColor3 = Color3.fromRGB(30,30,30), BackgroundTransparency = 0, TextColor3 = _G.TextPrimary})
                tw(TBStroke, {Transparency = 0, Color = _G.Accent})
                currentpage = tabText.."_Page"
                for _, v in next, PageList:GetChildren() do
                    if v.Name == currentpage then UIPageLayout:JumpTo(v) end
                end
            end

            TabBtn.MouseButton1Click:Connect(activateTab)

            if not abc then
                activateTab()
                abc = true
            end

            RunService.Stepped:Connect(function()
                pcall(function()
                    MFP.CanvasSize = UDim2.new(0, 0, 0, UIList.AbsoluteContentSize.Y + 24)
                    ScrollTab.CanvasSize = UDim2.new(0, 0, 0, PLL.AbsoluteContentSize.Y + 16)
                end)
            end)

            -- ─────────────────────────────────────────────────────────
            -- Notification Service (per-tab scope, shared via library)
            -- ─────────────────────────────────────────────────────────
            local NotifContainer = Instance.new("Frame", ShadcnUI)
            NotifContainer.BackgroundTransparency = 1
            NotifContainer.Size = UDim2.new(0, 340, 1, 0)
            NotifContainer.Position = UDim2.new(1, -20, 1, 30)
            NotifContainer.AnchorPoint = Vector2.new(1, 1)
            NotifContainer.ZIndex = 100

            local NotifList = Instance.new("Frame", NotifContainer)
            NotifList.BackgroundTransparency = 1
            NotifList.Size = UDim2.new(1, 0, 1, 0)
            NotifList.ClipsDescendants = true

            local activeNotifs = {}

            local NotifService = {}
            function NotifService:Notify(cfg)
                spawn(function()
                    cfg = {
                        Title    = cfg.Title    or "Notification",
                        Content  = cfg.Content  or "",
                        Duration = cfg.Duration or 5,
                        Type     = cfg.Type     or "info",
                    }
                    local colorMap = {
                        info    = _G.Accent,
                        success = Color3.fromRGB(34,197,94),
                        warning = Color3.fromRGB(245,158,11),
                        error   = Color3.fromRGB(239,68,68),
                    }
                    local iconMap = {
                        info    = "rbxassetid://10723415903",
                        success = "rbxassetid://10709790644",
                        warning = "rbxassetid://10709753149",
                        error   = "rbxassetid://10747384394",
                    }
                    local notifColor = colorMap[cfg.Type] or _G.Accent

                    -- Measure height
                    local baseH = 68
                    if cfg.Content ~= "" then
                        local ts = game:GetService("TextService"):GetTextSize(cfg.Content, 12, Enum.Font.Gotham, Vector2.new(280, 1000))
                        baseH = baseH + math.min(ts.Y, 50)
                    end
                    local finalH = math.min(baseH, 180)

                    local Notif = Instance.new("Frame", NotifList)
                    Notif.BackgroundColor3 = Color3.fromRGB(20,20,20)
                    Notif.BackgroundTransparency = 1
                    Notif.Size = UDim2.new(0, 300, 0, 0)
                    Notif.ClipsDescendants = true
                    Notif.ZIndex = 101
                    Notif.AnchorPoint = Vector2.new(1, 1)
                    Notif.Position = UDim2.new(1, 30, 1, 0)
                    Instance.new("UICorner", Notif).CornerRadius = UDim.new(0, 8)
                    local NS = Instance.new("UIStroke", Notif)
                    NS.Color = notifColor
                    NS.Thickness = 1
                    NS.Transparency = 1

                    -- Accent left bar
                    local Bar = Instance.new("Frame", Notif)
                    Bar.BackgroundColor3 = notifColor
                    Bar.BorderSizePixel = 0
                    Bar.Size = UDim2.new(0, 3, 1, 0)
                    Bar.ZIndex = 102
                    Instance.new("UICorner", Bar).CornerRadius = UDim.new(0, 2)

                    -- Content
                    local CFrame = Instance.new("Frame", Notif)
                    CFrame.BackgroundTransparency = 1
                    CFrame.Position = UDim2.new(0, 14, 0, 10)
                    CFrame.Size = UDim2.new(1, -36, 1, -20)
                    CFrame.ZIndex = 102

                    local Icon = Instance.new("ImageLabel", CFrame)
                    Icon.BackgroundTransparency = 1
                    Icon.Size = UDim2.new(0, 16, 0, 16)
                    Icon.Position = UDim2.new(0, 0, 0, 2)
                    Icon.Image = iconMap[cfg.Type] or iconMap.info
                    Icon.ImageColor3 = notifColor
                    Icon.ImageTransparency = 1
                    Icon.ZIndex = 103

                    local Title = Instance.new("TextLabel", CFrame)
                    Title.BackgroundTransparency = 1
                    Title.Position = UDim2.new(0, 22, 0, 0)
                    Title.Size = UDim2.new(1, -22, 0, 20)
                    Title.Font = Enum.Font.GothamSemibold
                    Title.Text = cfg.Title
                    Title.TextColor3 = _G.TextPrimary
                    Title.TextTransparency = 1
                    Title.TextSize = 13
                    Title.TextXAlignment = Enum.TextXAlignment.Left
                    Title.ZIndex = 103

                    local Desc = Instance.new("TextLabel", CFrame)
                    Desc.BackgroundTransparency = 1
                    Desc.Position = UDim2.new(0, 0, 0, 24)
                    Desc.Size = UDim2.new(1, 0, 0, finalH - 44)
                    Desc.Font = Enum.Font.Gotham
                    Desc.Text = cfg.Content
                    Desc.TextColor3 = _G.TextSecondary
                    Desc.TextTransparency = 1
                    Desc.TextSize = 11
                    Desc.TextXAlignment = Enum.TextXAlignment.Left
                    Desc.TextWrapped = true
                    Desc.ZIndex = 103

                    local CloseBtn = Instance.new("TextButton", Notif)
                    CloseBtn.BackgroundTransparency = 1
                    CloseBtn.Position = UDim2.new(1, -20, 0, 8)
                    CloseBtn.Size = UDim2.new(0, 14, 0, 14)
                    CloseBtn.Text = "×"
                    CloseBtn.Font = Enum.Font.GothamBold
                    CloseBtn.TextSize = 14
                    CloseBtn.TextColor3 = _G.TextSecondary
                    CloseBtn.ZIndex = 104

                    local notifData = {n = Notif, h = finalH, close = nil}
                    table.insert(activeNotifs, 1, notifData)

                    local function restack()
                        local totalY, gap = 0, 8
                        for _, nd in ipairs(activeNotifs) do
                            if nd.n.Parent then
                                local ty = 1 - (totalY + nd.h) / NotifList.AbsoluteSize.Y
                                tw(nd.n, {Position = UDim2.new(1, 0, ty, 0)}, 0.3)
                                totalY = totalY + nd.h + gap
                            end
                        end
                    end

                    local closeConn
                    local function doClose()
                        if closeConn then closeConn:Disconnect() end
                        for i, nd in ipairs(activeNotifs) do
                            if nd.n == Notif then table.remove(activeNotifs, i); break end
                        end
                        tw(Title, {TextTransparency = 1})
                        tw(Desc, {TextTransparency = 1})
                        tw(Icon, {ImageTransparency = 1})
                        wait(0.15)
                        tw(Notif, {BackgroundTransparency = 1, Size = UDim2.new(0,300,0,0)}, 0.3)
                        tw(NS, {Transparency = 1})
                        wait(0.35)
                        restack()
                        if Notif.Parent then Notif:Destroy() end
                    end
                    notifData.close = doClose
                    CloseBtn.MouseButton1Click:Connect(doClose)
                    CloseBtn.MouseEnter:Connect(function() tw(CloseBtn, {TextColor3 = _G.TextPrimary}) end)
                    CloseBtn.MouseLeave:Connect(function() tw(CloseBtn, {TextColor3 = _G.TextSecondary}) end)

                    -- Animate in
                    tw(Notif, {BackgroundTransparency = 0, Size = UDim2.new(0,300,0,finalH)}, 0.35, "Quint")
                    tw(NS, {Transparency = 0.6}, 0.35)
                    restack()
                    wait(0.2)
                    tw(Icon, {ImageTransparency = 0}, 0.25)
                    tw(Title, {TextTransparency = 0}, 0.25)
                    if cfg.Content ~= "" then tw(Desc, {TextTransparency = 0.15}, 0.25) end

                    if cfg.Duration > 0 then
                        closeConn = RunService.Heartbeat:Connect(function(dt)
                            cfg.Duration -= dt
                            if cfg.Duration <= 0 then doClose() end
                        end)
                    end
                    return {Close = doClose}
                end)
            end

            function library:Notify(cfg) return NotifService:Notify(cfg) end
            function library:CloseAllNotifications()
                for i = #activeNotifs, 1, -1 do
                    if activeNotifs[i].close then activeNotifs[i].close() end
                end
                activeNotifs = {}
            end

            -- ─────────────────────────────────────────────────────────
            -- Component builders
            -- ─────────────────────────────────────────────────────────
            local main = {}

            -- ── Button ────────────────────────────────────────────────
            function main:Button(text, callback)
                local Btn = Instance.new("TextButton", MFP)
                Btn.Name = "Button"
                Btn.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
                Btn.BackgroundTransparency = 0
                Btn.Size = UDim2.new(0, elemW, 0, isMobile and 32 or 34)
                Btn.Font = Enum.Font.GothamMedium
                Btn.Text = text
                Btn.TextColor3 = _G.TextPrimary
                Btn.TextSize = isMobile and 12 or 13
                Btn.AutoButtonColor = false
                Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 5)
                local BS = Instance.new("UIStroke", Btn)
                BS.Color = _G.Border
                BS.Thickness = 1

                Btn.MouseEnter:Connect(function()
                    tw(Btn, {BackgroundColor3 = Color3.fromRGB(32,32,32)})
                    tw(BS, {Color = Color3.fromRGB(70,70,70)})
                end)
                Btn.MouseLeave:Connect(function()
                    tw(Btn, {BackgroundColor3 = Color3.fromRGB(26,26,26)})
                    tw(BS, {Color = _G.Border})
                end)
                Btn.MouseButton1Down:Connect(function()
                    tw(Btn, {BackgroundColor3 = Color3.fromRGB(40,40,40)})
                    tw(BS, {Color = _G.Accent})
                end)
                Btn.MouseButton1Up:Connect(function()
                    tw(Btn, {BackgroundColor3 = Color3.fromRGB(32,32,32)})
                    tw(BS, {Color = _G.Border})
                end)
                Btn.MouseButton1Click:Connect(function()
                    pcall(callback)
                end)

                local O = {}
                function O:Set(t, cb)
                    if t  then Btn.Text = t end
                    if cb then callback = cb end
                end
                function O:SetEnabled(e)
                    Btn.Active = e
                    Btn.TextColor3 = e and _G.TextPrimary or _G.TextSecondary
                end
                function O:GetText() return Btn.Text end
                return O
            end

            -- ── Toggle ────────────────────────────────────────────────
            function main:Toggle(text, config, callback)
                local togOn = config == true

                local Tog = Instance.new("Frame", MFP)
                Tog.Name = "Toggle"
                Tog.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
                Tog.Size = UDim2.new(0, elemW, 0, isMobile and 32 or 34)
                Instance.new("UICorner", Tog).CornerRadius = UDim.new(0, 5)
                local TgStroke = Instance.new("UIStroke", Tog)
                TgStroke.Color = _G.Border
                TgStroke.Thickness = 1

                local Lbl = Instance.new("TextLabel", Tog)
                Lbl.BackgroundTransparency = 1
                Lbl.Position = UDim2.new(0, isMobile and 10 or 14, 0, 0)
                Lbl.Size = UDim2.new(1, -70, 1, 0)
                Lbl.Font = Enum.Font.GothamMedium
                Lbl.Text = text
                Lbl.TextColor3 = _G.TextPrimary
                Lbl.TextSize = isMobile and 12 or 13
                Lbl.TextXAlignment = Enum.TextXAlignment.Left

                local TrackW = isMobile and 34 or 36
                local TrackH = isMobile and 18 or 20
                local Track = Instance.new("TextButton", Tog)
                Track.BackgroundColor3 = _G.Border
                Track.AnchorPoint = Vector2.new(1, 0.5)
                Track.Position = UDim2.new(1, -(isMobile and 10 or 12), 0.5, 0)
                Track.Size = UDim2.new(0, TrackW, 0, TrackH)
                Track.Text = ""
                Track.AutoButtonColor = false
                Instance.new("UICorner", Track).CornerRadius = UDim.new(1, 0)

                local Knob = Instance.new("Frame", Track)
                Knob.BackgroundColor3 = _G.TextSecondary
                Knob.Position = UDim2.new(0, 2, 0.5, 0)
                Knob.AnchorPoint = Vector2.new(0, 0.5)
                Knob.Size = UDim2.new(0, TrackH-4, 0, TrackH-4)
                Instance.new("UICorner", Knob).CornerRadius = UDim.new(1, 0)

                local function setState(state, skipCallback)
                    togOn = state
                    if state then
                        tw(Track, {BackgroundColor3 = _G.Accent})
                        tw(Knob,  {Position = UDim2.new(1, -(TrackH-2), 0.5, 0), BackgroundColor3 = Color3.new(1,1,1)})
                    else
                        tw(Track, {BackgroundColor3 = _G.Border})
                        tw(Knob,  {Position = UDim2.new(0, 2, 0.5, 0), BackgroundColor3 = _G.TextSecondary})
                    end
                    if not skipCallback then pcall(callback, togOn) end
                end

                Track.MouseButton1Click:Connect(function() setState(not togOn) end)
                if togOn then setState(true, true) end

                local O = {}
                function O:Set(s, t)
                    if s ~= nil then setState(s) end
                    if t then Lbl.Text = t end
                end
                function O:Get() return togOn end
                return O
            end

            -- ── Slider ────────────────────────────────────────────────
            function main:Slider(text, min, max, set, callback)
                local val = set

                local Sl = Instance.new("Frame", MFP)
                Sl.Name = "Slider"
                Sl.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
                Sl.Size = UDim2.new(0, elemW, 0, isMobile and 50 or 56)
                Instance.new("UICorner", Sl).CornerRadius = UDim.new(0, 5)
                local SlStroke = Instance.new("UIStroke", Sl)
                SlStroke.Color = _G.Border
                SlStroke.Thickness = 1

                local SlLabel = Instance.new("TextLabel", Sl)
                SlLabel.BackgroundTransparency = 1
                SlLabel.Position = UDim2.new(0, isMobile and 10 or 14, 0, isMobile and 6 or 8)
                SlLabel.Size = UDim2.new(0.7, 0, 0, 18)
                SlLabel.Font = Enum.Font.GothamMedium
                SlLabel.Text = text
                SlLabel.TextColor3 = _G.TextPrimary
                SlLabel.TextSize = isMobile and 11 or 13
                SlLabel.TextXAlignment = Enum.TextXAlignment.Left

                local ValLabel = Instance.new("TextLabel", Sl)
                ValLabel.BackgroundTransparency = 1
                ValLabel.Position = UDim2.new(1, -(isMobile and 40 or 50), 0, isMobile and 6 or 8)
                ValLabel.Size = UDim2.new(0, isMobile and 36 or 46, 0, 18)
                ValLabel.Font = Enum.Font.GothamMedium
                ValLabel.Text = tostring(set)
                ValLabel.TextColor3 = _G.Accent
                ValLabel.TextSize = isMobile and 11 or 13
                ValLabel.TextXAlignment = Enum.TextXAlignment.Right

                local trackY = isMobile and 32 or 36
                local trackH = isMobile and 4 or 4
                local padX   = isMobile and 10 or 14

                local Track = Instance.new("Frame", Sl)
                Track.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                Track.Position = UDim2.new(0, padX, 0, trackY)
                Track.Size = UDim2.new(0, elemW - padX*2, 0, trackH)
                Instance.new("UICorner", Track).CornerRadius = UDim.new(1, 0)

                local Fill = Instance.new("Frame", Track)
                Fill.BackgroundColor3 = _G.Accent
                Fill.Size = UDim2.new(0, 0, 1, 0)
                Instance.new("UICorner", Fill).CornerRadius = UDim.new(1, 0)

                local knobSz = isMobile and 12 or 12
                local Knob = Instance.new("Frame", Track)
                Knob.BackgroundColor3 = Color3.new(1,1,1)
                Knob.Size = UDim2.new(0, knobSz, 0, knobSz)
                Knob.AnchorPoint = Vector2.new(0.5, 0.5)
                Knob.Position = UDim2.new(0, 0, 0.5, 0)
                Knob.ZIndex = 3
                Instance.new("UICorner", Knob).CornerRadius = UDim.new(1, 0)
                local KS = Instance.new("UIStroke", Knob)
                KS.Color = Color3.fromRGB(60,60,60)
                KS.Thickness = 1.5

                local function setVal(v)
                    v = math.floor(math.clamp(v, min, max))
                    val = v
                    ValLabel.Text = tostring(v)
                    local pct = (v - min) / (max - min)
                    Fill.Size = UDim2.new(pct, 0, 1, 0)
                    Knob.Position = UDim2.new(pct, 0, 0.5, 0)
                    pcall(callback, v)
                end
                setVal(set)

                local SlBtn = Instance.new("TextButton", Track)
                SlBtn.BackgroundTransparency = 1
                SlBtn.Size = UDim2.new(1, 0, 3, 0)
                SlBtn.Position = UDim2.new(0, 0, 0.5, 0)
                SlBtn.AnchorPoint = Vector2.new(0, 0.5)
                SlBtn.Text = ""
                SlBtn.ZIndex = 4

                -- Touch/mouse drag using UserInputService
                local dragging = false
                SlBtn.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        dragging = true
                    end
                end)
                UserInputService.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        dragging = false
                    end
                end)
                UserInputService.InputChanged:Connect(function(input)
                    if not dragging then return end
                    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                        local pos = input.UserInputType == Enum.UserInputType.Touch and input.Position or UserInputService:GetMouseLocation()
                        local pct = math.clamp((pos.X - Track.AbsolutePosition.X) / Track.AbsoluteSize.X, 0, 1)
                        setVal(min + (max - min) * pct)
                    end
                end)

                local O = {}
                function O:Set(v) setVal(v) end
                function O:Get() return val end
                return O
            end

            -- ── Dropdown ──────────────────────────────────────────────
            function main:Dropdown(text, old, options, mode, callback)
                assert(type(text) == "string")
                assert(type(options) == "table")
                assert(type(callback) == "function")
                mode = (mode or "single"):lower()
                local isMulti = mode == "multi"
                local sel = isMulti and (type(old) == "table" and old or (old and {old} or {})) or old
                local allOpts = table.clone(options)
                local isOpen = false
                local itemMap = {}

                local DD = Instance.new("Frame", MFP)
                DD.Name = "Dropdown"
                DD.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
                DD.Size = UDim2.new(0, elemW, 0, isMobile and 32 or 34)
                DD.ClipsDescendants = true
                Instance.new("UICorner", DD).CornerRadius = UDim.new(0, 5)
                local DDS = Instance.new("UIStroke", DD)
                DDS.Color = _G.Border
                DDS.Thickness = 1

                local DDHead = Instance.new("Frame", DD)
                DDHead.BackgroundTransparency = 1
                DDHead.Size = UDim2.new(1, 0, 0, isMobile and 32 or 34)

                local DDTitle = Instance.new("TextLabel", DDHead)
                DDTitle.BackgroundTransparency = 1
                DDTitle.Position = UDim2.new(0, isMobile and 10 or 14, 0, 0)
                DDTitle.Size = UDim2.new(1, -40, 1, 0)
                DDTitle.Font = Enum.Font.GothamMedium
                DDTitle.TextColor3 = _G.TextPrimary
                DDTitle.TextSize = isMobile and 12 or 13
                DDTitle.TextXAlignment = Enum.TextXAlignment.Left

                local DDArrow = Instance.new("TextLabel", DDHead)
                DDArrow.BackgroundTransparency = 1
                DDArrow.AnchorPoint = Vector2.new(1, 0.5)
                DDArrow.Position = UDim2.new(1, -(isMobile and 10 or 12), 0.5, 0)
                DDArrow.Size = UDim2.new(0, 16, 0, 16)
                DDArrow.Font = Enum.Font.GothamBold
                DDArrow.Text = "∨"
                DDArrow.TextColor3 = _G.TextSecondary
                DDArrow.TextSize = isMobile and 10 or 11

                local DDBtn = Instance.new("TextButton", DDHead)
                DDBtn.BackgroundTransparency = 1
                DDBtn.Size = UDim2.new(1, 0, 1, 0)
                DDBtn.Text = ""

                -- Search
                local searchH = isMobile and 26 or 28
                local SearchBox = Instance.new("TextBox", DD)
                SearchBox.BackgroundColor3 = Color3.fromRGB(28,28,28)
                SearchBox.Position = UDim2.new(0, isMobile and 8 or 10, 0, (isMobile and 32 or 34) + 5)
                SearchBox.Size = UDim2.new(1, -(isMobile and 16 or 20), 0, searchH)
                SearchBox.Font = Enum.Font.GothamMedium
                SearchBox.PlaceholderText = "Search..."
                SearchBox.PlaceholderColor3 = _G.TextSecondary
                SearchBox.TextColor3 = _G.TextPrimary
                SearchBox.TextSize = isMobile and 11 or 12
                SearchBox.Text = ""
                SearchBox.ClearTextOnFocus = false
                SearchBox.TextXAlignment = Enum.TextXAlignment.Center
                SearchBox.Visible = false
                Instance.new("UICorner", SearchBox).CornerRadius = UDim.new(0, 4)
                local SBS = Instance.new("UIStroke", SearchBox)
                SBS.Color = _G.Border
                SBS.Thickness = 1
                SearchBox.Focused:Connect(function() tw(SBS, {Color = _G.Accent}) end)
                SearchBox.FocusLost:Connect(function() tw(SBS, {Color = _G.Border}) end)

                -- Options scroll
                local OptionsY = (isMobile and 32 or 34) + 5 + searchH + 5
                local DropScroll = Instance.new("ScrollingFrame", DD)
                DropScroll.BackgroundTransparency = 1
                DropScroll.BorderSizePixel = 0
                DropScroll.Position = UDim2.fromOffset(0, OptionsY)
                DropScroll.Size = UDim2.new(1, 0, 0, 0)
                DropScroll.CanvasSize = UDim2.new(0,0,0,0)
                DropScroll.ScrollBarThickness = isMobile and 3 or 4
                DropScroll.Visible = false

                local OList = Instance.new("UIListLayout", DropScroll)
                OList.Padding = UDim.new(0, 3)
                OList.SortOrder = Enum.SortOrder.LayoutOrder
                local OPad = Instance.new("UIPadding", DropScroll)
                OPad.PaddingLeft = UDim.new(0, isMobile and 6 or 8)
                OPad.PaddingRight = UDim.new(0, isMobile and 6 or 8)
                OPad.PaddingTop = UDim.new(0, 4)
                OPad.PaddingBottom = UDim.new(0, 4)

                local function isSel(v) return isMulti and table.find(sel, v) ~= nil or sel == v end

                local function updateTitle()
                    if isMulti then
                        DDTitle.Text = text.." : "..(#sel == 0 and "—" or #sel == 1 and tostring(sel[1]) or #sel.." selected")
                    else
                        DDTitle.Text = text.." : "..(sel and tostring(sel) or "—")
                    end
                end

                local function clearOpts()
                    for _, c in ipairs(DropScroll:GetChildren()) do
                        if not c:IsA("UIListLayout") and not c:IsA("UIPadding") then c:Destroy() end
                    end
                    itemMap = {}
                end

                local refreshOptions
                local function makeOption(v)
                    local OBtn = Instance.new("TextButton", DropScroll)
                    OBtn.Name = "Opt_"..tostring(v)
                    OBtn.BackgroundColor3 = Color3.fromRGB(26,26,26)
                    OBtn.BackgroundTransparency = isSel(v) and 0.6 or 0
                    OBtn.Size = UDim2.new(1, 0, 0, isMobile and 26 or 28)
                    OBtn.Font = Enum.Font.GothamMedium
                    OBtn.Text = tostring(v)
                    OBtn.TextColor3 = isSel(v) and _G.Accent or _G.TextPrimary
                    OBtn.TextSize = isMobile and 11 or 12
                    OBtn.TextXAlignment = Enum.TextXAlignment.Left
                    OBtn.AutoButtonColor = false
                    Instance.new("UICorner", OBtn).CornerRadius = UDim.new(0, 4)
                    local OPd = Instance.new("UIPadding", OBtn)
                    OPd.PaddingLeft = UDim.new(0, 8)

                    local function refreshAppear()
                        local s = isSel(v)
                        tw(OBtn, {TextColor3 = s and _G.Accent or _G.TextPrimary, BackgroundTransparency = s and 0.6 or 0})
                    end

                    OBtn.MouseEnter:Connect(function()
                        if not isSel(v) then tw(OBtn, {TextColor3 = _G.Accent}) end
                    end)
                    OBtn.MouseLeave:Connect(function()
                        if not isSel(v) then tw(OBtn, {TextColor3 = _G.TextPrimary}) end
                    end)
                    OBtn.MouseButton1Click:Connect(function()
                        if isMulti then
                            local idx = table.find(sel, v)
                            if idx then table.remove(sel, idx) else table.insert(sel, v) end
                            callback(table.clone(sel))
                            refreshOptions(SearchBox.Text)
                        else
                            sel = v
                            callback(sel)
                            isOpen = false
                            DD:TweenSize(UDim2.new(0, elemW, 0, isMobile and 32 or 34),
                                Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
                            DDArrow.Text = "∨"
                            SearchBox.Visible = false
                            DropScroll.Visible = false
                        end
                        updateTitle()
                    end)
                    itemMap[tostring(v)] = OBtn
                end

                refreshOptions = function(filter)
                    clearOpts()
                    filter = (filter or ""):lower()
                    local matched = {}
                    for _, o in ipairs(allOpts) do
                        if filter == "" or tostring(o):lower():find(filter, 1, true) then
                            table.insert(matched, o)
                        end
                    end
                    for _, o in ipairs(matched) do makeOption(o) end

                    task.wait(0.01)
                    local itemH  = isMobile and 29 or 31
                    local maxVisible = 4
                    local visible = math.max(1, math.min(#matched, maxVisible))
                    local scrollH = visible * itemH + 8
                    local totalH  = #matched * itemH + 8
                    DropScroll.Size = UDim2.new(1, 0, 0, scrollH)
                    DropScroll.CanvasSize = UDim2.new(0, 0, 0, totalH)

                    if isOpen then
                        local ddH = (isMobile and 32 or 34) + 5 + searchH + 5 + scrollH + 4
                        DD:TweenSize(UDim2.new(0, elemW, 0, ddH),
                            Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
                    end
                end

                SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
                    refreshOptions(SearchBox.Text)
                end)

                DDBtn.MouseButton1Click:Connect(function()
                    isOpen = not isOpen
                    if isOpen then
                        SearchBox.Visible = true
                        DropScroll.Visible = true
                        DDArrow.Text = "∧"
                        tw(DDS, {Color = _G.Accent})
                        refreshOptions("")
                        task.delay(0.05, function()
                            if SearchBox and SearchBox.Parent then SearchBox:CaptureFocus() end
                        end)
                    else
                        DDArrow.Text = "∨"
                        tw(DDS, {Color = _G.Border})
                        DD:TweenSize(UDim2.new(0, elemW, 0, isMobile and 32 or 34),
                            Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
                        SearchBox.Visible = false
                        DropScroll.Visible = false
                    end
                end)

                -- Close on outside click
                local iac
                iac = UserInputService.InputBegan:Connect(function(input, gp)
                    if gp or input.UserInputType ~= Enum.UserInputType.MouseButton1 or not isOpen then return end
                    local mp = UserInputService:GetMouseLocation()
                    local ap = DD.AbsolutePosition
                    local as = DD.AbsoluteSize
                    if not (mp.X >= ap.X and mp.X <= ap.X+as.X and mp.Y >= ap.Y and mp.Y <= ap.Y+as.Y) then
                        isOpen = false
                        DDArrow.Text = "∨"
                        tw(DDS, {Color = _G.Border})
                        DD:TweenSize(UDim2.new(0, elemW, 0, isMobile and 32 or 34),
                            Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
                        SearchBox.Visible = false
                        DropScroll.Visible = false
                    end
                end)
                DD.AncestryChanged:Connect(function()
                    if not DD.Parent and iac then iac:Disconnect() end
                end)

                updateTitle()

                local api = {}
                function api:Get() return isMulti and table.clone(sel) or sel end
                function api:Set(v)
                    sel = isMulti and (type(v) == "table" and table.clone(v) or {v}) or v
                    updateTitle(); callback(api:Get())
                end
                function api:Add(v)
                    if not table.find(allOpts, v) then table.insert(allOpts, v) end
                end
                function api:Remove(v)
                    local i = table.find(allOpts, v)
                    if i then table.remove(allOpts, i) end
                    if isMulti then
                        local j = table.find(sel, v); if j then table.remove(sel, j) end
                    elseif sel == v then sel = nil end
                    updateTitle()
                end
                function api:Refresh(opts) if opts then allOpts = table.clone(opts) end end
                return api
            end

            -- ── Textbox ───────────────────────────────────────────────
            function main:Textbox(text, placeholder, callback)
                local TB = Instance.new("Frame", MFP)
                TB.Name = "Textbox"
                TB.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
                TB.Size = UDim2.new(0, elemW, 0, isMobile and 32 or 34)
                Instance.new("UICorner", TB).CornerRadius = UDim.new(0, 5)
                local TBS = Instance.new("UIStroke", TB)
                TBS.Color = _G.Border
                TBS.Thickness = 1

                local Lbl = Instance.new("TextLabel", TB)
                Lbl.BackgroundTransparency = 1
                Lbl.Position = UDim2.new(0, isMobile and 10 or 14, 0, 0)
                Lbl.Size = UDim2.new(0, isMobile and 110 or 130, 1, 0)
                Lbl.Font = Enum.Font.GothamMedium
                Lbl.Text = text
                Lbl.TextColor3 = _G.TextPrimary
                Lbl.TextSize = isMobile and 12 or 13
                Lbl.TextXAlignment = Enum.TextXAlignment.Left

                local InputW = elemW - (isMobile and 128 or 148)
                local InputBox = Instance.new("TextBox", TB)
                InputBox.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
                InputBox.AnchorPoint = Vector2.new(1, 0.5)
                InputBox.Position = UDim2.new(1, -(isMobile and 8 or 10), 0.5, 0)
                InputBox.Size = UDim2.new(0, InputW, 0, isMobile and 22 or 22)
                InputBox.Font = Enum.Font.GothamMedium
                InputBox.PlaceholderText = placeholder or ""
                InputBox.PlaceholderColor3 = _G.TextSecondary
                InputBox.Text = ""
                InputBox.TextColor3 = _G.TextPrimary
                InputBox.TextSize = isMobile and 11 or 12
                InputBox.ClearTextOnFocus = false
                InputBox.TextXAlignment = Enum.TextXAlignment.Center
                Instance.new("UICorner", InputBox).CornerRadius = UDim.new(0, 4)
                local IBS = Instance.new("UIStroke", InputBox)
                IBS.Color = _G.Border
                IBS.Thickness = 1

                InputBox.Focused:Connect(function()    tw(IBS, {Color = _G.Accent}) end)
                InputBox.FocusLost:Connect(function()  tw(IBS, {Color = _G.Border}); pcall(callback, InputBox.Text) end)

                local O = {}
                function O:Set(t) InputBox.Text = tostring(t or "") end
                function O:Get() return InputBox.Text end
                function O:Clear() InputBox.Text = "" end
                function O:SetPlaceholder(t) InputBox.PlaceholderText = t end
                return O
            end

            -- ── Label ─────────────────────────────────────────────────
            function main:Label(text)
                local Lbl = Instance.new("TextLabel", MFP)
                Lbl.BackgroundTransparency = 1
                Lbl.Size = UDim2.new(0, elemW, 0, isMobile and 22 or 24)
                Lbl.Font = Enum.Font.GothamMedium
                Lbl.Text = text
                Lbl.TextColor3 = _G.TextSecondary
                Lbl.TextSize = isMobile and 11 or 12
                Lbl.TextXAlignment = Enum.TextXAlignment.Center
                local O = {}
                function O:Set(t) Lbl.Text = t end
                function O:Get()  return Lbl.Text end
                return O
            end

            -- ── Separator ─────────────────────────────────────────────
            function main:Seperator(text)
                local Sep = Instance.new("Frame", MFP)
                Sep.BackgroundTransparency = 1
                Sep.Size = UDim2.new(0, elemW, 0, isMobile and 14 or 16)

                local L = Instance.new("Frame", Sep)
                L.BackgroundColor3 = _G.Border
                L.BorderSizePixel = 0
                L.AnchorPoint = Vector2.new(0, 0.5)
                L.Position = UDim2.new(0, 0, 0.5, 0)
                L.Size = UDim2.new(0.38, -6, 0, 1)

                local T = Instance.new("TextLabel", Sep)
                T.BackgroundTransparency = 1
                T.AnchorPoint = Vector2.new(0.5, 0)
                T.Position = UDim2.new(0.5, 0, 0, 0)
                T.Size = UDim2.new(0, isMobile and 110 or 140, 1, 0)
                T.Font = Enum.Font.GothamMedium
                T.TextColor3 = _G.TextSecondary
                T.TextSize = isMobile and 9 or 11
                T.RichText = true
                T.Text = gradientText and gradient(text, gradientText) or text

                local R = Instance.new("Frame", Sep)
                R.BackgroundColor3 = _G.Border
                R.BorderSizePixel = 0
                R.AnchorPoint = Vector2.new(1, 0.5)
                R.Position = UDim2.new(1, 0, 0.5, 0)
                R.Size = UDim2.new(0.38, -6, 0, 1)
            end

            -- ── RichParagraph ─────────────────────────────────────────
            function main:RichParagraph(text, options, color)
                options = options or {}
                local textSize  = options.TextSize or (isMobile and 11 or 12)
                local maxH      = options.MaxHeight or (isMobile and 180 or 250)

                local P = Instance.new("Frame", MFP)
                P.Name = "RichParagraph"
                P.BackgroundColor3 = Color3.fromRGB(22,22,22)
                P.Size = UDim2.new(0, elemW, 0, 0)
                P.ClipsDescendants = true
                Instance.new("UICorner", P).CornerRadius = UDim.new(0, 5)
                Instance.new("UIStroke", P).Color = _G.Border

                if color then
                    if typeof(color) == "Color3" then
                        P.BackgroundColor3 = color
                    elseif typeof(color) == "table" then
                        local kp = {}
                        for i, c in ipairs(color) do
                            table.insert(kp, ColorSequenceKeypoint.new((i-1)/(#color-1), c))
                        end
                        local g = Instance.new("UIGradient", P)
                        g.Color = ColorSequence.new(kp)
                        g.Rotation = options.GradientRotation or 90
                    end
                end

                local SF = Instance.new("ScrollingFrame", P)
                SF.BackgroundTransparency = 1
                SF.BorderSizePixel = 0
                SF.Size = UDim2.new(1, 0, 1, 0)
                SF.CanvasSize = UDim2.new(0,0,0,0)
                SF.ScrollBarThickness = 3
                SF.ScrollBarImageColor3 = _G.Border

                local TC = Instance.new("Frame", SF)
                TC.BackgroundTransparency = 1
                TC.Position = UDim2.new(0, isMobile and 10 or 12, 0, isMobile and 10 or 12)
                TC.Size = UDim2.new(1, -(isMobile and 20 or 24), 0, 0)

                local PT = Instance.new("TextLabel", TC)
                PT.BackgroundTransparency = 1
                PT.Size = UDim2.new(1, 0, 0, 0)
                PT.Font = Enum.Font.Gotham
                PT.Text = text
                PT.TextColor3 = options.TextColor or _G.TextPrimary
                PT.TextSize = textSize
                PT.TextWrapped = true
                PT.TextXAlignment = Enum.TextXAlignment.Left
                PT.TextYAlignment = Enum.TextYAlignment.Top
                PT.RichText = options.RichText ~= false
                PT.LineHeight = options.LineHeight or 1.35

                local function updateSz()
                    task.wait(0.08)
                    local tb = PT.TextBounds
                    local pad = isMobile and 20 or 24
                    local needed = tb.Y + pad
                    local final = math.min(needed, maxH)
                    PT.Size = UDim2.new(1, 0, 0, tb.Y)
                    TC.Size = UDim2.new(1, 0, 0, tb.Y)
                    SF.CanvasSize = UDim2.new(0, 0, 0, tb.Y + pad)
                    P.Size = UDim2.new(0, elemW, 0, final)
                    SF.ScrollBarThickness = needed > maxH and 3 or 0
                end
                updateSz()
                PT:GetPropertyChangedSignal("Text"):Connect(updateSz)
                PT:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateSz)

                local api = {}
                function api:Set(t)     PT.Text = tostring(t or ""); return api end
                function api:Get()      return PT.Text end
                function api:AddText(t) PT.Text ..= t; return api end
                function api:Clear()    PT.Text = ""; return api end
                function api:SetColor(c) PT.TextColor3 = c; return api end
                function api:AddWarning(t)  PT.Text ..= '\n<font color="#FBBF24">⚠ '..t..'</font>'; return api end
                function api:AddSuccess(t)  PT.Text ..= '\n<font color="#34D399">✓ '..t..'</font>'; return api end
                function api:AddError(t)    PT.Text ..= '\n<font color="#F87171">✗ '..t..'</font>'; return api end
                return api
            end

            -- ── ColorPicker (NEW) ──────────────────────────────────────
            function main:ColorPicker(text, default, callback)
                local color = default or Color3.fromRGB(59, 130, 246)
                local h, s, v = Color3.toHSV(color)
                local isOpen = false
                local dragSV, dragHue = false, false

                local pad     = isMobile and 10 or 12
                local svH     = isMobile and 88 or 108
                local hueH    = isMobile and 14 or 16
                local hexH    = isMobile and 26 or 28
                local headerH = isMobile and 32 or 34
                local expandH = headerH + pad + svH + pad/2 + hueH + pad/2 + hexH + pad

                local CP = Instance.new("Frame", MFP)
                CP.Name = "ColorPicker"
                CP.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
                CP.Size = UDim2.new(0, elemW, 0, headerH)
                CP.ClipsDescendants = true
                Instance.new("UICorner", CP).CornerRadius = UDim.new(0, 5)
                local CPS = Instance.new("UIStroke", CP)
                CPS.Color = _G.Border
                CPS.Thickness = 1

                -- Header
                local Hdr = Instance.new("TextButton", CP)
                Hdr.BackgroundTransparency = 1
                Hdr.Size = UDim2.new(1, 0, 0, headerH)
                Hdr.Text = ""
                Hdr.AutoButtonColor = false

                local HdrLbl = Instance.new("TextLabel", Hdr)
                HdrLbl.BackgroundTransparency = 1
                HdrLbl.Position = UDim2.new(0, isMobile and 10 or 14, 0, 0)
                HdrLbl.Size = UDim2.new(0.55, 0, 1, 0)
                HdrLbl.Font = Enum.Font.GothamMedium
                HdrLbl.Text = text
                HdrLbl.TextColor3 = _G.TextPrimary
                HdrLbl.TextSize = isMobile and 12 or 13
                HdrLbl.TextXAlignment = Enum.TextXAlignment.Left

                -- Hex display
                local HexDisp = Instance.new("TextLabel", Hdr)
                HexDisp.BackgroundTransparency = 1
                HexDisp.AnchorPoint = Vector2.new(1, 0.5)
                HexDisp.Position = UDim2.new(1, -(isMobile and 60 or 68), 0.5, 0)
                HexDisp.Size = UDim2.new(0, isMobile and 52 or 60, 0, 16)
                HexDisp.Font = Enum.Font.GothamMedium
                HexDisp.TextColor3 = _G.TextSecondary
                HexDisp.TextSize = isMobile and 9 or 10
                HexDisp.TextXAlignment = Enum.TextXAlignment.Right

                -- Swatch
                local Swatch = Instance.new("Frame", Hdr)
                Swatch.BackgroundColor3 = color
                Swatch.AnchorPoint = Vector2.new(1, 0.5)
                Swatch.Position = UDim2.new(1, -(isMobile and 8 or 10), 0.5, 0)
                Swatch.Size = isMobile and UDim2.new(0, 38, 0, 18) or UDim2.new(0, 44, 0, 20)
                Instance.new("UICorner", Swatch).CornerRadius = UDim.new(0, 4)
                local SwS = Instance.new("UIStroke", Swatch)
                SwS.Color = _G.Border
                SwS.Thickness = 1

                -- SV Picker
                local SVBase = Instance.new("Frame", CP)
                SVBase.Position = UDim2.new(0, pad, 0, headerH + pad)
                SVBase.Size = UDim2.new(1, -pad*2, 0, svH)
                SVBase.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
                SVBase.ClipsDescendants = true
                Instance.new("UICorner", SVBase).CornerRadius = UDim.new(0, 4)

                local WhiteL = Instance.new("Frame", SVBase)
                WhiteL.BackgroundColor3 = Color3.new(1,1,1)
                WhiteL.Size = UDim2.new(1,0,1,0)
                WhiteL.BorderSizePixel = 0
                local WG = Instance.new("UIGradient", WhiteL)
                WG.Transparency = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, 0),
                    NumberSequenceKeypoint.new(1, 1),
                })
                WG.Rotation = 0

                local BlackL = Instance.new("Frame", SVBase)
                BlackL.BackgroundColor3 = Color3.new(0,0,0)
                BlackL.Size = UDim2.new(1,0,1,0)
                BlackL.BorderSizePixel = 0
                local BG = Instance.new("UIGradient", BlackL)
                BG.Transparency = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, 1),
                    NumberSequenceKeypoint.new(1, 0),
                })
                BG.Rotation = 90

                local SVKnob = Instance.new("Frame", SVBase)
                SVKnob.Size = UDim2.new(0, 10, 0, 10)
                SVKnob.AnchorPoint = Vector2.new(0.5, 0.5)
                SVKnob.BackgroundColor3 = Color3.new(1,1,1)
                SVKnob.ZIndex = 5
                SVKnob.Position = UDim2.new(s, 0, 1-v, 0)
                Instance.new("UICorner", SVKnob).CornerRadius = UDim.new(1, 0)
                local SVKS = Instance.new("UIStroke", SVKnob)
                SVKS.Color = Color3.new(1,1,1)
                SVKS.Thickness = 1.5

                local SVBtn = Instance.new("TextButton", SVBase)
                SVBtn.BackgroundTransparency = 1
                SVBtn.Size = UDim2.new(1,0,1,0)
                SVBtn.Text = ""
                SVBtn.ZIndex = 4

                -- Hue Slider
                local HueSlider = Instance.new("Frame", CP)
                HueSlider.Position = UDim2.new(0, pad, 0, headerH + pad + svH + pad/2)
                HueSlider.Size = UDim2.new(1, -pad*2, 0, hueH)
                HueSlider.BackgroundColor3 = Color3.new(1,1,1)
                HueSlider.ClipsDescendants = true
                Instance.new("UICorner", HueSlider).CornerRadius = UDim.new(1, 0)
                local HG = Instance.new("UIGradient", HueSlider)
                HG.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0,    Color3.fromHSV(0,    1, 1)),
                    ColorSequenceKeypoint.new(1/6,  Color3.fromHSV(1/6,  1, 1)),
                    ColorSequenceKeypoint.new(2/6,  Color3.fromHSV(2/6,  1, 1)),
                    ColorSequenceKeypoint.new(0.5,  Color3.fromHSV(0.5,  1, 1)),
                    ColorSequenceKeypoint.new(4/6,  Color3.fromHSV(4/6,  1, 1)),
                    ColorSequenceKeypoint.new(5/6,  Color3.fromHSV(5/6,  1, 1)),
                    ColorSequenceKeypoint.new(1,    Color3.fromHSV(0,    1, 1)),
                })

                local HueKnob = Instance.new("Frame", HueSlider)
                HueKnob.BackgroundColor3 = Color3.new(1,1,1)
                HueKnob.Size = UDim2.new(0, hueH, 0, hueH)
                HueKnob.AnchorPoint = Vector2.new(0.5, 0.5)
                HueKnob.Position = UDim2.new(h, 0, 0.5, 0)
                HueKnob.ZIndex = 5
                Instance.new("UICorner", HueKnob).CornerRadius = UDim.new(1, 0)
                local HKS = Instance.new("UIStroke", HueKnob)
                HKS.Color = Color3.fromRGB(50,50,50)
                HKS.Thickness = 1.5

                local HueBtn = Instance.new("TextButton", HueSlider)
                HueBtn.BackgroundTransparency = 1
                HueBtn.Size = UDim2.new(1,0,1,0)
                HueBtn.Text = ""
                HueBtn.ZIndex = 4

                -- Hex Input
                local hexY = headerH + pad + svH + pad/2 + hueH + pad/2
                local HexCont = Instance.new("Frame", CP)
                HexCont.Position = UDim2.new(0, pad, 0, hexY)
                HexCont.Size = UDim2.new(1, -pad*2, 0, hexH)
                HexCont.BackgroundColor3 = Color3.fromRGB(28,28,28)
                Instance.new("UICorner", HexCont).CornerRadius = UDim.new(0, 4)
                local HCS = Instance.new("UIStroke", HexCont)
                HCS.Color = _G.Border
                HCS.Thickness = 1

                local HashLbl = Instance.new("TextLabel", HexCont)
                HashLbl.BackgroundTransparency = 1
                HashLbl.Position = UDim2.new(0, 8, 0, 0)
                HashLbl.Size = UDim2.new(0, 14, 1, 0)
                HashLbl.Font = Enum.Font.GothamMedium
                HashLbl.Text = "#"
                HashLbl.TextColor3 = _G.TextSecondary
                HashLbl.TextSize = isMobile and 11 or 12

                local HexInput = Instance.new("TextBox", HexCont)
                HexInput.BackgroundTransparency = 1
                HexInput.Position = UDim2.new(0, 22, 0, 0)
                HexInput.Size = UDim2.new(1, -30, 1, 0)
                HexInput.Font = Enum.Font.GothamMedium
                HexInput.Text = ""
                HexInput.TextColor3 = _G.TextPrimary
                HexInput.TextSize = isMobile and 11 or 12
                HexInput.ClearTextOnFocus = false
                HexInput.TextXAlignment = Enum.TextXAlignment.Left
                HexInput.Focused:Connect(function() tw(HCS, {Color = _G.Accent}) end)
                HexInput.FocusLost:Connect(function() tw(HCS, {Color = _G.Border}) end)

                -- Helpers
                local function toHex(c)
                    return string.format("%02X%02X%02X",
                        math.floor(c.R*255), math.floor(c.G*255), math.floor(c.B*255))
                end
                local function fromHex(hex)
                    hex = hex:gsub("#","")
                    if #hex ~= 6 then return nil end
                    local r = tonumber(hex:sub(1,2),16)
                    local g = tonumber(hex:sub(3,4),16)
                    local b = tonumber(hex:sub(5,6),16)
                    return r and g and b and Color3.fromRGB(r,g,b) or nil
                end

                local function refresh()
                    color = Color3.fromHSV(h, s, v)
                    Swatch.BackgroundColor3 = color
                    SVBase.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
                    SVKnob.Position = UDim2.new(s, 0, 1-v, 0)
                    HueKnob.Position = UDim2.new(h, 0, 0.5, 0)
                    local hex = toHex(color)
                    HexDisp.Text = "#"..hex
                    if not HexInput:IsFocused() then HexInput.Text = hex end
                    pcall(callback, color)
                end

                SVBtn.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        dragSV = true
                    end
                end)
                HueBtn.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        dragHue = true
                    end
                end)
                UserInputService.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        dragSV = false; dragHue = false
                    end
                end)
                UserInputService.InputChanged:Connect(function(input)
                    if not (dragSV or dragHue) then return end
                    local isTouch = input.UserInputType == Enum.UserInputType.Touch
                    local isMouse = input.UserInputType == Enum.UserInputType.MouseMovement
                    if not (isTouch or isMouse) then return end
                    local pos = isTouch and input.Position or UserInputService:GetMouseLocation()
                    if dragSV then
                        local ap = SVBase.AbsolutePosition
                        local as = SVBase.AbsoluteSize
                        s = math.clamp((pos.X - ap.X) / as.X, 0, 1)
                        v = 1 - math.clamp((pos.Y - ap.Y) / as.Y, 0, 1)
                        refresh()
                    elseif dragHue then
                        local ap = HueSlider.AbsolutePosition
                        local as = HueSlider.AbsoluteSize
                        h = math.clamp((pos.X - ap.X) / as.X, 0, 1)
                        refresh()
                    end
                end)

                HexInput.FocusLost:Connect(function()
                    local nc = fromHex(HexInput.Text)
                    if nc then
                        h, s, v = Color3.toHSV(nc)
                        refresh()
                    else
                        HexInput.Text = toHex(color)
                    end
                end)

                Hdr.MouseButton1Click:Connect(function()
                    isOpen = not isOpen
                    if isOpen then
                        CP:TweenSize(UDim2.new(0, elemW, 0, expandH),
                            Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true)
                        tw(CPS, {Color = _G.Accent})
                    else
                        CP:TweenSize(UDim2.new(0, elemW, 0, headerH),
                            Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true)
                        tw(CPS, {Color = _G.Border})
                    end
                end)

                refresh()

                local api = {}
                function api:Set(c)
                    color = c; h, s, v = Color3.toHSV(c); refresh()
                end
                function api:Get() return color end
                return api
            end

            -- ── Keybind (NEW) ──────────────────────────────────────────
            function main:Keybind(text, default, callback)
                local key = default or Enum.KeyCode.E
                local listening = false
                local inputConn

                local KB = Instance.new("Frame", MFP)
                KB.Name = "Keybind"
                KB.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
                KB.Size = UDim2.new(0, elemW, 0, isMobile and 32 or 34)
                Instance.new("UICorner", KB).CornerRadius = UDim.new(0, 5)
                local KBS = Instance.new("UIStroke", KB)
                KBS.Color = _G.Border
                KBS.Thickness = 1

                local Lbl = Instance.new("TextLabel", KB)
                Lbl.BackgroundTransparency = 1
                Lbl.Position = UDim2.new(0, isMobile and 10 or 14, 0, 0)
                Lbl.Size = UDim2.new(0.55, 0, 1, 0)
                Lbl.Font = Enum.Font.GothamMedium
                Lbl.Text = text
                Lbl.TextColor3 = _G.TextPrimary
                Lbl.TextSize = isMobile and 12 or 13
                Lbl.TextXAlignment = Enum.TextXAlignment.Left

                local KeyBtn = Instance.new("TextButton", KB)
                KeyBtn.AnchorPoint = Vector2.new(1, 0.5)
                KeyBtn.Position = UDim2.new(1, -(isMobile and 8 or 10), 0.5, 0)
                KeyBtn.Size = isMobile and UDim2.new(0, 72, 0, 20) or UDim2.new(0, 80, 0, 22)
                KeyBtn.BackgroundColor3 = Color3.fromRGB(28,28,28)
                KeyBtn.Font = Enum.Font.GothamMedium
                KeyBtn.TextColor3 = _G.TextSecondary
                KeyBtn.TextSize = isMobile and 9 or 11
                KeyBtn.AutoButtonColor = false
                Instance.new("UICorner", KeyBtn).CornerRadius = UDim.new(0, 4)
                local KKS = Instance.new("UIStroke", KeyBtn)
                KKS.Color = _G.Border
                KKS.Thickness = 1

                local function keyName(k)
                    return tostring(k):gsub("Enum%.KeyCode%.",""):gsub("Enum%.UserInputType%.","")
                end
                local function setDisplay(name, active)
                    KeyBtn.Text = active and "[ ... ]" or "[ "..name.." ]"
                    tw(KKS, {Color = active and _G.Accent or _G.Border})
                    tw(KeyBtn, {TextColor3 = active and _G.Accent or _G.TextSecondary})
                end
                setDisplay(keyName(key), false)

                KeyBtn.MouseEnter:Connect(function()
                    if not listening then tw(KeyBtn, {TextColor3 = _G.TextPrimary}) end
                end)
                KeyBtn.MouseLeave:Connect(function()
                    if not listening then tw(KeyBtn, {TextColor3 = _G.TextSecondary}) end
                end)

                KeyBtn.MouseButton1Click:Connect(function()
                    if listening then return end
                    listening = true
                    setDisplay("", true)

                    inputConn = UserInputService.InputBegan:Connect(function(input, gp)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 and gp then return end
                        -- Escape cancels
                        if input.KeyCode == Enum.KeyCode.Escape then
                            setDisplay(keyName(key), false)
                            listening = false
                            if inputConn then inputConn:Disconnect() end
                            return
                        end
                        if input.KeyCode ~= Enum.KeyCode.Unknown then
                            key = input.KeyCode
                        elseif input.UserInputType ~= Enum.UserInputType.MouseMovement
                            and input.UserInputType ~= Enum.UserInputType.MouseButton1 then
                            key = input.UserInputType
                        else
                            return
                        end
                        setDisplay(keyName(key), false)
                        listening = false
                        if inputConn then inputConn:Disconnect() end
                        pcall(callback, key)
                    end)
                end)

                local api = {}
                function api:Set(k)
                    key = k
                    setDisplay(keyName(k), false)
                end
                function api:Get() return key end
                return api
            end

            -- ── Progress Bar (BONUS) ───────────────────────────────────
            function main:ProgressBar(text, initial)
                local pct = math.clamp(initial or 0, 0, 100)

                local PB = Instance.new("Frame", MFP)
                PB.Name = "ProgressBar"
                PB.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
                PB.Size = UDim2.new(0, elemW, 0, isMobile and 44 or 48)
                Instance.new("UICorner", PB).CornerRadius = UDim.new(0, 5)
                local PBS = Instance.new("UIStroke", PB)
                PBS.Color = _G.Border
                PBS.Thickness = 1

                local PBLbl = Instance.new("TextLabel", PB)
                PBLbl.BackgroundTransparency = 1
                PBLbl.Position = UDim2.new(0, isMobile and 10 or 14, 0, isMobile and 7 or 8)
                PBLbl.Size = UDim2.new(0.7, 0, 0, 16)
                PBLbl.Font = Enum.Font.GothamMedium
                PBLbl.Text = text
                PBLbl.TextColor3 = _G.TextPrimary
                PBLbl.TextSize = isMobile and 11 or 13
                PBLbl.TextXAlignment = Enum.TextXAlignment.Left

                local PBPct = Instance.new("TextLabel", PB)
                PBPct.BackgroundTransparency = 1
                PBPct.AnchorPoint = Vector2.new(1, 0)
                PBPct.Position = UDim2.new(1, -(isMobile and 10 or 14), 0, isMobile and 7 or 8)
                PBPct.Size = UDim2.new(0, 40, 0, 16)
                PBPct.Font = Enum.Font.GothamMedium
                PBPct.TextColor3 = _G.Accent
                PBPct.TextSize = isMobile and 11 or 13
                PBPct.TextXAlignment = Enum.TextXAlignment.Right
                PBPct.Text = pct.."%"

                local TrackY = isMobile and 28 or 32
                local Track = Instance.new("Frame", PB)
                Track.BackgroundColor3 = Color3.fromRGB(38,38,38)
                Track.Position = UDim2.new(0, isMobile and 10 or 14, 0, TrackY)
                Track.Size = UDim2.new(1, -(isMobile and 20 or 28), 0, isMobile and 5 or 5)
                Instance.new("UICorner", Track).CornerRadius = UDim.new(1, 0)

                local Fill = Instance.new("Frame", Track)
                Fill.BackgroundColor3 = _G.Accent
                Fill.Size = UDim2.new(pct/100, 0, 1, 0)
                Instance.new("UICorner", Fill).CornerRadius = UDim.new(1, 0)

                local api = {}
                function api:Set(p)
                    p = math.clamp(p, 0, 100)
                    pct = p
                    PBPct.Text = math.floor(p).."%"
                    tw(Fill, {Size = UDim2.new(p/100, 0, 1, 0)}, 0.3)
                end
                function api:Get() return pct end
                function api:SetColor(c) tw(Fill, {BackgroundColor3 = c}) end
                return api
            end

            return main
        end

        return uitab
    end

end
return library
