coroutine.wrap(function()
    while true do
        wait(math.random(75, 170))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
if workspace:FindFirstChild("SeekMoving") == nil and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value ~= 50 then
        wait(1.5)
loadstring(game:HttpGet("
