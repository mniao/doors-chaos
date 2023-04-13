local Players = game:GetService("Players")
local Debris = game:GetService("Debris")
local RunService = game:GetService("RunService")
local SoundService = game:GetService("SoundService")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local EntityCreator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

local localPlayer = Players.LocalPlayer
local playerScripts = localPlayer:WaitForChild("PlayerScripts")
local playerModule = require(playerScripts:WaitForChild("PlayerModule"))

local movementController = playerModule:GetControls()

local Events = {}

local function spawnA90(damage)
    local u1 = localPlayer.PlayerGui:FindFirstChild("MainUI");
    local p1 = {
        cam = workspace.CurrentCamera,
        hum = localPlayer.Character.Humanoid
    }
    local A90Module = u1.Initiator.Main_Game.RemoteListener.Modules.A90

    local spawnSound = A90Module.Spawn
    local hitSound = A90Module.Hit

    local l__Jumpscare_A90__3 = u1.Jumpscare.Jumpscare_A90;
    l__Jumpscare_A90__3.BackgroundTransparency = 1;
    l__Jumpscare_A90__3.Face.Visible = true;
    l__Jumpscare_A90__3.FaceAngry.Visible = false;
    l__Jumpscare_A90__3.Static.Visible = true;
    l__Jumpscare_A90__3.Static2.Visible = true;
    l__Jumpscare_A90__3.Static.ImageTransparency = 1;
    l__Jumpscare_A90__3.Static2.ImageTransparency = 1;
    game.SoundService.Main.Volume = 0;
    l__Jumpscare_A90__3.Face.ImageColor3 = Color3.new(0, 0, 0);
    l__Jumpscare_A90__3.Face.Position = UDim2.new(math.random(10, 90) / 100, 0, math.random(10, 90) / 100, 0);
    l__Jumpscare_A90__3.Visible = true;
    spawnSound.SoundGroup = nil;
    hitSound.SoundGroup = nil;
    spawnSound:Play();
    task.wait(0.03333333333333333);
    l__Jumpscare_A90__3.Face.ImageColor3 = Color3.new(1, 1, 1);
    task.wait(0.48);
    l__Jumpscare_A90__3.BackgroundTransparency = 0;
    l__Jumpscare_A90__3.Face.Position = UDim2.new(0.5, 0, 0.49, 0);
    task.wait(0.03333333333333333);
    l__Jumpscare_A90__3.StopIcon.Visible = true;
    l__Jumpscare_A90__3.BackgroundColor3 = Color3.new(0, 0, 0);
    l__Jumpscare_A90__3.BackgroundTransparency = 1;
    l__Jumpscare_A90__3.Static.ImageTransparency = 0.8;
    l__Jumpscare_A90__3.Static2.ImageTransparency = 0.8;
    local u2 = true;
    local u3 = false;
    local l__LookVector__4 = p1.cam.CFrame.LookVector;
    task.delay(0.5, function()
        l__Jumpscare_A90__3.StopIcon.Visible = false;
        while u2 do
            task.wait(0.03333333333333333);
            l__Jumpscare_A90__3.Static.Position = UDim2.new(math.random(0, 100) / 100, 0, math.random(0, 100) / 100, 0);
            l__Jumpscare_A90__3.Static.Rotation = math.random(0, 1) * 180;
            l__Jumpscare_A90__3.Static2.Position = UDim2.new(math.random(0, 100) / 100, 0, math.random(0, 100) / 100, 0);
            l__Jumpscare_A90__3.Static2.Rotation = math.random(0, 1) * 180;
            l__Jumpscare_A90__3.Face.Position = UDim2.new(0.5, 0, 0.49, math.random(-1, 1));
            l__Jumpscare_A90__3.FaceAngry.Position = UDim2.new(0.5 + math.random(-100, 100) / 50000, 0, 0.49 + math.random(-100, 100) / 30000, math.random(-1, 1));
            local v4 = math.random(0, 1);
            l__Jumpscare_A90__3.FaceAngry.ImageColor3 = Color3.new(1, v4, v4);
            if not u3 then
                if (l__LookVector__4 - p1.cam.CFrame.LookVector).Magnitude > 0.4 then
                    print("LOOKED TOO FAR AWAY");
                    u3 = true;
                end;
                if p1.hum.MoveDirection.Magnitude > 0.4 then
                    print("KEPT MOVING");
                    u3 = true;
                end;
            end;		
        end;
    end);
    task.wait(0.6);
    l__Jumpscare_A90__3.BackgroundColor3 = Color3.new(0, 0, 0);
    l__Jumpscare_A90__3.BackgroundTransparency = 0;
    l__Jumpscare_A90__3.Static.ImageTransparency = 0;
    l__Jumpscare_A90__3.Static2.ImageTransparency = 0.5;
    task.wait(0.03333333333333333);
    l__Jumpscare_A90__3.Face.ImageColor3 = Color3.new(1, 0, 0);
    task.wait(0.03333333333333333);
    l__Jumpscare_A90__3.Visible = false;
    task.wait(0.08);
    if u3 then
        l__Jumpscare_A90__3.Visible = true;
        hitSound:Play();
        task.wait(0.03333333333333333);
        l__Jumpscare_A90__3.Face.ImageColor3 = Color3.new(1, 1, 1);
        task.wait(0.03333333333333333);
        l__Jumpscare_A90__3.BackgroundTransparency = 0;
        l__Jumpscare_A90__3.Static.ImageTransparency = 0;
        l__Jumpscare_A90__3.Static2.ImageTransparency = 0.5;
        task.wait(0.06666666666666667);
        l__Jumpscare_A90__3.FaceAngry.ImageColor3 = Color3.new(1, 0, 0);
        l__Jumpscare_A90__3.FaceAngry.Visible = true;
        task.wait(0.06666666666666667);
        l__Jumpscare_A90__3.FaceAngry.ImageColor3 = Color3.new(1, 1, 1);
        l__Jumpscare_A90__3.Face.Visible = false;
        l__Jumpscare_A90__3.FaceAngry.Size = UDim2.new(0.8, 0, 0.8, 0);
        task.wait(0.75);
        if damage then
            localPlayer.Character.Humanoid.Health = 0;
        end
        task.wait(0.1);
        l__Jumpscare_A90__3.FaceAngry.Visible = false;
        l__Jumpscare_A90__3.BackgroundColor3 = Color3.new(1, 1, 1);
        l__Jumpscare_A90__3.Static.ImageTransparency = 1;
        l__Jumpscare_A90__3.Static2.ImageTransparency = 1;
        task.wait(0.06666666666666667);
        l__Jumpscare_A90__3.BackgroundColor3 = Color3.new(1, 0, 0);
        task.wait(0.06666666666666667);
        l__Jumpscare_A90__3.BackgroundColor3 = Color3.new(0, 0, 0);
        task.wait(0.06666666666666667);

        localPlayer.Character.Humanoid.Health = 0
    else
        spawnSound:Stop();
        l__Jumpscare_A90__3.BackgroundTransparency = 1;
    end;
    u2 = false;
    game.SoundService.Main.Volume = 1;
    l__Jumpscare_A90__3.Visible = false;

    return u3
end


local speedyRush = EntityCreator.createEntity({
    CustomName = "Rush (2x Speed)", -- Custom name of your entity
    Model = "https://github.com/RegularVynixu/Utilities/blob/main/Doors%20Entity%20Spawner/Models/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 200, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    BackwardsMovement = false,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled/Disabled
        4, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
})

local rizzler = EntityCreator.createEntity({
    CustomName = "The Rizzler", -- Custom name of your entity
    Model = "https://github.com/mniao/doors-chaos/blob/main/rizzler.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 150,
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    BackwardsMovement = false,
    BreakLights = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        4, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 2,
        WaitTime = 3,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {7, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://12623079242", -- Image1 url
            Image2 = "rbxassetid://12623079242", -- Image2 url
            Shake = true,
            Sound1 = {
                5058160717, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                4809574295, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                false, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
})

local function spawnScreech()
    local screechAttack = require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)
    screechAttack(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end

local soundCache = {}
local function playLocalSound(soundId, vol)
    local sound = nil

    if soundCache[soundId] then
        sound = soundCache[soundId]
    else
        sound = Instance.new("Sound")
        sound.SoundId = soundId
    end

    sound.Volume = vol

    SoundService:PlayLocalSound(sound)
end

Events["ScreechHell"] = {
    onStart = function ()
        task.spawn(function ()
            getgenv().screechHellEvent = true
            while getgenv().screechHellEvent do
                for i = 1, 5 do
                    task.spawn(function()
                        spawnScreech()
                    end)
                end
                task.wait(1)
            end
        end)
    end,
    onEnd = function ()
        getgenv().screechHellEvent = false
    end,
    Duration = 10,
    Name = "Screech Hell"
}


Events["Meowscare"] = {
    onStart = function ()
        local newGui = Instance.new("ScreenGui")
        local frame = Instance.new("ImageLabel")
    
        frame.Image = "rbxassetid://13049267922"
        frame.Size = UDim2.new(0, 550, 0, 550)
        frame.BackgroundTransparency = 1
        frame.Position = UDim2.fromScale(.5,.5)
        frame.AnchorPoint = Vector2.new(.5,.5)
        frame.Visible = false
        frame.Parent = newGui
    
        newGui.Parent = localPlayer.PlayerGui

        task.wait(2)

        frame.Visible = true
    
        playLocalSound("rbxassetid://5058160717", 4)
        playLocalSound("rbxassetid://1091083826", 5)
    
        task.wait(1.5)
    
        local tween = TweenService:Create(frame, TweenInfo.new(2, Enum.EasingStyle.Sine), {Size = UDim2.new(0, 350, 0 , 350), ImageTransparency = 1})
        tween:Play()
    
        Debris:AddItem(newGui, 3)
    end,
    Name = "Meowscare"
}


Events["A90"] = {
    onStart = function ()
        spawnA90(true)
    end,
    Name = "A-90"
}


Events["SpeedRush"] ={
    onStart = function ()
        EntityCreator.runEntity(speedyRush)
    end,
    Duration = 20,
    Name = "Rush (2x Speed)"
}


Events["10FPSCAP"] = {
    onStart = function ()
        task.spawn(function ()
            local MaxFPS = 10
            getgenv().fpsCapEvent = true
            while getgenv().fpsCapEvent do
                local Tick1 = tick()
                RunService.Heartbeat:Wait()
                repeat until (Tick1 + 1/MaxFPS) < tick()
            end
        end)
    end,
    onEnd = function ()
        getgenv().fpsCapEvent = false
    end,
    Duration = 20,
    Name = "Mobile Experience (Lag)"
}


Events["MoreWalkspeed"] = {
    onStart = function ()
        local c = RunService.RenderStepped:Connect(function()
            localPlayer.Character.Humanoid.WalkSpeed = 20
        end)

        return c
    end,
    onEnd = function (c)
        c:Disconnect()
        localPlayer.Character.Humanoid.WalkSpeed = 15
    end,
    Duration = 15,
    Name = "VROOOOOMMM"
}

Events["InvertControls"] = {
    onStart = function ()
        movementController.moveFunction = function (player, direction, relative)
            localPlayer.Move(player, -direction, relative)
        end
    end,
    onEnd = function ()
        movementController.moveFunction = localPlayer.Move
    end,
    Duration = 20,
    Name = "Inverted Controls"
}

Events["Glitch"] = {
    onStart = function ()
        require(ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(localPlayer.PlayerGui.MainUI.Initiator.Main_Game),
        workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
    end,
    Name = "Spawn Glitch"
}

Events["Blur"] = {
    onStart = function ()
        local blur = Instance.new("BlurEffect")
        local targetBlurSize = 50
        blur.Size = 0
        blur.Parent = Lighting
        
        TweenService:Create(blur, TweenInfo.new(1.5, Enum.EasingStyle.Quint), {Size = targetBlurSize}):Play()

        return blur
    end,
    onEnd = function (blur)
        if blur then
            blur:Destroy()
        end
    end,
    Duration = 25,
    Name = "Where are my glasses?"
}

Events["Flashbang"] = {
    onStart = function()
        SoundService.Main.Volume = 0
        local flashUI = Instance.new("ScreenGui")
        local explosionSound = Instance.new("Sound")
        explosionSound.Volume = 3
        local blur = Instance.new("BlurEffect")
        blur.Size = 50
        explosionSound.SoundId = "rbxassetid://5801257793"

        flashUI.IgnoreGuiInset = true

        local frame = Instance.new("Frame")
        frame.BackgroundColor3 = Color3.new(1,1,1)
        frame.AnchorPoint = Vector2.new(0.5,0.5)
        frame.Size = UDim2.fromScale(1,1)
        frame.Position = UDim2.fromScale(.5, .5)
        frame.BackgroundTransparency = 1
        frame.Parent = flashUI

        flashUI.Parent = localPlayer.PlayerGui

        local whiteTweenIn = TweenService:Create(frame, TweenInfo.new(.5, Enum.EasingStyle.Quint), {BackgroundTransparency=0})
        local whiteTweenOut = TweenService:Create(frame, TweenInfo.new(5, Enum.EasingStyle.Sine), {BackgroundTransparency=1})
        local blurOut = TweenService:Create(blur, TweenInfo.new(10, Enum.EasingStyle.Sine), {Size=0})
        local audioBack = TweenService:Create(SoundService.Main, TweenInfo.new(8, Enum.EasingStyle.Linear), {Volume=1})

        Debris:AddItem(blur, 15)
        Debris:AddItem(flashUI, 15)

        SoundService:PlayLocalSound(explosionSound)
        task.spawn(function()
            blur.Parent = Lighting
            whiteTweenIn:Play()
            task.wait(2)
            whiteTweenOut:Play()
            audioBack:Play()
            blurOut:Play()
        end)
    end,
    Name = "FLASHBANG!",
    Duration = 2
}

Events["Moving"] = {
    onStart = function ()
        getgenv().autoRunningConnection = RunService.RenderStepped:Connect(function(dt)
            localPlayer.Character.Humanoid:Move(Vector3.new(0,0,1), true)
        end)
    end,
    onEnd = function ()
        getgenv().autoRunningConnection:Disconnect()
    end,
    Name = "Moonwalk",
    Duration = 20
}

Events["FlipCamera"] = {
    onStart = function ()
        getgenv().flipCameraUpdateConnection = RunService.RenderStepped:Connect(function()
            workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * CFrame.Angles(0,0,math.rad(180))
        end)
    end,
    onEnd = function ()
        if getgenv().flipCameraUpdateConnection then
            getgenv().flipCameraUpdateConnection:Disconnect()
        end
    end,
    Name = "Flipped Camera",
    Duration = 20
}

Events["SpinCamera"] = {
    onStart = function ()
        getgenv().spinCameraUpdateConnection = RunService.RenderStepped:Connect(function()
            workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * CFrame.Angles(0,0,math.rad(os.clock() * 2))
        end)
    end,
    onEnd = function ()
        if getgenv().spinCameraUpdateConnection then
            getgenv().spinCameraUpdateConnection:Disconnect()
        end
    end,
    Name = "Spin Camera",
    Duration = 20
}

--[[
    Events["ScreechCombo"] = {
    onStart = function ()
        task.spawn(spawnScreech)
        task.wait(1)
        task.spawn(spawnA90, true)
    end,
    Name = "A-90 + Screech"
}
]]

--[[
    Events["Rizzler"] = {
    onStart = function ()
        EntityCreator.runEntity(rizzler)
    end,
    Duration = 20,
    Name = "RIZZLER"
}
]]

return Events
