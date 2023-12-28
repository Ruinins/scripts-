local player = game.Players.LocalPlayer
local userInputService = game:GetService("UserInputService")

local function hideScreenGui()
    for _, gui in ipairs(player.PlayerGui:GetChildren()) do
        if gui:IsA("ScreenGui") then
            gui.Enabled = false
        end
    end
end

local function showScreenGui()
    for _, gui in ipairs(player.PlayerGui:GetChildren()) do
        if gui:IsA("ScreenGui") then
            gui.Enabled = true
        end
    end
end

local function toggleScreenGui()
    local screenGuiHidden = true

    return function()
        if screenGuiHidden then
            showScreenGui()
        else
            hideScreenGui()
        end
        screenGuiHidden = not screenGuiHidden
    end
end

local toggleFunction = toggleScreenGui()

userInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.M then
        toggleFunction()
    end
end)

game.StarterGui:SetCore("SendNotification", {Title="UI hider"; Text="M to toggle"; Duration=6;})
