local players = game.Players:GetPlayers()
local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait()

plr.CharacterAdded:Connect(function(ch)
    chr = ch
end)

for _, plyr in ipairs(players) do
    if plyr ~= plr then
        if not plyr.Character then plyr.CharacterAdded:Wait() end
        local gui = Instance.new("BillboardGui", plyr.Character)
        local name = Instance.new("TextLabel", gui)
        local dist = Instance.new("TextLabel", gui)
        local dista = (plyr.Character.HumanoidRootPart.Position - chr.HumanoidRootPart.Position).Magnitude
        local str1, str2 = Instance.new("UIStroke", dist), Instance.new("UIStroke", name)
        str1.Thickness = 2
        str2.Thickness = 2
        name.Size = UDim2.new(1, 0, 0.5, 0)
        name.Text = plyr.Name
        name.BackgroundTransparency = 1
        name.TextColor3 = Color3.new(1,1,1)
        name.TextScaled = true
        dist.Size = UDim2.new(1, 0, 0.5, 0)
        dist.Position = UDim2.new(0, 0, 0.5, 0)
        dist.Text = "Distance:" .. dista
        dist.BackgroundTransparency = 1
        dist.TextColor3 = Color3.new(1,1,1)
        dist.TextScaled = true
        gui.ResetOnSpawn = false
        gui.AlwaysOnTop = true
        gui.LightInfluence = 0
        gui.Size = UDim2.new(5, 0, 2, 0)
        gui.Enabled = false
        gui.Name = "esp"
    end
end

game.Players.PlayerAdded:Connect(function(plyr)
    if plyr ~= plr then
        if not plyr.Character then plyr.CharacterAdded:Wait() end
        local gui = Instance.new("BillboardGui", plyr.Character)
        local name = Instance.new("TextLabel", gui)
        local dist = Instance.new("TextLabel", gui)
        local dista = (plyr.Character.HumanoidRootPart.Position - chr.HumanoidRootPart.Position).Magnitude
        local str1, str2 = Instance.new("UIStroke", dist), Instance.new("UIStroke", name)
        str1.Thickness = 2
        str2.Thickness = 2
        name.Size = UDim2.new(1, 0, 0.5, 0)
        name.Text = plyr.Name
        name.BackgroundTransparency = 1
        name.TextColor3 = Color3.new(1,1,1)
        name.TextScaled = true
        dist.Size = UDim2.new(1, 0, 0.5, 0)
        dist.Position = UDim2.new(0, 0, 0.5, 0)
        dist.Text = "Distance:" .. dista
        dist.BackgroundTransparency = 1
        dist.TextColor3 = Color3.new(1,1,1)
        dist.TextScaled = true
        gui.ResetOnSpawn = false
        gui.AlwaysOnTop = true
        gui.LightInfluence = 0
        gui.Size = UDim2.new(5, 0, 2, 0)
        gui.Enabled = false
        gui.Name = "esp"
        table.insert(players, plyr)
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(i)
    if i.KeyCode == Enum.KeyCode.N then
        for _, plyr in ipairs(players) do
            if plyr:FindFirstChild("esp") and plyr:FindFirstChild("esp"):IsA("BillboardGui") then
                plyr.esp.Enabled = not plyr.esp.Enabled
            elseif not plyr:FindFirstChild("esp") then
                if plyr ~= plr then
                    if not plyr.Character then plyr.CharacterAdded:Wait() end
                    local gui = Instance.new("BillboardGui", plyr.Character)
                    local name = Instance.new("TextLabel", gui)
                    local dist = Instance.new("TextLabel", gui)
                    local dista = (plyr.Character.HumanoidRootPart.Position - chr.HumanoidRootPart.Position).Magnitude
                    local str1, str2 = Instance.new("UIStroke", dist), Instance.new("UIStroke", name)
                    str1.Thickness = 2
                    str2.Thickness = 2
                    name.Size = UDim2.new(1, 0, 0.5, 0)
                    name.Text = plyr.Name
                    name.BackgroundTransparency = 1
                    name.TextColor3 = Color3.new(1,1,1)
                    name.TextScaled = true
                    dist.Size = UDim2.new(1, 0, 0.5, 0)
                    dist.Position = UDim2.new(0, 0, 0.5, 0)
                    dist.Text = "Distance:" .. dista
                    dist.BackgroundTransparency = 1
                    dist.TextColor3 = Color3.new(1,1,1)
                    dist.TextScaled = true
                    gui.ResetOnSpawn = false
                    gui.AlwaysOnTop = true
                    gui.LightInfluence = 0
                    gui.Size = UDim2.new(5, 0, 2, 0)
                    gui.Enabled = false
                    gui.Name = "esp"
                end     
            end
        end
    end
end)

