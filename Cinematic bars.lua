local key = Enum.KeyCode.L
local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad)

local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Bottom = Instance.new("Frame")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false
main.Enabled = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0, 0, -0.215, 0) 
Frame.Size = UDim2.new(1, 0, 0.209, 0)

Bottom.Parent = main
Bottom.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bottom.Position = UDim2.new(0, 0, 1.05, 0)  
Bottom.Size = UDim2.new(1, 0, 0.209, 0)

local isUIVisible = false
local debounce = false

local function toggleUIVisibility()
	if debounce then
		return
	end

	debounce = true
	isUIVisible = not isUIVisible

	local tweenGoalFrame = {}
	local tweenGoalBottom = {}

	if isUIVisible then
		tweenGoalFrame.Position = UDim2.new(0, 0, -0.075, 0)  
		tweenGoalBottom.Position = UDim2.new(0, 0, 0.835, 0) 
	else
		tweenGoalFrame.Position = UDim2.new(0, 0, -0.215, 0)  
		tweenGoalBottom.Position = UDim2.new(0, 0, 1.05, 0) 
	end

	local tweenFrame = game:GetService("TweenService"):Create(Frame, tweenInfo, tweenGoalFrame)
	local tweenBottom = game:GetService("TweenService"):Create(Bottom, tweenInfo, tweenGoalBottom)

	tweenFrame:Play()
	tweenBottom:Play()

	if not isUIVisible then
		tweenFrame.Completed:Connect(function()
			main.Enabled = false
			debounce = false
		end)
	else
		main.Enabled = true
		debounce = false
	end
end

local function onKeyPress(input, gameProcessedEvent)
	if not gameProcessedEvent and input.KeyCode == key then
		toggleUIVisibility()
	end
end

game:GetService("UserInputService").InputBegan:Connect(onKeyPress)

game.StarterGui:SetCore("SendNotification", {Title="Cinematic bars"; Text="L to toggle"; Duration=5;})
