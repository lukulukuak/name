local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait()



plr.CharacterAdded:Connect(function(ch)
	chr = ch
end)
