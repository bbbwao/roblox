local allowedUsers = loadstring(game:HttpGet("https://raw.githubusercontent.com/bbbwao/roblox/refs/heads/main/uservip"))()
local player = game.Players.LocalPlayer

if not allowedUsers[player.Name] then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Waooo";
        Text = "Đéo má ko làm mà đòi có ăn hả?";
        Duration = 5;
    })
    return
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VNT-UNIVERSAL/MyCode/main/UILib"))()
local w1 = library:Window("DPHUB-V5.1")

-- Make Inventory GUI draggable
w1:Button("Di Chuyển Gui", function()
    local MainFrame = player.PlayerGui.Inventory.MainFrame
    local UserInputService = game:GetService("UserInputService")
    local dragging, dragStartPos, frameStartPos = false

    MainFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStartPos = Vector2.new(input.Position.X, input.Position.Y)
            frameStartPos = MainFrame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    MainFrame.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = Vector2.new(input.Position.X, input.Position.Y) - dragStartPos
            MainFrame.Position = UDim2.new(
                frameStartPos.X.Scale, frameStartPos.X.Offset + delta.X,
                frameStartPos.Y.Scale, frameStartPos.Y.Offset + delta.Y
            )
        end
    end)
end)

w1:Button("Đóng Menu", function()
    for _, gui in pairs(game.CoreGui:GetChildren()) do
        if gui:FindFirstChild('Top') then
            gui:Destroy()    
        end
    end
end)

w1:Label("Made By DPHUB")

game.StarterGui:SetCore("SendNotification", {
    Title = "Made By DPHUB";
    Text = "Hack anh bá không các em?";
    Duration = 5;
})
