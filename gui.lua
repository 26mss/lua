local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/StepBroFurious/Script/main/HydraHubUi.lua'))()
local Window = UILib.new("Prestine Scripts", "dsc.gg/prestine", "Prestine's Scripts")
local Category1 = Window:Category("Main", "http://www.roblox.com/asset/?id=8395621517")
local SubButton1 = Category1:Button("Fishing", "http://www.roblox.com/asset/?id=8395747586")
local Section1 = SubButton1:Section("Section", "Left")
local SubButton2 = Category1:Button("Misc", "http://www.roblox.com/asset/?id=8395747586")
local Section2 = SubButton2:Section("Section", "Right")
local Category2 = Window:Category("Super Misc", "http://www.roblox.com/asset/?id=8395621517")
local SubButton3 = Category2:Button("Super Misc", "http://www.roblox.com/asset/?id=8395747586")
local Section3 = SubButton3:Section("Section", "Right")
Section1:Toggle({
    Title = "Auto Fish",
    Description = "Fully automatic fishing",
    Default = false
    }, function(value)
    print(value)
end)
Section1:Slider({
    Title = "Shake Delay",
    Description = "",
    Default = 0,
    Min = 0,
    Max = 4.1
    }, function(value)
    print(value)
end)
Section1:Slider({
    Title = "Fish Finish Delay",
    Description = "",
    Default = 0,
    Min = 0,
    Max = 6
    }, function(value)
    print(value)
end)
Section1:Slider({
    Title = "Cast Delay",
    Description = "",
    Default = 0,
    Min = 0,
    Max = 8
    }, function(value)
    print(value)
end)
Section2:Slider({
    Title = "Fishing Range",
    Description = "",
    Default = 10,
    Min = 10,
    Max = 100
    }, function(value)
    print(value)
    end)
Section2:Slider({
    Title = "Fishing Speed",
    Description = "",
    Default = 10,
    Min = 1, 
    Max = 20
    }, function(value)
    print(value)
end)
Section2:Toggle({
    Title = "Fishing Auto-Cast",
    Default = false,
    }, function(value)
    print(value)
end)
Section3:Toggle({
    Title = "Fishing Auto-Cast",
    Default = false,
    }, function(value)
    print(value)
end)
