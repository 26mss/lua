local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Prestine Key's ",
    SubTitle = "by Ratet",
    TabWidth = 160,
    Size = UDim2.fromOffset(880, 560),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Key System", Icon = "key-round" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Key System",
        Content = "The Prestine Key system has Loaded",
        Duration = 3 -- Set to nil to make the notification not disappear
    })



    Tabs.Main:AddParagraph({
        Title = "Prestine Key Checking System",
        Content = "If your seeing this, you dont have a key, press the button below to copy the discord link to get your key"
    })



    Tabs.Main:AddButton({
        Title = "Discord",
        Description = "Link to the discord",
        Callback = function()
            Window:Dialog({
                Title = "",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Input:OnChanged(function()
        print("Input updated:", Input.Value)
    end)
end