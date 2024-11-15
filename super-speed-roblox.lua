local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait()
local hmd = chr:WaitForChild("Humanoid")

game:GetService("UserInputService").InputBegan:Connect(function(i)
	if i.KeyCode == Enum.KeyCode.V then
		hmd.WalkSpeed = hmd.WalkSpeed == 64 and 16 or 64
	end
end)

plr.CharacterAdded:Connect(function(ch)
	chr = ch
	hmd = ch:WaitForChild("Humanoid")
end)

