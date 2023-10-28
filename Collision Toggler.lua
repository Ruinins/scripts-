local UserInputService = game:GetService("UserInputService")

local function CollisionToggler()
    local MouseTarget = game.Players.LocalPlayer:GetMouse().Target
    MouseTarget.CanCollide = not MouseTarget.CanCollide
    if MouseTarget.CanCollide then
        MouseTarget.Transparency = 0
    else
        MouseTarget.Transparency = 0.7
    end
end

UserInputService.InputBegan:Connect(function(Key, Typing)
    if not Typing then
        local key = Key.KeyCode.Name
        if key == "C" then
            CollisionToggler()
        end
    end
end)

game.StarterGui:SetCore("SendNotification", {Title="Collision toggler"; Text="C to toggle"; Duration=5;})
