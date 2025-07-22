-- Check game 
if game.PlaceId == 108037323371490 then
    local CurrentVersion = "Morocco Vibes - V1"

    -- Call the library
    local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

    -- Main Frame
    local GUI = Mercury:Create{
        Name = "ZyCrypticz",
        Size = UDim2.fromOffset(600, 400),
        Theme = Mercury.Themes.Dark,
        Link = "ZyCrypticzSudio"
    }

    -- Main Tab
    local MainTab = GUI:Tab{
        Name = "Main",
        Icon = "rbxassetid://72850035279218"
    }

    -- Button to Show Login GUI
    MainTab:Button{
        Name = "Get Ranks Tag",
        Description = "get ranks overhead",
        Callback = function()
            local player = game.Players.LocalPlayer
            local playerGui = player:WaitForChild("PlayerGui")

            -- Update these names if needed
            local Main = playerGui:WaitForChild("Main")
            local BackpackFrame = Main:WaitForChild("BackpackFrame")
            local TitlesFrame = BackpackFrame:WaitForChild("TitlesFrame")
            local ScrollingFrame = TitlesFrame:WaitForChild("ScrollingFrame")


            ScrollingFrame:WaitForChild("Owner").Visible = true
            ScrollingFrame:WaitForChild("Booster").Visible = true
            ScrollingFrame:WaitForChild("Support").Visible = true
        end
    }

	-- Credits 
	GUI:Credit{
	Name = "Jake ZyCrypticz",
	Description = "Helped with the script",
	Discord = "ja_nelson"
}
end