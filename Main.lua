-- DANDY HUB V1.0
-- Main Module

local Main = {}

-- Module references
local Interface
local PlayerInfo
local Settings

local initialized = false

function Main:Init(modules)
    assert(not initialized, "Dandy Hub already initialized")

    assert(modules.Interface, "Interface module missing")
    assert(modules.PlayerInfo, "PlayerInfo module missing")
    assert(modules.Settings, "Settings module missing")

    Interface = modules.Interface
    PlayerInfo = modules.PlayerInfo
    Settings = modules.Settings

    initialized = true

    print("[Dandy Hub] Modules connected!")
end

function Main:GetStatus()
    return {
        Name = "Dandy Hub",
        Version = "1.0",
        Initialized = initialized
    }
end

return Main
