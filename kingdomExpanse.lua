local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Kingdom Expanse(v1)", "DarkTheme")

if Game.PlaceId == 128097457610842 then
    local Tab = Window:NewTab("Main")
    

    local Section = Tab:NewSection("Resource MAXXING!")
    -- Resource MAXXING Buttons
    Section:NewButton("Wood:Lumber", "Click to increase Lumber or wood", function()
                local args = {
            {
                Lumber = -999999,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("ChargeResources"):FireServer(unpack(args))
    end)

    Section:NewButton("Stone", "Click to increase Stone", function()
        local args = {
            {
                Stone = -999999,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("ChargeResources"):FireServer(unpack(args))
    end)

    Section:NewButton("Crops", "Click to increase Crops", function()
        local args = {
            {
                Crops = -999999,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("ChargeResources"):FireServer(unpack(args))
    end)

    Section:NewButton("Iron", "Click to increase Iron", function()
        local args = {
            {
                Iron = -999999,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("ChargeResources"):FireServer(unpack(args))
    end)

    Section:NewButton("Gold", "Click to increase Gold", function()
        local args = {
            {
                Gold = -999999,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("ChargeResources"):FireServer(unpack(args))
    end)


    local Tab = Window:NewTab("Misc")
    local Section = Tab:NewSection("Miscellaneous")

    Section:NewButton("Infinite Jump", "Allows you to jump infinitely", function()
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
            end
        end)
    end)

    Section:NewButton("Infinity Yield", "Loads Infinity Yield Admin", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)


    Section:NewKeybind("Toggle GUI", "Toggles the GUI", Enum.KeyCode.F, function()
        Library:ToggleUI()
    end)


    return
end

warn("This script is only for Kingdom Expanse!")

