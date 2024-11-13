local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function spawnShocker()
    local shockerModel = game:GetObjects("rbxassetid://12777079952")[1]
    shockerModel.PrimaryPart = shockerModel:FindFirstChild("HumanoidRootPart") or shockerModel:FindFirstChildWhichIsA("Part")
    
    local camera = Workspace.CurrentCamera
    shockerModel:SetPrimaryPartCFrame(camera.CFrame * CFrame.new(0, 0, -7))
    shockerModel.Parent = Workspace

    local oogaBoogaaPart = shockerModel:WaitForChild("OOGA BOOGAAAA")
    local horrorScream = shockerModel:WaitForChild("OOGA BOOGAAAA"):WaitForChild("HORROR SCREAM 15")

    local lookDuration = 5
    local startTime = tick()
    local playerLookingAtShocker = true

    while playerLookingAtShocker do
        wait(4)

        local angle = (oogaBoogaaPart.Position - character.PrimaryPart.Position).unit
        local direction = camera.CFrame.LookVector

        if (angle:Dot(direction) > 0.9) then
            if tick() - startTime >= lookDuration then
                horrorScream:Play()
                humanoid:TakeDamage(20)
                local function GetGitSound(GithubSnd,SoundName)
				local url=GithubSnd
				if not isfile(SoundName..".mp3") then
					writefile(SoundName..".mp3", game:HttpGet(url))
				end
				local sound=Instance.new("Sound")
				sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
				return sound
			end
			game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(255, 255, 255)
	game.Lighting.MainColorCorrection.Contrast = 1
	local tween = game:GetService("TweenService")
	tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(2.5), {Contrast = 0}):Play()
	local TweenService = game:GetService("TweenService")
	local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(80),{TintColor = Color3.fromRGB(255, 255, 255)})
	TW:Play()
        local Jc = GetGitSound("https://github.com/Nowhywhat/Entity-sound/blob/main/shocker%20Jumpscares.mp3?raw=true","Attack")
				Jc.Parent = workspace
				Jc.Volume = 5
				Jc:Play()
                playerLookingAtShocker = false

                local speed = 20
                local targetPosition = character.PrimaryPart.Position

                while oogaBoogaaPart.Position.Y > targetPosition.Y do
                    local directionToPlayer = (targetPosition - oogaBoogaaPart.Position).unit
                    oogaBoogaaPart.Position = oogaBoogaaPart.Position + directionToPlayer * speed * 0.1
                    wait(0.1)
                end

                oogaBoogaaPart.CanCollide = false
                oogaBoogaaPart.Anchored = false
                wait(2)
                shockerModel:Destroy()
game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Shocker"
local func, setupval, getinfo, typeof, getgc, next = nil, debug.setupvalue or setupvalue, debug.getinfo or getinfo, typeof, getgc, next

for i,v in next, getgc(false) do
    if typeof(v) == "function" then
        local info = getinfo(v)
        if info.currentline == 54 and info.nups == 2 and info.is_vararg == 0 then
            func = v
            break
        end
    end
end

local function DeathHint(hints, type: string)
    setupval(func, 1, hints)
    if type ~= nil then
        setupval(func, 2, type)
    end
end

DeathHint({
    "You died to who you call Shocker...",
    "Dont look at it or it stuns you!"
}, "Blue") -- "Blue" or "Yellow"
                break
            end
        else
            
            oogaBoogaaPart.CanCollide = false
            oogaBoogaaPart.Anchored = false
            break
        end
    end
oogaBoogaaPart.CanCollide = false
oogaBoogaaPart.Anchored = false
wait(3)
    shockerModel:Destroy()
end

spawnShocker()
