local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Teleport") 

local b = w:CreateFolder("Teleport") 

b:Button("Teleport tool",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ruinins/scripts/main/Tp%20Tool.lua'))()
end)

b:Button("Perm teleport tool",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ruinins/scripts/main/Perm%20tp%20tool.lua'))()
end)

b:Button("Ctrl + click teleport",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ruinins/scripts-/main/ctrl%20%2B%20click%20script.lua'))()
end)
