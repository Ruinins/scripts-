local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Swelllow/Material-lua-UI/main/Another%20version%20UI"))()

local X = Material.Load({
	Title = "Universal Scripts",
	Style = 1,
	SizeX = 225,
	SizeY = 300,
	Theme = "Dark",
	ColorOverrides = {
		--MainFrame = Color3.fromRGB(235,235,235)
	}
})

local Y = X.New({
	Title = "Universal"
})

local Z = X.New({
	Title = "Local"
})

local W = X.New({
	Title = "Credits"
})

local A = Y.Button({
	Text = "Inf Yield",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Infinity yield."
			})
		end
	}
})

local A = Y.Button({
	Text = "Cinematic bars",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ruinins/scripts-/main/Cinematic%20bars.lua"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "2 black bars will appear in the upper and bottom of your screen, L to toggle."
			})
		end
	}
})

local A = Y.Button({
	Text = "Motion blur",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ruinins/scripts-/main/motion%20blur.lua"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Blurs your camera when moves."
			})
		end
	}
})

local A = Y.Button({
	Text = "Perm Tp tool",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ruinins/scripts-/main/Perm%20tp%20tool.lua"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "A Teleport tool will spawn in your inventory every second."
			})
		end
	}
})

local A = Y.Button({
	Text = "Admin Panel",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBABA/Admin-Panel/main/README.md", true))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Spawns an admin panel on the top right corner of your screen."
			})
		end
	}
})

local A = Y.Button({
	Text = "Auto-Walk GUI",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Auto%20Walk%20Obfuscator"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Auto walk GUI."
			})
		end
	}
})

local A = Y.Button({
	Text = "Inf Jump GUI",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ruinins/scripts-/main/Infinite%20jump.lua"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Infinity jump GUI."
			})
		end
	}
})

local A = Y.Button({
	Text = "Teleport Tool",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ruinins/scripts-/main/Tp%20Tool.lua"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Spawns a TP tool in your inventory."
			})
		end
	}
})

local A = Y.Button({
	Text = "RTX",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ruinins/scripts-/main/RTX%20script.lua"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Instantly make your game more beautiful."
			})
		end
	}
})

local A = Y.Button({
	Text = "RTX GUI",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/RTX%20Gui%20Hub%20Obfuscator"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "An RTX GUI."
			})
		end
	}
})

local A = Y.Button({
	Text = "PShade",
	Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/kIPgKVWH/raw"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "An RTX script."
			})
		end
	}
})

local A = Y.Button({
	Text = "Collision Toggler",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ruinins/scripts-/main/Collision%20Toggler.lua"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Press C to toggle collision on any object"
			})
		end
	}
})

local A = Y.Button({
	Text = "Fly",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ruinins/scripts-/main/Fly%20GUI%20v3.lua", true))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Fly GUI V3."
			})
		end
	}
})

local A = Y.Button({
	Text = "Name ESP",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ruinins/scripts-/main/Altlexon's%20Name%20ESP", true))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Names will appear on every players head."
			})
		end
	}
})

local A = Y.Button({
	Text = "Admin Things",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PureMids/adminhub/main/main.lua", true))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "GUI that contains multiple admin scripts"
			})
		end
	}
})

-- speed script
local function changeWalkSpeed(value)
    local speed = tonumber(value)
    local player = game.Players.LocalPlayer
    
    if speed and player then
        local Char = player.Character or workspace:FindFirstChild(player.Name)
        local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
        
        if Char and Human then
            Human.WalkSpeed = speed
        end
    end
end

local B = Z.Slider({
	Text = "Speed",
	Callback = function(Value)
	    changeWalkSpeed(Value)
	end,
	Min = 10,
	Max = 100,
	Def = 16
})

-- JumpPower Script
local function changeJumpPower(value)
    local jpower = tonumber(value)
    local player = game.Players.LocalPlayer
    
    if jpower and player then
        local character = player.Character or workspace:FindFirstChild(player.Name)
        local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")
        
        if character and humanoid then
            if humanoid:FindFirstChild("UseJumpPower") then
                humanoid.UseJumpPower = true
                humanoid.JumpPower = jpower
            else
                humanoid.JumpHeight = jpower
            end
        end
    end
end

local B = Z.Slider({
    Text = "Jump",
    Callback = function(Value)
        changeJumpPower(Value)
    end,
    Min = 10,
    Max = 100,
    Def = 50
})

local C = W.Button({
	Text = "Moz - Transferred everything",
	Callback = function()
        Print("Why?")
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Helped transfer everything over."
			})
		end
	}
})

local C = W.Button({
	Text = "Ruinins - Implemented updates",
	Callback = function()
        Print("Why?")
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Found the scripts and applied them to the UI"
			})
		end
	}
})


--[[
local B = Y.Toggle({
	Text = "I'm a switch",
	Callback = function(Value)
		print(Value)
	end,
	Enabled = false
})

local C = Y.Slider({
	Text = "Slip and... you get the idea",
	Callback = function(Value)
		print(Value)
	end,
	Min = 200,
	Max = 400,
	Def = 300
})

local D = Y.Dropdown({
	Text = "Dropping care package",
	Callback = function(Value)
		print(Value)
	end,
	Options = {
		"Floor 1",
		"Floor 2",
		"Floor 3",
		"Floor 4",
		"Floor 5"
	},
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Test alert!"
			})
		end
	}
})

local E = Y.ChipSet({
	Text = "Chipping away",
	Callback = function(ChipSet)
		table.foreach(ChipSet, function(Option, Value)
			print(Option, Value)
		end)
	end,
	Options = {
		ESP = true,
		TeamCheck = false,
		UselessBool = {
			Enabled = true,
			Menu = {
				Information = function(self)
					X.Banner({
						Text = "This bool has absolutely no purpose whatsoever."
					})
				end
			}
		}
	}
})

local F = Y.DataTable({
	Text = "Chipping away",
	Callback = function(ChipSet)
		table.foreach(ChipSet, function(Option, Value)
			print(Option, Value)
		end)
	end,
	Options = {
		ESP2 = true,
		TeamCheck2 = false,
		UselessBool2 = {
			Enabled = true,
			Menu = {
				Information = function(self)
					X.Banner({
						Text = "This bool ALSO has absolutely no purpose. Sorry."
					})
				end
			}
		}
	}
})

local G = Y.ColorPicker({
	Text = "ESP Colour",
	Default = Color3.fromRGB(0,255,110),
	Callback = function(Value)
		print("RGB:", Value.R * 255, Value.G * 255, Value.B * 255)
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "This changes the color of your ESP."
			})
		end
	}
})

local H = Y.TextField({
	Text = "Country",
	Callback = function(Value)
		print(Value)
	end,
	Menu = {
		GB = function(self)
			self.SetText("GB")
		end,
		JP = function(self)
			self.SetText("JP")
		end,
		KO = function(self)
			self.SetText("KO")
		end
	}
})
]]
