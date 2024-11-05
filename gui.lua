local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/StepBroFurious/Script/main/HydraHubUi.lua'))()
local Window = UILib.new("Grand Piece Online", game.Players.LocalPlayer.UserId, "Buyer")
local Category1 = Window:Category("Main", "http://www.roblox.com/asset/?id=8395621517")
local SubButton1 = Category1:Button("Combat", "http://www.roblox.com/asset/?id=8395747586")
local Section1 = SubButton1:Section("Section", "Left")
Section1:Toggle({
    Title = "Teleport",
    ButtonName = "Button",
    Description = "Tp you to a saved location",
    }, function(value)
    print(value)
end)
Section1:Toggle({
    Title = "Auto Fish",
    Description = "Fully automatic fishing",
    Default = false
    }, function(value)
    print(value)
end)
Section1:Slider({
    Title = "Delay",
    Description = "",
    Default = 0,
    Min = 0,
    Max = 4.1
    }, function(value)
    print(value)
end)
Section1:ColorPicker({
    Title = "Gui Colour",
    Description = "",
    Default = Color3.new(255,0,0),
    }, function(value)
    print(value)
end)
Section1:Textbox({
    Title = "Damage Multiplier",
    Description = "",
    Default = "",
    }, function(value)
    print(value)
end)
Section1:Keybind({
    Title = "Kill All",
    Description = "",
    Default = Enum.KeyCode.Q,
    }, function(value)
    print(value)
end)	