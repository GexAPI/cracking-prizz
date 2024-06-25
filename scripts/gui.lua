--Stop skidding rn
if not game:IsLoaded() then
	repeat wait() until game:IsLoaded()
end
if game:GetService("Workspace"):FindFirstChild("PLADMIN LOADED SUCCESS") then
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Error!";
		Text = "PLadmin is already executed.";
		Icon = "";
		Duration = 5;
	})
	return
end
Instance.new("Folder", game:GetService("Workspace")).Name = "PLADMIN LOADED SUCCESS"
local PLAdmin = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local ScriptName = Instance.new("TextLabel")
local ExecBar = Instance.new("TextBox")
local CloseButton = Instance.new("TextButton")
local MinimizeButton = Instance.new("TextButton")
local SettingButton = Instance.new("ImageButton")
local Toggles_Frame = Instance.new("ScrollingFrame")
local CMDS_Frame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIListLayout2 = Instance.new("UIListLayout")
local UnloadScript = nil
local Unloaded = false

PLAdmin.Name = "PLAdmin"
PLAdmin.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
PLAdmin.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
PLAdmin.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = PLAdmin
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 2
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 250, 0, 155)
MainFrame.Active = true

ScriptName.Name = "ScriptName"
ScriptName.Parent = MainFrame
ScriptName.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScriptName.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptName.BorderSizePixel = 0
ScriptName.Size = UDim2.new(0, 250, 0, 17)
ScriptName.Font = Enum.Font.SourceSans
ScriptName.Text = "  PRIZZLIFE > CMDSLIST"
ScriptName.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptName.TextSize = 13.000
ScriptName.TextXAlignment = Enum.TextXAlignment.Left

ExecBar.Name = "ExecBar"
ExecBar.Parent = MainFrame
ExecBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ExecBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecBar.BorderSizePixel = 2
ExecBar.Position = UDim2.new(-1.22070318e-07, 0, 0.833333313, 0)
ExecBar.Size = UDim2.new(0, 250, 0, 25)
ExecBar.Font = Enum.Font.SourceSans
ExecBar.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecBar.Text = ""
ExecBar.PlaceholderText = "Command Bar"
ExecBar.TextSize = 14.000
ExecBar.ClearTextOnFocus = false

CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.930000007, 0, -0.00100000005, 0)
CloseButton.Size = UDim2.new(0, 19, 0, 17)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 14.000

MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = MainFrame
MinimizeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MinimizeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Position = UDim2.new(0.850000024, 0, -0.00100000005, 0)
MinimizeButton.Size = UDim2.new(0, 19, 0, 17)
MinimizeButton.Font = Enum.Font.SourceSans
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 14.000

SettingButton.Name = "SettingButton"
SettingButton.Parent = MainFrame
SettingButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SettingButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SettingButton.BorderSizePixel = 0
SettingButton.Position = UDim2.new(0.769999981, 0, -0.00100000005, 0)
SettingButton.Size = UDim2.new(0, 19, 0, 17)
SettingButton.Image = "rbxassetid://11308562716"

Toggles_Frame.Name = "Toggles_Frame"
Toggles_Frame.Parent = MainFrame
Toggles_Frame.Active = true
Toggles_Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Toggles_Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggles_Frame.BorderSizePixel = 0
Toggles_Frame.Position = UDim2.new(0, 0, 0.104999997, 0)
Toggles_Frame.Size = UDim2.new(0, 250, 0, 111)
Toggles_Frame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Toggles_Frame.ScrollBarThickness = 4
Toggles_Frame.ElasticBehavior = Enum.ElasticBehavior.Never
Toggles_Frame.AutomaticCanvasSize = Enum.AutomaticSize.Y
Toggles_Frame.ScrollingDirection = Enum.ScrollingDirection.Y
Toggles_Frame.Visible = false

UIListLayout2.Parent = Toggles_Frame
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout2.Padding = UDim.new(0.0088999978, 0)
UIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Top

CMDS_Frame.Name = "CMDS_Frame"
CMDS_Frame.Parent = MainFrame
CMDS_Frame.Active = true
CMDS_Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CMDS_Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
CMDS_Frame.BorderSizePixel = 0
CMDS_Frame.Position = UDim2.new(0, 0, 0.104999997, 0)
CMDS_Frame.Size = UDim2.new(0, 250, 0, 111)
CMDS_Frame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
CMDS_Frame.ScrollBarThickness = 4
CMDS_Frame.ElasticBehavior = Enum.ElasticBehavior.Never
CMDS_Frame.AutomaticCanvasSize = Enum.AutomaticSize.Y
CMDS_Frame.ScrollingDirection = Enum.ScrollingDirection.Y

UIListLayout.Parent = CMDS_Frame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.0088999978, 0)
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top

--Gui functions
local DraggifyFrame = function(tabframed, frame, otherframe)
	local dragging; local dragStartPos; local startPos
	if tabframed then
		tabframed.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStartPos = input.Position
				startPos = frame.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
	else
		frame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStartPos = input.Position
				startPos = frame.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		if otherframe then
			otherframe.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					dragging = true
					dragStartPos = input.Position
					startPos = frame.Position

					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragging = false
						end
					end)
				end
			end)
		end
	end
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - dragStartPos
			frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, 
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)
end
