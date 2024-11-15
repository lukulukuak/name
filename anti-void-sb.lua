local plr = game.Players.gsghfbhdrhdfgbhd
local ui = Instance.new("ScreenGui", plr.PlayerGui)
local btn = Instance.new("TextButton", ui)
local chr = plr.Character
local hrp = chr:WaitForChild("HumanoidRootPart")
local on = false
btn.Size = UDim2.new(0.1,0, 0.1, 0)
btn.TextScaled = true
btn.BackgroundColor3 = Color3.fromRGB(68, 34, 34)
btn.TextColor3 = Color3.fromRGB(255, 215, 215)
btn.Text = "Float"
ui.ResetOnSpawn = false
ui.IgnoreGuiInset = false
btn.MouseButton1Click:Connect(function()
	if on == false then
		on = true
		btn.BackgroundColor3 = Color3.fromRGB(34, 47, 34)
		btn.TextColor3 = Color3.fromRGB(215, 255, 215)
		create()
	end
	if on == true then
		on = false
		btn.BackgroundColor3 = Color3.fromRGB(47, 34, 34)
		btn.TextColor3 = Color3.fromRGB(255, 215, 215)
		remove()
	end
end)
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

plr.CharacterAdded:Connect(function()
	chr = plr.Character
	hrp = chr:WaitForChild("HumanoidRootPart")
end)
