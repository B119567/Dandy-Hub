
-- DANDY HUB V1.0
-- Black / White / Red Edition

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "DandyHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Main menu
local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.fromOffset(300, 300)
main.Position = UDim2.new(0.5, -150, 0.5, -150)
main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
main.BorderSizePixel = 0
main.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = main

local outline = Instance.new("UIStroke")
outline.Color = Color3.fromRGB(210, 25, 40)
outline.Thickness = 2
outline.Parent = main

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundTransparency = 1
title.Text = "DANDY HUB"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 24
title.Parent = main

-- Player profile
local profile = Instance.new("TextLabel")
profile.Size = UDim2.new(1, -75, 0, 50)
profile.Position = UDim2.fromOffset(75, 55)
profile.BackgroundTransparency = 1
profile.Text = player.DisplayName .. "\n@" .. player.Name
profile.TextColor3 = Color3.fromRGB(255, 255, 255)
profile.TextSize = 14
profile.Font = Enum.Font.GothamBold
profile.TextXAlignment = Enum.TextXAlignment.Left
profile.Parent = main

-- Avatar
local avatar = Instance.new("ImageLabel")
avatar.Size = UDim2.fromOffset(55, 55)
avatar.Position = UDim2.fromOffset(12, 52)
avatar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
avatar.Parent = main

local avatarCorner = Instance.new("UICorner")
avatarCorner.CornerRadius = UDim.new(1, 0)
avatarCorner.Parent = avatar

task.spawn(function()
    local success, image = pcall(function()
        return Players:GetUserThumbnailAsync(
            player.UserId,
            Enum.ThumbnailType.HeadShot,
            Enum.ThumbnailSize.Size100x100
        )
    end)

    if success then
        avatar.Image = image
    end
end)

-- Button creator
local function createButton(text, y)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -24, 0, 38)
    button.Position = UDim2.fromOffset(12, y)
    button.BackgroundColor3 = Color3.fromRGB(175, 25, 35)
    button.Text = text
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextSize = 14
    button.Font = Enum.Font.GothamBold
    button.Parent = main

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 8)
    c.Parent = button

    return button
end

local info = createButton("DANDY HUB LOADED", 125)
info.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

local settings = createButton("SETTINGS", 172)
local about = createButton("ABOUT", 219)

settings.MouseButton1Click:Connect(function()
    info.Text = "SETTINGS SELECTED"
end)

about.MouseButton1Click:Connect(function()
    info.Text = "DANDY HUB V1.0"
end)

-- Floating W button
local toggle = Instance.new("TextButton")
toggle.Name = "ToggleButton"
toggle.Size = UDim2.fromOffset(55, 55)
toggle.Position = UDim2.new(0, 20, 0.5, 0)
toggle.BackgroundColor3 = Color3.fromRGB(190, 20, 35)
toggle.Text = "W"
toggle.TextColor3 = Color3.new(1, 1, 1)
toggle.TextSize = 25
toggle.Font = Enum.Font.GothamBold
toggle.Parent = gui

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(1, 0)
toggleCorner.Parent = toggle

toggle.MouseButton1Click:Connect(function()
    main.Visible = not main.Visible
end)

print("DANDY HUB V1.0 LOADED")
