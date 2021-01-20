local lib = loadstring(game:HttpGet('https://ghostbin.co/paste/b7j2g/raw ',true))()
local ESPlib = loadstring(game:HttpGet("https://ghostbin.co/paste/rpb7c/raw"))()

stepped = game:service('RunService').RenderStepped:Connect(function()
    if AFM then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    if Disableda then
        Stepped:Disconnect()
    end
end)
function Click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

local Main = lib:MainWindow("Conqueror Piece")
local AutoFram = Main:Tab("Auto Fram")
local Stats = Main:Tab("Stats")
local Teleport = Main:Tab("Teleport")
local Players = Main:Tab("Players")
local ESP = Main:Tab("ESP")
weapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(weapon, v.Name)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(weapon, v.Name)
    end
end
AutoFram:Dropdown("Selected Weapon",weapon,function(value)
    selectedweapon = value
end)
AutoFram:Toggle("Auto Fram",false,function(value)
    AFM = value
end)
AutoFram:Label("Auto Fram Haki (Must buy Haki first")
AutoFram:Toggle("Auto Haki",false,function(Value)
    AFMHAKI = Value
end)
spawn(function()
    while wait(1) do
        if AFMHAKI then
            if game:GetService("Players").LocalPlayer.Character.Buso.Value == game:GetService("Players").LocalPlayer.Character.Buso.MaxValue then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("Players").LocalPlayer.Character.Move.Haki:FireServer(unpack(args))
            end
        end 
    end 
end)
Count = 1
local Point = Stats:Label("Point : ")
Stats:Textbox("Count :",false,function(value)
    Count = value
end)
Stats:Toggle("Melee +",false,function(value)
    Melee = value
end)
Stats:Toggle("Sword +",false,function(value)
    Sword = value
end)
Stats:Toggle("Defense +",false,function(value)
    Defense = value
end)
Stats:Toggle("Fruit +",false,function(value)
    Fruit = value
end)
spawn(function()
    while wait(0.25) do
        if Count == 1  then
            if Melee then
                local args = {
                    [1] = "lvlstg",
                    [2] = 1
                }
                game:GetService("ReplicatedStorage").Remote.StatsAdded:FireServer(unpack(args))
            elseif Sword then
                local args = {
                    [1] = "lvlblade",
                    [2] = 1
                }
                game:GetService("ReplicatedStorage").Remote.StatsAdded:FireServer(unpack(args))
            elseif Defense then
                local args = {
                    [1] = "lvldef",
                    [2] = 1
                }
                game:GetService("ReplicatedStorage").Remote.StatsAdded:FireServer(unpack(args))
            elseif Fruit then
                local args = {
                    [1] = "lvldf",
                    [2] = 1
                }
                game:GetService("ReplicatedStorage").Remote.StatsAdded:FireServer(unpack(args))
            end 
        else
            if Melee then
                local args = {
                    [1] = "lvlstg",
                    [2] = Count
                }
                game:GetService("ReplicatedStorage").Remote.StatsAdded:FireServer(unpack(args))
            elseif Sword then
                local args = {
                    [1] = "lvlblade",
                    [2] = Count
                }
                game:GetService("ReplicatedStorage").Remote.StatsAdded:FireServer(unpack(args))
            elseif Defense then
                local args = {
                    [1] = "lvldef",
                    [2] = Count
                }
                game:GetService("ReplicatedStorage").Remote.StatsAdded:FireServer(unpack(args))
            elseif Fruit then
                local args = {
                    [1] = "lvldf",
                    [2] = Count
                }
                game:GetService("ReplicatedStorage").Remote.StatsAdded:FireServer(unpack(args))
            end 
        end
        Point:Refresh("Point : "..game.Players.localPlayer.PlayerStats.Points.Value)
    end
end)
Teleport:Label("Teleport Island")
Teleport:Toggle("Ctrl + Click = TP",false,function(vu)
    CTRL = vu
end)
Teleport:Button("Devini Poet",function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-552.349976, 23.8400002, 271.600006) end)
Teleport:Button("Vownkaua Island",function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-896, 106.823997, 4930.52979) end)
Teleport:Button("Cloawna Island",function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2422.6499, 22.8962994, 2531.54004) end)
Teleport:Button("Aquarood Bastion",function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3064.75122, 13.9400053, -2767.63989) end)
Teleport:Button("Luanra Town",function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3683.80005, 69.302002, 2474.63989) end)
Teleport:Button("Wrasta Town",function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3217.36011, 44.5229034, -2583.44995) end)
Teleport:Label("---------------------------------------------------------------------------------------------------")
Teleport:Label("Teleport NPC")
Teleport:Button("Haki Trainer 1",function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-920, 73.0623703, 5000.91016) end)
Teleport:Button("Haki Trainer 2",function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2849.22998, 63.4099998, -3012.37012) end)
Teleport:Button("Rose",function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3554.66992, 84.7901001, 2453.8999) end)
Teleport:Button("Joe",function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-756.533997, 25.3899994, 390.96701) end)
Teleport:Button("???",function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3433.37988, 51.0102997, -2481.17993) end)
Teleport:Label("---------------------------------------------------------------------------------------------------")
ESP:Colorpicker("Color ESP",Color3.fromRGB(255, 255, 255),function(Value)
    ESPlib:SetESPColor(Value)
end)
ESP:Toggle("ESP Player",false,function(Value)
    ESPPLY = Value
    if ESPPLY then
        ESPlib:NameESPToggle(true)
    elseif not ESPPLY then
        ESPlib:NameESPToggle(false)
    end 
end)

PlayerName = {}
for i,v in pairs(game.Players:GetChildren()) do  
    table.insert(PlayerName, v.Name)
end
local SelectedPlayer = Players:Label("Selected Player : ")
Players:Dropdown("Selected Player",PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
    KillPlayer = plys
    SelectedPlayer:labelRefresh("Selected Player : "..KillPlayer)
end)
Players:Toggle("Spectate Player",false,function(bool)
    Sp = bool
    if Sp then
        for i,v in pairs(game.Players:GetChildren()) do
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
function Checklvl()
    -- level 1-14 = Thug Npc Chris
    -- level 15-39 = Buggy Pirate Npc Rabbit
    -- level 40-59 = Monkey Npc MonkeyQuest
    -- level 60-100 = Fishman Npc Deirdre
    levelPlayer = game.Players.LocalPlayer.PlayerStats.Lvl.Value
    if levelPlayer == 1 or levelPlayer <= 14 then
        Ms = "Thug"
        NPCQUEST = game.Workspace.NPC.Chris.HumanoidRootPart.CFrame
        clickdetector = game.Workspace.NPC.Chris.ClickDetector
    elseif levelPlayer == 15 or levelPlayer <= 39 then
        Ms = "Buggy Pirate"
        NPCQUEST = game.Workspace.NPC.Rabbit.HumanoidRootPart.CFrame
        clickdetector = game.Workspace.NPC.Rabbit.ClickDetector
    elseif levelPlayer == 40 or levelPlayer <= 59 then
        Ms = "Monkey"
        NPCQUEST = game.Workspace.NPC.MonkeyQuest.HumanoidRootPart.CFrame
        clickdetector = game.Workspace.NPC.MonkeyQuest.ClickDetector
    elseif levelPlayer >= 60 then
        Ms = "Fishman Pirate"
        NPCQUEST = game.Workspace.NPC.Deirdre.HumanoidRootPart.CFrame
        clickdetector = game.Workspace.NPC.Deirdre.ClickDetector
    end
end
Checklvl()
function AutoQuest()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NPCQUEST
    Click()
    fireclickdetector(clickdetector)
    local args = {
        [1] = true,
        [2] = {
            ["Name"] = Ms
        }
    }
    game:GetService("ReplicatedStorage").Remote.Talk:FireServer(unpack(args))
end
function CheckQuest()
    for i,v in pairs(game.Players.LocalPlayer:GetChildren()) do
        if v.Name == "Quest" then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(selectedweapon) then
                local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(selectedweapon)
                wait(.4)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
            for i,v in pairs(game.Workspace.Mob:GetDescendants()) do
                if AFM and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == Ms then
                    pcall(function()
                        repeat wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 6, 0)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.Angles(math.rad(-90),0,0)
                            Click()
                        until not AFM or v.Humanoid.Health <= 0
                    end)
                end
            end
        else
            Checklvl()
            AutoQuest()
        end
    end
end
spawn(function()
    while wait() do
        if AFM then
            CheckQuest()
        end
    end 
end)
local set = Main:Tab("Setting")
set:Label("Toggle Gui - RightControl", 17.5)
set:Label("Shiro Hub", 18)
set:Label("discord.gg/rBDwRu87EH", 17)
set:Button("Copy link discord",function()
    setclipboard("https://discord.gg/rBDwRu87EH")
end)
set:Button("Destroy Gui",function()
    if game:GetService("CoreGui"):FindFirstChild("loserui") then
        game:GetService("CoreGui").loserui:Destroy()
    end
end)
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