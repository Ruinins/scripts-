local function createGui()
    local gui = Instance.new("ScreenGui")
    gui.Name = "do"
    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local button = Instance.new("TextButton")
    button.Name = "do"
    button.Text = "Anti fog"
    button.TextColor3 = Color3.fromRGB(0, 0, 0)
    button.Size = UDim2.new(0, 60, 0, 40)
    button.Position = UDim2.new(0, 100, 0, 1)
    button.Parent = gui
    button.Draggable = true
    function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

counter = 0

while wait(0.1)do
 button.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
 
 counter = counter + 0.01
end

    local function onButtonClick()
        local Lighting = game:GetService("Lighting")
        
        Lighting.FogEnd = 100000
        
        Lighting:GetPropertyChangedSignal("FogEnd"):Connect(function()
            Lighting.FogEnd = 100000
        end)

        for _,v in ipairs(Lighting:GetDescendants()) do
            if v:IsA("Atmosphere") then
                v.Density = 0

                v:GetPropertyChangedSignal("Density"):Connect(function()
                    v.Density = 0
                end)
            end
        end

        Lighting.DescendantAdded:Connect(function(v)
            if v:IsA("Atmosphere") then
                v.Density = 0

                v:GetPropertyChangedSignal("Density"):Connect(function()
                    v.Density = 0
                end)
            end
        end)
    end

    button.MouseButton1Click:Connect(onButtonClick)
end

createGui()
