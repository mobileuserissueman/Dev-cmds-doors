game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)

        message.string.lower(message)

        if message == "/ripper" then
          loadstring(game:HttpGet("https://raw.githubusercontent.com/mobileuserissueman/Dev-cmds-doors/refs/heads/main/Source-Ripper.lua"))()
        end
      end)
  end)
