return function()
	local CoreGui = game:GetService("CoreGui")
	local TweenService = game:GetService("TweenService")
	
	local gui = CoreGui:FindFirstChild("ModernNotificationUI") or Instance.new("ScreenGui")
	gui.Name = "ModernNotificationUI"
	gui.ResetOnSpawn = false
	gui.IgnoreGuiInset = true
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	gui.Parent = CoreGui
	
	local container = gui:FindFirstChild("NotificationContainer") or Instance.new("Frame")
	container.Name = "NotificationContainer"
	container.AnchorPoint = Vector2.new(1, 1)
	container.Size = UDim2.new(0, 320, 1, -20)
	container.Position = UDim2.new(1, -20, 1, -20)
	container.BackgroundTransparency = 1
	container.Parent = gui
	
	if not container:FindFirstChild("Scale") then
		local scale = Instance.new("UIScale")
		scale.Name = "Scale"
		scale.Scale = 1
		scale.Parent = container
	end
	
	local layout = container:FindFirstChildOfClass("UIListLayout") or Instance.new("UIListLayout")
	layout.Padding = UDim.new(0, 10)
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	layout.Parent = container
	
	local function notify(titleText, messageText, duration)
		duration = duration or 5
	
		local notif = Instance.new("Frame")
		notif.Size = UDim2.new(1, 0, 0, 0)
		notif.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		notif.BackgroundTransparency = 1
		notif.LayoutOrder = -tick()
		notif.ClipsDescendants = true
		notif.Parent = container
	
		Instance.new("UICorner", notif).CornerRadius = UDim.new(0, 12)
	
		local stroke = Instance.new("UIStroke", notif)
		stroke.Color = Color3.fromRGB(80, 160, 200)
		stroke.Thickness = 1
		stroke.Transparency = 0.5
	
		local title = Instance.new("TextLabel", notif)
		title.Size = UDim2.new(1, -40, 0, 22)
		title.Position = UDim2.new(0, 14, 0, 10)
		title.BackgroundTransparency = 1
		title.Text = titleText
		title.TextColor3 = Color3.fromRGB(255, 255, 255)
		title.Font = Enum.Font.FredokaOne
		title.TextSize = 18
		title.TextXAlignment = Enum.TextXAlignment.Left
	
		local message = Instance.new("TextLabel", notif)
		message.Size = UDim2.new(1, -40, 0, 40)
		message.Position = UDim2.new(0, 14, 0, 32)
		message.BackgroundTransparency = 1
		message.Text = messageText
		message.TextColor3 = Color3.fromRGB(200, 200, 200)
		message.Font = Enum.Font.FredokaOne
		message.TextSize = 14
		message.TextWrapped = true
		message.TextXAlignment = Enum.TextXAlignment.Left
		message.TextYAlignment = Enum.TextYAlignment.Top
	
		local closeBtn = Instance.new("TextButton", notif)
		closeBtn.Size = UDim2.new(0, 22, 0, 22)
		closeBtn.Position = UDim2.new(1, -28, 0, 8)
		closeBtn.Text = "✕"
		closeBtn.TextColor3 = Color3.fromRGB(255, 100, 100)
		closeBtn.BackgroundTransparency = 1
		closeBtn.Font = Enum.Font.FredokaOne
		closeBtn.TextSize = 18
	
		TweenService:Create(notif, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
			Size = UDim2.new(1, 0, 0, 80),
			BackgroundTransparency = 0
		}):Play()
	
		local function close()
			local tween = TweenService:Create(notif, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1
			})
			tween:Play()
			tween.Completed:Wait()
			notif:Destroy()
		end
	
		closeBtn.MouseButton1Click:Connect(close)
		task.delay(duration, function()
			if notif and notif.Parent then close() end
		end)
	end
end
