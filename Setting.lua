local Settings = {}

Settings.Config = {
    HubName = "Dandy Hub",
    Version = "1.0",
    Theme = "Dark",
    AccentColor = Color3.fromRGB(120, 80, 255),

    ShowPlayerInfo = true,
    ShowUsername = true,
    ShowAvatar = true
}

function Settings.Get(setting)
    return Settings.Config[setting]
end

function Settings.Set(setting, value)
    if Settings.Config[setting] == nil then
        return false
    end

    Settings.Config[setting] = value
    return true
end

return Settings
