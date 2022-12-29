local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "xix", IntroEnabled = "true", IntroText = "Booting xix"})
OrionLib:Destroy()
OrionLib:MakeNotification({
    Name = "xix",
    Content = "xix successfully loaded. Thank you for using xix.",
    Image = "rbxassetid://4483345998",
    Time = 5
})
--theme

local colors = {
    SchemeColor = Color3.fromRGB(217,124,30),
    Background = Color3.fromRGB(3,4,5),
    Header = Color3.fromRGB(7,8,13),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
local Window = Library.CreateLib("xix v2.4 - Stable Release", colors)

--tabs
local xixtab = Window:NewTab("xix")
local MovementModifiers = Window:NewTab("Movement")
local Utility = Window:NewTab("Utility")
local Misc = Window:NewTab("Misc")
local Debug = Window:NewTab("Debug")

--section
local Movement = MovementModifiers:NewSection("Movement")
local xix = xixtab:NewSection("xix")
local Utilities = Utility:NewSection("Utilities")
local MiscSection = Misc:NewSection("Misc")
local Debug = Debug:NewSection("Debug")

--xix
xix:NewLabel("xix developed by General Dismal#6428 - https://discord.gg/Ps3YwXjGrJ")
xix:NewButton("Close GUI", "Closes the GUI", function()
    Library:ToggleUI()
    OrionLib:MakeNotification({
        Name = "xix",
        Content = "GUI closed.",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end)

--movement
Movement:NewToggle("Infinite Jump", "Flying for spammers.", function(state)
    if state then
        --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	OrionLib:MakeNotification({
        Name = "xix",
        Content = "Infinite jump ready!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
    else
        --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	OrionLib:MakeNotification({
        Name = "xix",
        Content = "Infinite jump ready!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
    end
end)
Movement:NewSlider("Jump Power", "Changes the players jump power.", 500, 0, function(j) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
end)
Movement:NewButton("Reset Jump Power", "Resets the players jump power to the default power.", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)
Movement:NewSlider("Speed", "Changes the players speed.", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Movement:NewButton("Reset Speed", "Resets the players speed to the default walk speed.", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

--utilities
Utilities:NewButton("Flashlight", "Turn your eyeballs into lightbulbs.", function()
    character = game:GetService("Players").LocalPlayer.Character
pointLight = Instance.new("PointLight")
pointLight.Parent = character.HumanoidRootPart
end)
Utilities:NewSlider("Gravity", "Ooooooh, we're in space!", 300, -100, function(g) -- 300 (MaxValue) | -100 (MinValue)
    workspace.Gravity = g
end)
Utilities:NewButton("Reset Gravity", "Awwwwww. C'mon. Being in space is fun!", function()
    workspace.Gravity = 100
    g = 100
end)

--misc
MiscSection:NewToggle("Float", "Rise to the heavens!", function(state)
    if state then
        player = game:GetService("Players").LocalPlayer

--Remove BodyVelocity to remove float
if player.Character.HumanoidRootPart:FindFirstChild("WRDBodyVelocity") then
    player.Character.HumanoidRootPart.WRDBodyVelocity:Destroy()
--Insert BodyVelocity to add float
else
    local bodyVelocity = Instance.new("BodyVelocity")
    --So we know what specific instance to remove when toggle off
    bodyVelocity.Name = "WRDBodyVelocity"
    bodyVelocity.Parent = player.Character.HumanoidRootPart
end
    else
        player = game:GetService("Players").LocalPlayer

--Remove BodyVelocity to remove float
if player.Character.HumanoidRootPart:FindFirstChild("WRDBodyVelocity") then
    player.Character.HumanoidRootPart.WRDBodyVelocity:Destroy()
--Insert BodyVelocity to add float
else
    local bodyVelocity = Instance.new("BodyVelocity")
    --So we know what specific instance to remove when toggle off
    bodyVelocity.Name = "WRDBodyVelocity"
    bodyVelocity.Parent = player.Character.HumanoidRootPart
end
    end
end)
MiscSection:NewButton("Remove Legs", "NOTE: Will not work if you are wearing layered clothing.", function()
    character = game:GetService("Players").LocalPlayer.Character

--R6 Rigs
leftLeg = character:FindFirstChild("Left Leg")
if leftLeg then leftLeg:Destroy() end
rightLeg = character:FindFirstChild("Right Leg")
if rightLeg then rightLeg:Destroy() end

--R15 Rigs
leftUpperLeg = character:FindFirstChild("LeftUpperLeg")
if leftUpperLeg then leftUpperLeg:Destroy() end
leftLowerLeg = character:FindFirstChild("LeftLowerLeg")
if leftLowerLeg then leftLowerLeg:Destroy() end
leftFoot = character:FindFirstChild("LeftFoot")
if leftFoot then leftFoot:Destroy() end
rightUpperLeg = character:FindFirstChild("RightUpperLeg")
if rightUpperLeg then rightUpperLeg:Destroy() end
rightLowerLeg = character:FindFirstChild("RightLowerLeg")
if rightLowerLeg then rightLowerLeg:Destroy() end
rightFoot = character:FindFirstChild("RightFoot")
if rightFoot then rightFoot:Destroy() end
end)
MiscSection:NewButton("High Hips", "You have never missed leg day.", function()
    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = 10
end)

--debug
Debug:NewButton("Dex Explorer - BabyHamsta", "I couldnt think what to put here.", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
end)

--gamecontent
local gamecontent = Window:NewTab("Game Content")
--doors
if game.PlaceId == 6516141723 then
    OrionLib:MakeNotification({
        Name = "xix - Doors",
        Content = "This game has an exclusive tab!`",
        Image = "rbxassetid://4483345998",
        Time = 5    
    })
end
local doors = gamecontent:NewSection("Doors")
doors:NewButton("Voidz - RTrade", "Opens Voidz", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/RTrade/Voidz/main/DoorsLoader")))()
end)
doors:NewButton("Darkrai X - GamingScripter", "Opens Darkrai X", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Doors"))()
end)
doors:NewButton("Vynixius - RegularVynixu", "Opens Vynixius", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
end)


OrionLib:Init()