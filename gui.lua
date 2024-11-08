local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Prestine Key's ",
    SubTitle = "by Ratet",
    TabWidth = 160,
    Size = UDim2.fromOffset(880, 560),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Key System", Icon = "key-round" }),
}
local Options = Fluent.Options

-- Select the "Main" tab
Window:SelectTab("Main")

do
    Fluent:Notify({
        Title = "Key System",
        Content = "The Prestine Key system has Loaded",
        Duration = 3 -- Set to nil to make the notification not disappear
    })



    Tabs.Main:AddParagraph({
        Title = "Prestine Key Checking System",
        Content = "Join the discord and do .genKey in #cmd to use this script"
    })



    Tabs.Main:AddButton({
        Title = "Discord",
        Description = "Link to the discord",
        Callback = function()
            Window:Dialog({
                Title = "",
                Content = "Would you like to copy the link to your clipboard?",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            setclipboard("dsc.gg/prestine")
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