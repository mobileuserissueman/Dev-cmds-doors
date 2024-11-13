coroutine.wrap(function()
    while true do
        wait(math.random(1, 12))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
if workspace:FindFirstChild("SeekMoving") == nil and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value ~= 50 then
        wait(1.5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/mobileuserissueman/Dev-cmds-doors/refs/heads/main/Source-shocker.lua"))()
end
    end
end)()

coroutine.wrap(function()
    while true do
        wait(math.random(1, 23))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
if workspace:FindFirstChild("SeekMoving") == nil and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value ~= 50 then
        wait(1.5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/mobileuserissueman/Dev-cmds-doors/refs/heads/main/Source-Ripper.lua"))()
end
    end
end)()
