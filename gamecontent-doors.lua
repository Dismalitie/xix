local a=loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()local b=a:CreateWindow({Name="Xix - Developed by Dismal and Kordik",LoadingTitle="Xix - Doors",LoadingSubtitle="Developed by Dismal",ConfigurationSaving={Enabled=true,FolderName="xixdoors",FileName="xixdoors"},Discord={Enabled=true,Invite="Ps3YwXjGrJ",RememberJoins=true},KeySystem=false,KeySettings={Title="Xix",Subtitle="Key System",Note="Join the discord (discord.gg/Ps3YwXjGrJ) to get a key! - Note: Sharing your key will result in a ban.",FileName="XixKey",SaveKey=true,GrabKeyFromSite=false,Key="Ps3YwXjGrJ"}})a:Notify({Title="Xix",Content="Thank you for using Xix!",Duration=6.5,Image=4483362458})local c=b:CreateTab("Game Content",4483362458)local b=b:CreateTab("Script Hubs",4483362458)if game.PlaceId==6516141723 then a:Notify({Title="Xix - Game Content",Content="This game is compatible with Game Content. Head over to the Game Content tab use exclusive features!",Duration=6.5,Image=4483362458})end;local d=b:CreateLabel("Doors - Script Hubs")local d=b:CreateButton({Name="Voidz - RTrade",Callback=function()loadstring(game:HttpGet(("https://raw.githubusercontent.com/RTrade/Voidz/main/DoorsLoader")))()end})local d=b:CreateButton({Name="Vynixius - RegularVynixu",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()end})local b=b:CreateButton({Name="Darkrai X - GamingScripter",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Doors"))()end})local b=c:CreateLabel("Doors - Entities")local b=c:CreateButton({Name="Summon Glitch",Callback=function()require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])end})local b=c:CreateButton({Name="Summon Screech",Callback=function()require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])end})local b=c:CreateButton({Name="Summon Ambush",Callback=function()loadstring(game:HttpGet"https://raw.githubusercontent.com/sponguss/storage/main/entitySpawner.lua")().createEntity("Ambush")end})local b=c:CreateButton({Name="Summon Halt",Callback=function()require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])end})local b=c:CreateButton({Name="Summon Timothy",Callback=function()local a=game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game;require(a.RemoteListener.Modules.SpiderJumpscare)(require(a),workspace.CurrentRooms["0"].Assets.Dresser.DrawerContainer,0.2)end})workspace.ChildAdded:Connect(function(b)if b.Name=="RushMoving"then a:Notify({Title="Xix - Doors",Content="Quick, hide! Rush has spawned!",Duration=6.5,Image=4483362458})elseif b.Name=="AmbushMoving"then a:Notify({Title="Xix - Doors",Content="Quick, hide! Ambush has spawned!",Duration=6.5,Image=4483362458})end end)
