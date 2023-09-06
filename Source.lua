

function NotifyUI(Color, Text0, Delay)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "Notification Skeik Neik"
    local Header = Instance.new("Frame")
    local Text = Instance.new("TextLabel")
    local Visual = Instance.new("Frame")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local ts = game:GetService("TweenService")
    local Wait

    if game.CoreGui:FindFirstChild("Notification Skeik Neik") then
        game.CoreGui:FindFirstChild("Notification Skeik Neik"):Destroy()
    end
    ScreenGui.Parent = game:WaitForChild("CoreGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Header.Name = "Header"
    Header.Parent = ScreenGui
    Header.BackgroundTransparency = 0
    Header.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Header.BorderSizePixel = 0
    Header.Position = UDim2.new(0, 1655, 0, 920)
    Header.Size = UDim2.new(0, 376, 0, 30)

    Text.Name = "Text"
    Text.Parent = Header
    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text.BackgroundTransparency = 1.000
    Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Text.BorderSizePixel = 0
    Text.Position = UDim2.new(0, 12, 0, 0)
    Text.Size = UDim2.new(0, 362, 0, 30)
    Text.Font = Enum.Font.SourceSans
    Text.Text = "NYA MEOW ONICHAN NYA FEMBOY UWU"
    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text.TextScaled = true
    Text.TextSize = 20.000
    Text.TextWrapped = true

    Visual.Name = "Visual"
    Visual.Parent = Header
    Visual.BackgroundColor3 = Color3.fromRGB(178, 245, 255)
    Visual.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Visual.Position = UDim2.new(0, 0, 0, 1)
    Visual.Size = UDim2.new(0, 4, 0, 28)

    UIAspectRatioConstraint.Parent = Header
    UIAspectRatioConstraint.AspectRatio = 12.533

    if Color == "Red" then
        Visual.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    elseif Color == "Blue" then
        Visual.BackgroundColor3 = Color3.fromRGB(26, 244, 255)
    elseif Color == "White" then
        Visual.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    elseif Color == "Orange" then
        Visual.BackgroundColor3 = Color3.fromRGB(255, 141, 42)
    elseif Color == "Purple" then
        Visual.BackgroundColor3 = Color3.fromRGB(131, 98, 203)
    end

    if Delay then
        Wait = Delay
    end

    Text.Text = Text0

    local function OpenGUI()
        local Animation = ts:Create(Header, TweenInfo.new(.25), {Position = UDim2.new(0, 1490, 0, 920)})
        Animation:Play()

        Animation.Completed:Wait()
    end

    local function CloseGUI()
        task.wait(Delay)

        local Animation = ts:Create(Header, TweenInfo.new(.25), {Position = UDim2.new(0, 2055, 0, 920)})
        Animation:Play()

        Animation.Completed:Wait()

        if game.CoreGui:FindFirstChild("Notification Skeik Neik") then
            game.CoreGui:FindFirstChild("Notification Skeik Neik"):Destroy()
        end
    end
    OpenGUI()
    CloseGUI()
end
