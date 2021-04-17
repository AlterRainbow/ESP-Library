# ESP-Library

This is not finished, only adds chams for now.

Usage:
```lua
--// For random objects in the game.

local esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterRainbow/ESP-Library/main/ESPLib.lua"))() -- gets the esp lib.

local parents = {"Lever"} -- the objects parents names, you can also leave this empty.
local parts = {"Case", "Switch"}  -- the objects names, you can also leave this empty.

local example = esp:Chams(parents, parts, Color3.fromRGB(255, 0, 255), false) -- creates chams for every instance in the game that is a part and has at a name in the parts table, the part is also a child of an instance in the game that has a name in the parents table.

wait(10)

for i, v in pairs(example) do 
  v:Destroy() -- destroys the chams.
end

--// For players in the game.

-- They do not reappear when a player respawns, joins. It's 4 AM and I am tired. I'll add this tomorrow.

local esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterRainbow/ESP-Library/main/ESPLib.lua"))() -- gets the esp lib.

local parents = {} -- you can put a players name you don't want to add chams for in it, you can also leave it empty.
local parts = {} -- you can also leave this empty. It will default to 'HumanoidRootPart'.

local plrs = esp:Chams(parents, parts, Color3.fromRGB(0, 255, 0), true) -- creates chams for every player in the game.

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

local plrChams = esp:Chams(parents, parts, Color3.fromRGB(14, 121, 121), true)
```

-- Notes --

I do not log your IP, HWID or anything else.

I will add a lot more, boxes, health. Basically everything a good ESP library would have.

Send me bugs etc.

Discord: AlterRainbow#6089
