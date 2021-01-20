local lib = loadstring(game:HttpGet('https://ghostbin.co/paste/b7j2g/raw ',true))()
local ESPlib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/Helios-Hub/main/Scripts/HeliosESP.lua")()
local LocalPlayer = game:GetService'Players'.LocalPlayer
local placeId = game.PlaceId
if placeId == 4442272183 then
  newworld = true
end
function click()
  game:GetService'VirtualUser':CaptureController()
  game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

local BloxFruits = lib:MainWindow("Blox Fruits")
local AutoFram = BloxFruits:Tab("Auto Fram")
local Stats = BloxFruits:Tab("Stats - Skill")
local Misc = BloxFruits:Tab("Misc")
if newworld then
    local RaidNew = BloxFruits:Tab("Raids")
    RaidNew:Label("Use In Raid Only")
    RaidNew:Toggle("Kill Arua",false,function(value)
        Raids = value
    end)
    RaidNew:Button("Awakening Room",function()
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783, 1.39509034, 1857.00732)
    end)
    spawn(function()
        while wait() do
            if Raids then
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if Raids and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
                        pcall(function()
                            repeat wait()
                            click()
                            click()
                            click()
                            click()
                            v.HumanoidRootPart.Transparency = 0.5
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v.HumanoidRootPart.BrickColor = BrickColor.new("White")
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.Health = 0
                            click()
                            click()
                            click()
                            click()
                            until not Raids or not v.Parent or v.Humanoid.Health <= 0
                        end)
                    end
                end
            end
        end
    end)
end
local Teleport = BloxFruits:Tab("Teleport")
local Players = BloxFruits:Tab("Players")
local DevilFruitsSinper = BloxFruits:Tab("Devil Fruits Sinper")
local set = BloxFruits:Tab("Setting")
set:Label("Toggle Gui - RightControl", 17.5)
set:Label("Shiro Hub", 18)
set:Label("discord.gg/rBDwRu87EH", 17)
set:Button("Copy link discord",function()
    setclipboard("https://discord.gg/rBDwRu87EH")
end)
set:Destroy("Destroy Gui")
set:Label("--   Server   --", 18)
set:Button("Rejoin",function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)
local function HttpGet(url)
    return game:GetService("HttpService"):JSONDecode(htgetf(url))
end
set:Button("Server Hop",function()
    local d = HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId=" .. game.PlaceId .. "&startindex=0")
    local f = HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId=" .. game.PlaceId .. "&startindex=".. math.random(0,tonumber(d.TotalCollectionSize)))
    local c = f.Collection[math.random(1,#f.Collection)]
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, c.Guid)
end)
AutoFram:Toggle("Level Fram (Coming Soon)",false,function(value)
  AFM = value
end)
if newworld then
    AutoFram:Toggle("Auto But SS",false,function(value)
        AutoButSS = value
    end)
    spawn(function()
        while wait() do
            if AutoButSS then
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
        end
    end)
end
Stats:Label("Selected Stats")
local Point = Stats:Label("Point :")
Point:Refresh("Point : "..game.Players.localPlayer.Data.Points.Value)
melee = false
Stats:Toggle("Melee",false,function(value)
  melee = value
end)
defense = false
Stats:Toggle("Defense",false,function(value)
  defense = value
end)
sword = false
Stats:Toggle("Sword",false,function(value)
  sword = value
end)
gun = false
Stats:Toggle("Gun",false,function(value)
  gun = value
end)
demonfruit = false
Stats:Toggle("Demon Fruit",false,function(value)
  demonfruit = value
end)
Misc:Label("Candi Shop")
SkillZ = false
Misc:Toggle("Skill Z",false,function(value)
    SkillZ = value
end)
SkillX = false
Misc:Toggle("Skill X",false,function(value)
    SkillX = value
end)
SkillC = false
Misc:Toggle("Skill C",false,function(value)
    SkillC = value
end)
SkillV = false
Misc:Toggle("Skill V",false,function(value)
    SkillV = value
end)
spawn(function()
    while wait() do
      if autostats then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",1)
      end 
      if defense then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",1)
      end 
      if sword then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",1)
      end 
      if gun then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",1)
      end 
      if demonfruit then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",1)
      end
      Point:Refresh("Point : "..game.Players.localPlayer.Data.Points.Value) 
    end
  end)
Stats:Label("Selected Skill")
SkillZ = false
Stats:Toggle("Skill Z",false,function(value)
    SkillZ = value
end)
SkillX = false
Stats:Toggle("Skill X",false,function(value)
    SkillX = value
end)
SkillC = false
Stats:Toggle("Skill C",false,function(value)
    SkillC = value
end)
SkillV = false
Stats:Toggle("Skill V",false,function(value)
    SkillV = value
end)

Teleport:Toggle("Ctrl + Click = TP",false,function(vu)
    CTRL = vu
end)
Teleport:Button("Current Quest",false,function()
    --game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["_WorldOrigin"].Locations.Name.CFrame
end)
if newworld then
    Teleport:Button("Dungeon",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)
    end)
    Teleport:Button("First Spot",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(82.9490662, 18.0710983, 2834.98779)
    end)
    Teleport:Button("Kingdom of Rose",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["_WorldOrigin"].Locations["Kingdom of Rose"].CFrame
    end)
    Teleport:Button("Dark Ares",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["_WorldOrigin"].Locations["Dark Arena"].CFrame
    end)
    Teleport:Button("Flamingo Mansion",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-390.096313, 331.886475, 673.464966)
    end)
    Teleport:Button("Flamingo Room",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2302.19019, 15.1778421, 663.811035)
    end)
    Teleport:Button("Green bit",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2372.14697, 72.9919434, -3166.51416)
    end)
    Teleport:Button("Cafe",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-385.250916, 73.0458984, 297.388397)
    end)
    Teleport:Button("Factroy",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(430.42569, 210.019623, -432.504791)
    end)
    Teleport:Button("Colosseum",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836.58191, 44.5890656, 1360.30652)
    end)
    Teleport:Button("Ghost Island",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5571.84424, 195.182297, -795.432922)
    end)
    Teleport:Button("Ghost Island 2nd",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5931.77979, 5.19706631, -1189.6908)
    end)
    Teleport:Button("Snow Mountain",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1384.68298, 453.569031, -4990.09766)
    end)
    Teleport:Button("Hot and Cold",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6026.96484, 14.7461271, -5071.96338)
    end)
    Teleport:Button("Magma Side",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5478.39209, 15.9775667, -5246.9126)
    end)
    Teleport:Button("Cursed Ship",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902.059143, 124.752518, 33071.8125)
    end)
    Teleport:Button("Frosted Island",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5400.40381, 28.21698, -6236.99219)
    end)
else
    Teleport:Button("Start Island",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1071.2832, 16.3085976, 1426.86792)
    end)
    Teleport:Button("Middle Town",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-655.824158, 7.88708115, 1436.67908)
    end)
    Teleport:Button("Jungle",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1249.77222, 11.8870859, 341.356476)
    end)
    Teleport:Button("Buggy Island",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1122.34998, 4.78708982, 3855.91992)
    end)
    Teleport:Button("Desert",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1094.14587, 6.47350502, 4192.88721)
    end)
    Teleport:Button("Snow Island",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1198.00928, 27.0074959, -1211.73376)
    end)
    Teleport:Button("MarineFord",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4505.375, 20.687294, 4260.55908)
    end)
    Teleport:Button("Sky 1st Floor",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4970.21875, 717.707275, -2622.35449)
    end)
    Teleport:Button("Sky 2st Floor",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4813.0249, 903.708557, -1912.69055)
    end)
    Teleport:Button("Sky 3st Floor",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7952.31006, 5545.52832, -320.704956)
    end)
    Teleport:Button("Impel Down",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4854.16455, 5.68742752, 740.194641)
    end)
    Teleport:Button("Vocalno Island",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5231.75879, 8.61593437, 8467.87695)
    end)
    Teleport:Button("UndeyWater City",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61163.8516, 11.7796879, 1819.78418)
    end)
    Teleport:Button("Cyborg's Island Spot",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5132.7124, 4.53632832, 4037.8562)
    end)
    Teleport:Button("House Cyborg's",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6262.72559, 71.3003616, 3998.23047)
    end)
    Teleport:Button("Shank's Room",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
    end)
end
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
    LocalPlayer.Character.Energy.Changed:connect(function()
      if InfinitsEnergy then
        LocalPlayer.Character.Energy.Value = originalstam
      end 
    end)
end
spawn(function()
  while wait() do
    if InfinitsEnergy then
      wait(0.3)
      originalstam = LocalPlayer.Character.Energy.Value
      infinitestam()
    end
  end
end)
nododgecool = false
function NoDodgeCool()
  if nododgecool then
    for i,v in next, getgc() do
      if game.Players.LocalPlayer.Character.Dodge then
        if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
          for i2,v2 in next, getupvalues(v) do
            if tostring(v2) == "0.4" then
              repeat wait()
                setupvalue(v,i2,0)
              until not nododgecool
            end
          end
        end
      end
    end
  end
end
Misc:Toggle("Dodge No Cooldown",false,function(value)
    nododgecool = value
    NoDodgeCool()
end)
Misc:Toggle("Infinits Energy",false,function(value)
    InfinitsEnergy = value
    originalstam = LocalPlayer.Character.Energy.Value
end)
Misc:Toggle("Auto Click",false,function(value)
    AuctoClick = value
end)
spawn(function()
    while wait() do
        if AuctoClick then
            click()
        end
    end
end)
PlayerName = {}
for i,v in pairs(game.Players:GetChildren()) do  
    table.insert(PlayerName, v.Name)
end
local SelectedPlayer = Players:Label("Selected Player : ")
Players:Dropdown("Selected Player",PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
    KillPlayer = plys
    SelectedPlayer:Refresh("Selected Player : "..KillPlayer)
end)
Players:Toggle("Spectate Player",false,function(bool)
    Sp = bool
    if Sp then
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name == KillPlayer then
                game.Workspace.Camera.CameraSubject = v.Character.Humanoid
            end
        end
    elseif not Sp then
        game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    end 
end)
Players:Button("Telepoet Player",function()
    local plr1 = game.Players.LocalPlayer.Character
    local plr2 = game.Players:FindFirstChild(KillPlayer)
    plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame
end)
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
Mouse.Button1Down:connect(
    function()
        if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
            return
        end
        if not Mouse.Target then
            return
        end
        if CTRL then
            Plr.Character:MoveTo(Mouse.Hit.p)
        end
    end
)
