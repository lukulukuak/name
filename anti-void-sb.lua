local plr = game.Players.LocalPlayer
local chr = plr.Character
local hrp = chr:WaitForChild("HumanoidRootPart")
local on = false

function create()
	local part = Instance.new("Part", workspace)
	part.Name = "voidfloat"
	part.Anchored = true
	part.Transparency = 0.5
	part.Size = Vector3.new(8, 1, 8)
	part.Color = Color3.fromRGB(165, 162, 163)
	part.TopSurface = "Studs"
	part.BottomSurface = "Studs"
	part.LeftSurface = "Studs"
	part.RightSurface = "Studs"
	part.FrontSurface = "Studs"
	part.BackSurface = "Studs"
	while wait() do
		part.Position = Vector3.new(hrp.Position.X, -9.25, hrp.Position.Z)
		if on == false then
			break
		end
	end
end

function remove()
	if workspace:FindFirstChild("voidfloat") then
		workspace:FindFirstChild("voidfloat"):Destroy()
	end
end

function click()
	if on == false then
		on = true
		create()
	end
	if on == true then
		on = false
		remove()
	end
end

btn.MouseButton1Click:Connect(click)
game:GetService("UserInputService").InputBegan:Connect(function(i)
	if i.KeyCode == Enum.KeyCode.B then
		click()
	end
end)

plr.CharacterAdded:Connect(function()
	chr = plr.Character
	hrp = chr:WaitForChild("HumanoidRootPart")
end)

