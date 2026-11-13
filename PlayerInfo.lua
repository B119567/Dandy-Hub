local Players = game:GetService("Players")

local PlayerInfo = {}

local LocalPlayer = Players.LocalPlayer

function PlayerInfo.Create(parent)
    local Frame = Instance.new("Frame")
    Frame.Name = "PlayerInfo"
    Frame.Size = UDim2.new(1, -20, 0, 90)
    Frame.Position = UDim2.new(0, 10, 0, 10)
    Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
    Frame.BorderSizePixel = 0
    Frame.Parent = parent

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 10)
    Corner.Parent = Frame

    local Avatar = Instance.new("ImageLabel")
    Avatar.Name = "Avatar"
    Avatar.Size = UDim2.new(0, 65, 0, 65)
    Avatar.Position = UDim2.new(0, 10, 0, 12)
    Avatar.BackgroundTransparency = 1
    Avatar.Parent = Frame

    local Image = Players:GetUserThumbnailAsync(
        LocalPlayer.UserId,
        Enum.ThumbnailType.HeadShot,
        Enum.ThumbnailSize.Size150x150
    )

    Avatar.Image = Image

    local Name = Instance.new("TextLabel")
    Name.Name = "PlayerName"
    Name.Size = UDim2.new(1, -95, 0, 30)
    Name.Position = UDim2.new(0, 85, 0, 15)
    Name.BackgroundTransparency = 1
    Name.Text = LocalPlayer.DisplayName
    Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    Name.TextSize = 18
    Name.Font = Enum.Font.GothamBold
    Name.TextXAlignment = Enum.TextXAlignment.Left
    Name.Parent = Frame

    local Username = Instance.new("TextLabel")
    Username.Name = "Username"
    Username.Size = UDim2.new(1, -95, 0, 25)
    Username.Position = UDim2.new(0, 85, 0, 45)
    Username.BackgroundTransparency = 1
    Username.Text = "@" .. LocalPlayer.Name
    Username.TextColor3 = Color3.fromRGB(170, 170, 180)
    Username.TextSize = 14
    Username.Font = Enum.Font.Gotham
    Username.TextXAlignment = Enum.TextXAlignment.Left
    Username.Parent = Frame

    return Frame
end

return PlayerInfo
