# ESP-Library

This is not finished, only adds chams for now.

Usage:
```lua
--// For random objects in the game.

local esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterRainbow/ESP-Library/main/ESPLib.lua"))() -- gets the esp lib.

local parents = {"Lever"} -- the objects parents names, you can also leave this empty.
local parts = {"Case", "Switch"}  -- the objects names, you can also leave this empty.
local props = {color = Color3.fromRGB(255, 0, 0), alwaysOnTop = true, onlyPlayers = false, transparency = 0.5} -- the properties table, you can include this, there's a default property table in the script.

local example = esp:Chams(parents, parts, props) -- creates chams for every instance in the game that is a part, has its name in the parts table and its parent's name is in the parents table.

wait(10)

for i, v in pairs(example) do 
  v:Destroy() -- destroys the chams.
end

--// For players in the game.

-- They do not reappear when a player respawns/joins. It's 4 AM and I am tired. I'll add this soon.

local esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterRainbow/ESP-Library/main/ESPLib.lua"))() -- gets the esp lib.

local parents = {} -- you can put a players name you don't want to add chams for in it, you can also leave it empty.
local parts = {} -- you can also leave this empty. It will default to 'HumanoidRootPart'.
local props = {onlyPlayers = true}

local plrs = esp:Chams(parents, parts, props) -- creates chams for every player in the game.

wait(10)

for i, v in pairs(plrs) do 
  v:Destroy() -- destroys the chams.
end
```

Example:
```lua
local esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterRainbow/ESP-Library/main/ESPLib.lua"))()

local parents = {}
local parts = {"HumanoidRootPart", "Head", "Right Leg", "Left Leg", "Right Arm", "Left Arm"}
local props = {
    color = Color3.fromRGB(255, 0, 0),
    transparency = 0,
    alwaysOnTop = true,
    onlyPlayers = false
}

local plrChams = esp:Chams(parents, parts, props)
```

-- Notes --

I started to log execution times for the scripts. This is so I can see which script is active and whether or not I should update them.

You can join the discord server to see the logs.

https://discord.gg/agrk5GYruW

I will add a lot more, boxes, health. Basically everything a good ESP library would have.

Send me bugs etc.

Discord: Alter#6089
