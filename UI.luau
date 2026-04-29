local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local g = getgenv()

local Window = WindUI:CreateWindow({
    Title = "Mercury",
    Icon = "door-open",
    Author = "by 6yed",
})

Window:Tag({
    Title = "BETA",
    Icon = "github",
    Color = Color3.fromHex("#30ff6a"),
    Radius = 0,
})

local PlayerTab = Window:Tab({
    Title = "Player",
    Locked = false,
})

PlayerTab:Select()

local Toggle = PlayerTab:Toggle({
    Title = "Toggle",
    Desc = "Toggle Description",
    Icon = "bird",
    Type = "Checkbox",
    Value = g.config.player.walktog, -- default value
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})
