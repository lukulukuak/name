local plr = game.Players.LocalPlayer
local ui = Instance.new("ScreenGui", plr.PlayerGui)
local btn = Instance.new("TextButton", ui)
local info = Instance.new("TextLabel", btn)
local chr = plr.Character
local hrp = chr:WaitForChild("HumanoidRootPart")
local on = false
btn.Size = UDim2.new(0.1,0, 0.1, 0)
btn.TextScaled = true
btn.BackgroundColor3 = Color3.fromRGB(68, 34, 34)
btn.TextColor3 = Color3.fromRGB(255, 215, 215)
btn.Text = "Float"
btn.Position = UDim2.new(0.45, 0, 0, 0)
info.Text = "B"
info.TextScaled = true
info.BackgroundColor3 = btn.BackgroundColor3
info.TextColor3 = btn.TextColor3
info.Size = UDim2.new(1,0,1,0)
info.Position = UDim2.new(0, 0, 1, 0)
ui.ResetOnSpawn = false
ui.IgnoreGuiInset = false

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
		btn.BackgroundColor3 = Color3.fromRGB(34, 47, 34)
		btn.TextColor3 = Color3.fromRGB(215, 255, 215)
		info.BackgroundColor3 = btn.BackgroundColor3
		info.TextColor3 = btn.TextColor3
		create()
	end
	if on == true then
		on = false
		btn.BackgroundColor3 = Color3.fromRGB(47, 34, 34)
		btn.TextColor3 = Color3.fromRGB(255, 215, 215)
		info.BackgroundColor3 = btn.BackgroundColor3
		info.TextColor3 = btn.TextColor3
		remove()
	end
end

btn.MouseButton1Click:Connect(click)
game:GetService("ContextActionService"):BindAction("anti-void", click, false, Enum.KeyCode.B)

plr.CharacterAdded:Connect(function()
	chr = plr.Character
	hrp = chr:WaitForChild("HumanoidRootPart")
end)

