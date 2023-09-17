
function NotifyUI(Color, Text0, Delay)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "Notification Skeik Neik"
    local Header = Instance.new("Frame")
    local Text = Instance.new("TextLabel")
    local Visual = Instance.new("Frame")
    local CloseUI = Instance.new("TextButton")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local ts = game:GetService("TweenService")
    local Wait
	local Next
    
    if game.CoreGui:FindFirstChild("Notification Skeik Neik") then
        game.CoreGui:FindFirstChild("Notification Skeik Neik"):Destroy()
    end
	
    ScreenGui.Parent = game:WaitForChild("CoreGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Header.Name = "Header"
    Header.Parent = ScreenGui
    Header.BackgroundTransparency = 0
    Header.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Header.BorderSizePixel = 0
    Header.Position = UDim2.new(1, 0, 0.95)
    Header.Size = UDim2.new(0.195, 0, 0, 33)

    CloseUI.Name = "CloseUI"
    CloseUI.Parent = Header
    CloseUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CloseUI.BackgroundTransparency = 1
    CloseUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CloseUI.Size = UDim2.new(0, 376, 0, 33)
    CloseUI.Font = Enum.Font.SourceSans
    CloseUI.Text = ""
    CloseUI.TextColor3 = Color3.fromRGB(0, 0, 0)
    CloseUI.TextSize = 14.000
    CloseUI.TextWrapped = true

    Text.Name = "Text"
    Text.Parent = Header
    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text.BackgroundTransparency = 1.000
    Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Text.BorderSizePixel = 0
    Text.Position = UDim2.new(0, 7, 0, 2)
    Text.Size = UDim2.new(0, 360, 0, 29)
    Text.Font = Enum.Font.SourceSans
    Text.Text = "NYA MEOW ONICHAN NYA FEMBOY UWU"
    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text.TextScaled = true
    Text.TextSize = 20.000
    Text.TextWrapped = true

    Visual.Name = "Visual"
    Visual.Parent = Header
    Visual.BackgroundColor3 = Color3.fromRGB(178, 245, 255)
    Visual.BorderColor3 = Color3.fromRGB(31, 31, 31)
    Visual.Position = UDim2.new(0, 0, 0, 1.1)
    Visual.Size = UDim2.new(0, 4, 0, 31.2)

    if Color == "Red" then
        Visual.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    elseif Color == "Blue" then
        Visual.BackgroundColor3 = Color3.fromRGB(26, 244, 255)
    elseif Color == "Blue2" then
        Visual.BackgroundColor3 = Color3.fromRGB(156, 217, 255)
    elseif Color == "White" then
        Visual.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    elseif Color == "Orange" then
        Visual.BackgroundColor3 = Color3.fromRGB(255, 141, 42)
    elseif Color == "Purple" then
        Visual.BackgroundColor3 = Color3.fromRGB(131, 98, 203)
    elseif Color == "Green" then
        Visual.BackgroundColor3 = Color3.fromRGB(60, 255, 0)
    elseif Color == "Yellow" then
        Visual.BackgroundColor3 = Color3.fromRGB(255, 238, 0)
    end

    if Delay then
        Wait = Delay
    elseif Delay == false then
        Delay = 9e9
    end

    Text.Text = Text0

    local function OpenGUI()
        local Animation = ts:Create(Header, TweenInfo.new(.25), {Position = UDim2.new(0.80, 0, 0.95)})
        Animation:Play()

        Animation.Completed:Wait()
    end

    local function ManualDisable()
        local AnimationTrans = ts:Create(Header, TweenInfo.new(.25), {BackgroundTransparency = 1})
        AnimationTrans:Play()

        local AnimationTrans2 = ts:Create(Visual, TweenInfo.new(.25), {BackgroundTransparency = 1})
        AnimationTrans2:Play()

        local AnimationTrans3 = ts:Create(Text, TweenInfo.new(.25), {Transparency = 1})
        AnimationTrans3:Play()

        AnimationTrans.Completed:Wait()
        AnimationTrans2.Completed:Wait()
        AnimationTrans3.Completed:Wait()

        if game.CoreGui:FindFirstChild("Notification Skeik Neik") then
            game.CoreGui:FindFirstChild("Notification Skeik Neik"):Destroy()
        end
    end

    local function CloseGUI()
        task.wait(Delay)

        local Animation = ts:Create(Header, TweenInfo.new(.25), {Position = UDim2.new(1, 0, 0.95)})
        Animation:Play()

        Animation.Completed:Wait()

        if game.CoreGui:FindFirstChild("Notification Skeik Neik") then
            game.CoreGui:FindFirstChild("Notification Skeik Neik"):Destroy()
        end
    end

    CloseUI.MouseButton1Click:Connect(
        function()
            ManualDisable()
        end
    )
    OpenGUI()
    CloseGUI()

end
