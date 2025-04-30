local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VNT-UNIVERSAL/MyCode/main/UILib"))()
local w1 = library:Window("DPHUB-V5.1")
local player = game:GetService("Players").LocalPlayer

w1:Button("Di Chuyển Gui", function()
    local MainFrame = player.PlayerGui:WaitForChild("Inventory"):WaitForChild("MainFrame")
    local dragging, dragStartPos, frameStartPos
    
    MainFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStartPos = Vector2.new(input.Position.X, input.Position.Y)
            frameStartPos = MainFrame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)

    MainFrame.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = Vector2.new(input.Position.X, input.Position.Y) - dragStartPos
            MainFrame.Position = UDim2.new(frameStartPos.X.Scale, frameStartPos.X.Offset + delta.X,
                                          frameStartPos.Y.Scale, frameStartPos.Y.Offset + delta.Y)
        end
    end)
end)

w1:Button("Đóng Menu", function()
    for _, gui in pairs(game.CoreGui:GetChildren()) do
        if gui:FindFirstChild('Top') then gui:Destroy() end
    end
end)

w1:Label("Made By DPHUB")

game.StarterGui:SetCore("SendNotification", {
    Title = "Made By DPHUB",
    Text = "Hack anh bá không các em?",
    Duration = 5
})
