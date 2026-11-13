-- DANDY HUB
-- Interface module

local Interface = {}

function Interface.Create(player, gui)

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

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 45)
    title.BackgroundTransparency = 1
    title.Text = "DANDY HUB"
    title.TextColor3 = Color3.new(1, 1, 1)
    title.TextSize = 24
    title.Font = Enum.Font.GothamBold
    title.Parent = main

    return main
end

return Interface
