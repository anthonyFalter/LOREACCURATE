--SCRIPT BY NOIRSPACESHADOW
--DISCORD: https://discord.gg/wDFXZsC7jW


local UserInputService = game:GetService("UserInputService")

local player_stats = Instance.new("ScreenGui")
local kc = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local kb_bar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local LISTLAYER_CONTAINER = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local container1 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local activate = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local playerTargetTXT = Instance.new("TextLabel")
local tpLOCTXT = Instance.new("TextLabel")
local mouseX_TXT = Instance.new("TextLabel")
local mouseY_TXT = Instance.new("TextLabel")
local abilityName = Instance.new("TextLabel")
local container2 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local activate_2 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local playerTargetTXT_2 = Instance.new("TextLabel")
local tpLOCTXT_2 = Instance.new("TextLabel")
local mouseX_TXT_2 = Instance.new("TextLabel")
local mouseY_TXT_2 = Instance.new("TextLabel")
local abilityName_2 = Instance.new("TextLabel")
local TIPS = Instance.new("TextLabel")
local CREDS = Instance.new("TextLabel")
local runService = game:GetService("RunService")
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
--ACTIVATED_VAR
local S1_isActivated = false 
local S2_isActivated = false 

local MAIN_OBJ = nil
local tempOBJ = MAIN_OBJ

local function gen_UI()
	player_stats.Name = "player_stats"
	player_stats.ResetOnSpawn = true
	player_stats.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	player_stats.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	kc.Name = "kc"
	kc.Parent = player_stats
	kc.BackgroundColor3 = Color3.fromRGB(25, 33, 42)
	kc.BorderColor3 = Color3.fromRGB(0, 0, 0)
	kc.BorderSizePixel = 0
	kc.Position = UDim2.new(0.033420708, 0, 0.207667738, 0)
	kc.Size = UDim2.new(0.319790304, 0, 0.444089442, 0)

	UICorner.CornerRadius = UDim.new(0.0500000007, 0)
	UICorner.Parent = kc

	kb_bar.Name = "kb_bar"
	kb_bar.Parent = kc
	kb_bar.BackgroundColor3 = Color3.fromRGB(214, 98, 100)
	kb_bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	kb_bar.BorderSizePixel = 0
	kb_bar.Size = UDim2.new(1, 0, 0.172661871, 0)

	UICorner_2.CornerRadius = UDim.new(0.200000003, 0)
	UICorner_2.Parent = kb_bar

	Title.Name = "Title"
	Title.Parent = kb_bar
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.034836065, 0, 0.145833328, 0)
	Title.Size = UDim2.new(0.321721315, 0, 0.6875, 0)
	Title.Font = Enum.Font.RobotoMono
	Title.Text = "Lore Accurate"
	Title.TextColor3 = Color3.fromRGB(241, 241, 241)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true

	LISTLAYER_CONTAINER.Name = "LISTLAYER_CONTAINER"
	LISTLAYER_CONTAINER.Parent = kc
	LISTLAYER_CONTAINER.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LISTLAYER_CONTAINER.BackgroundTransparency = 1.000
	LISTLAYER_CONTAINER.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LISTLAYER_CONTAINER.BorderSizePixel = 0
	LISTLAYER_CONTAINER.Position = UDim2.new(0.0122950822, 0, 0.21223022, 0)
	LISTLAYER_CONTAINER.Size = UDim2.new(0.975409865, 0, 0.66546762, 0)

	UIListLayout.Parent = LISTLAYER_CONTAINER
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0.0199999996, 0)

	container1.Name = "container1"
	container1.Parent = LISTLAYER_CONTAINER
	container1.BackgroundColor3 = Color3.fromRGB(18, 24, 30)
	container1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	container1.BorderSizePixel = 0
	container1.Position = UDim2.new(0.0122950822, 0, 0.265873015, 0)
	container1.Size = UDim2.new(1, 0, 0.410810798, 0)

	UICorner_3.CornerRadius = UDim.new(0.200000003, 0)
	UICorner_3.Parent = container1

	activate.Name = "activate"
	activate.Parent = container1
	activate.BackgroundColor3 = Color3.fromRGB(214, 98, 100)
	activate.BorderColor3 = Color3.fromRGB(0, 0, 0)
	activate.BorderSizePixel = 0
	activate.Position = UDim2.new(0.0216110926, 0, 0.424121648, 0)
	activate.Size = UDim2.new(0.233193278, 0, 0.394736856, 0)
	activate.Font = Enum.Font.SourceSans
	activate.Text = "OFF"
	activate.TextColor3 = Color3.fromRGB(255, 255, 255)
	activate.TextScaled = true
	activate.TextSize = 14.000
	activate.TextWrapped = true

	UICorner_4.CornerRadius = UDim.new(0.200000003, 0)
	UICorner_4.Parent = activate

	playerTargetTXT.Name = "playerTargetTXT"
	playerTargetTXT.Parent = container1
	playerTargetTXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	playerTargetTXT.BackgroundTransparency = 1.000
	playerTargetTXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
	playerTargetTXT.BorderSizePixel = 0
	playerTargetTXT.Position = UDim2.new(0.280710161, 0, 0.417614371, 0)
	playerTargetTXT.Size = UDim2.new(0.329831928, 0, 0.171052635, 0)
	playerTargetTXT.Font = Enum.Font.RobotoMono
	playerTargetTXT.Text = "PlayerOnCursor:"
	playerTargetTXT.TextColor3 = Color3.fromRGB(241, 0, 4)
	playerTargetTXT.TextScaled = true
	playerTargetTXT.TextSize = 14.000
	playerTargetTXT.TextWrapped = true

	tpLOCTXT.Name = "tpLOCTXT"
	tpLOCTXT.Parent = container1
	tpLOCTXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tpLOCTXT.BackgroundTransparency = 1.000
	tpLOCTXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
	tpLOCTXT.BorderSizePixel = 0
	tpLOCTXT.Position = UDim2.new(0.280710161, 0, 0.696145296, 0)
	tpLOCTXT.Size = UDim2.new(0.329831928, 0, 0.171052635, 0)
	tpLOCTXT.Font = Enum.Font.RobotoMono
	tpLOCTXT.Text = "TP_GOAL:"
	tpLOCTXT.TextColor3 = Color3.fromRGB(241, 0, 4)
	tpLOCTXT.TextScaled = true
	tpLOCTXT.TextSize = 14.000
	tpLOCTXT.TextWrapped = true

	mouseX_TXT.Name = "mouseX_TXT"
	mouseX_TXT.Parent = container1
	mouseX_TXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mouseX_TXT.BackgroundTransparency = 1.000
	mouseX_TXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
	mouseX_TXT.BorderSizePixel = 0
	mouseX_TXT.Position = UDim2.new(0.610542119, 0, 0.417614371, 0)
	mouseX_TXT.Size = UDim2.new(0.329831928, 0, 0.171052635, 0)
	mouseX_TXT.Font = Enum.Font.RobotoMono
	mouseX_TXT.Text = "MousePos_X:"
	mouseX_TXT.TextColor3 = Color3.fromRGB(241, 0, 4)
	mouseX_TXT.TextScaled = true
	mouseX_TXT.TextSize = 14.000
	mouseX_TXT.TextWrapped = true

	mouseY_TXT.Name = "mouseY_TXT"
	mouseY_TXT.Parent = container1
	mouseY_TXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mouseY_TXT.BackgroundTransparency = 1.000
	mouseY_TXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
	mouseY_TXT.BorderSizePixel = 0
	mouseY_TXT.Position = UDim2.new(0.610542119, 0, 0.705749929, 0)
	mouseY_TXT.Size = UDim2.new(0.329831928, 0, 0.171052635, 0)
	mouseY_TXT.Font = Enum.Font.RobotoMono
	mouseY_TXT.Text = "MousePos_Y:"
	mouseY_TXT.TextColor3 = Color3.fromRGB(241, 0, 4)
	mouseY_TXT.TextScaled = true
	mouseY_TXT.TextSize = 14.000
	mouseY_TXT.TextWrapped = true

	abilityName.Name = "abilityName"
	abilityName.Parent = container1
	abilityName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	abilityName.BackgroundTransparency = 1.000
	abilityName.BorderColor3 = Color3.fromRGB(0, 0, 0)
	abilityName.BorderSizePixel = 0
	abilityName.Position = UDim2.new(0, 0, 0.100000001, 0)
	abilityName.Size = UDim2.new(0.264705896, 0, 0.263157904, 0)
	abilityName.Font = Enum.Font.RobotoMono
	abilityName.Text = "TP TO BACK"
	abilityName.TextColor3 = Color3.fromRGB(241, 241, 241)
	abilityName.TextScaled = true
	abilityName.TextSize = 14.000
	abilityName.TextWrapped = true

	container2.Name = "container2"
	container2.Parent = LISTLAYER_CONTAINER
	container2.BackgroundColor3 = Color3.fromRGB(18, 24, 30)
	container2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	container2.BorderSizePixel = 0
	container2.Position = UDim2.new(0.0122950822, 0, 0.574026406, 0)
	container2.Size = UDim2.new(1, 0, 0.410810798, 0)

	UICorner_5.CornerRadius = UDim.new(0.200000003, 0)
	UICorner_5.Parent = container2

	activate_2.Name = "activate"
	activate_2.Parent = container2
	activate_2.BackgroundColor3 = Color3.fromRGB(214, 98, 100)
	activate_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	activate_2.BorderSizePixel = 0
	activate_2.Position = UDim2.new(0.0216110926, 0, 0.424121648, 0)
	activate_2.Size = UDim2.new(0.233193278, 0, 0.394736856, 0)
	activate_2.Font = Enum.Font.SourceSans
	activate_2.Text = "OFF"
	activate_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	activate_2.TextScaled = true
	activate_2.TextSize = 14.000
	activate_2.TextWrapped = true

	UICorner_6.CornerRadius = UDim.new(0.200000003, 0)
	UICorner_6.Parent = activate_2

	playerTargetTXT_2.Name = "playerTargetTXT"
	playerTargetTXT_2.Parent = container2
	playerTargetTXT_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	playerTargetTXT_2.BackgroundTransparency = 1.000
	playerTargetTXT_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	playerTargetTXT_2.BorderSizePixel = 0
	playerTargetTXT_2.Position = UDim2.new(0.280710161, 0, 0.417614371, 0)
	playerTargetTXT_2.Size = UDim2.new(0.329831928, 0, 0.171052635, 0)
	playerTargetTXT_2.Font = Enum.Font.RobotoMono
	playerTargetTXT_2.Text = "PlayerOnCursor:"
	playerTargetTXT_2.TextColor3 = Color3.fromRGB(241, 0, 4)
	playerTargetTXT_2.TextScaled = true
	playerTargetTXT_2.TextSize = 14.000
	playerTargetTXT_2.TextWrapped = true

	tpLOCTXT_2.Name = "tpLOCTXT"
	tpLOCTXT_2.Parent = container2
	tpLOCTXT_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tpLOCTXT_2.BackgroundTransparency = 1.000
	tpLOCTXT_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	tpLOCTXT_2.BorderSizePixel = 0
	tpLOCTXT_2.Position = UDim2.new(0.280710161, 0, 0.696145296, 0)
	tpLOCTXT_2.Size = UDim2.new(0.329831928, 0, 0.171052635, 0)
	tpLOCTXT_2.Font = Enum.Font.RobotoMono
	tpLOCTXT_2.Text = "TP_GOAL:"
	tpLOCTXT_2.TextColor3 = Color3.fromRGB(241, 0, 4)
	tpLOCTXT_2.TextScaled = true
	tpLOCTXT_2.TextSize = 14.000
	tpLOCTXT_2.TextWrapped = true

	mouseX_TXT_2.Name = "mouseX_TXT"
	mouseX_TXT_2.Parent = container2
	mouseX_TXT_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mouseX_TXT_2.BackgroundTransparency = 1.000
	mouseX_TXT_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	mouseX_TXT_2.BorderSizePixel = 0
	mouseX_TXT_2.Position = UDim2.new(0.610542119, 0, 0.417614371, 0)
	mouseX_TXT_2.Size = UDim2.new(0.329831928, 0, 0.171052635, 0)
	mouseX_TXT_2.Font = Enum.Font.RobotoMono
	mouseX_TXT_2.Text = "MousePos_X:"
	mouseX_TXT_2.TextColor3 = Color3.fromRGB(241, 0, 4)
	mouseX_TXT_2.TextScaled = true
	mouseX_TXT_2.TextSize = 14.000
	mouseX_TXT_2.TextWrapped = true

	mouseY_TXT_2.Name = "mouseY_TXT"
	mouseY_TXT_2.Parent = container2
	mouseY_TXT_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mouseY_TXT_2.BackgroundTransparency = 1.000
	mouseY_TXT_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	mouseY_TXT_2.BorderSizePixel = 0
	mouseY_TXT_2.Position = UDim2.new(0.610542119, 0, 0.705749929, 0)
	mouseY_TXT_2.Size = UDim2.new(0.329831928, 0, 0.171052635, 0)
	mouseY_TXT_2.Font = Enum.Font.RobotoMono
	mouseY_TXT_2.Text = "MousePos_Y:"
	mouseY_TXT_2.TextColor3 = Color3.fromRGB(241, 0, 4)
	mouseY_TXT_2.TextScaled = true
	mouseY_TXT_2.TextSize = 14.000
	mouseY_TXT_2.TextWrapped = true

	abilityName_2.Name = "abilityName"
	abilityName_2.Parent = container2
	abilityName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	abilityName_2.BackgroundTransparency = 1.000
	abilityName_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	abilityName_2.BorderSizePixel = 0
	abilityName_2.Position = UDim2.new(0, 0, 0.100000001, 0)
	abilityName_2.Size = UDim2.new(0.264705896, 0, 0.263157904, 0)
	abilityName_2.Font = Enum.Font.RobotoMono
	abilityName_2.Text = "TP TO FRONT"
	abilityName_2.TextColor3 = Color3.fromRGB(241, 241, 241)
	abilityName_2.TextScaled = true
	abilityName_2.TextSize = 14.000
	abilityName_2.TextWrapped = true

	TIPS.Name = "TIPS"
	TIPS.Parent = kc
	TIPS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TIPS.BackgroundTransparency = 1.000
	TIPS.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TIPS.BorderSizePixel = 0
	TIPS.Position = UDim2.new(0.0266393442, 0, 0.902158201, 0)
	TIPS.Size = UDim2.new(0.258196712, 0, 0.0719424486, 0)
	TIPS.Font = Enum.Font.RobotoMono
	TIPS.Text = "CTRL - ACTIVATE ABILITY"
	TIPS.TextColor3 = Color3.fromRGB(241, 241, 241)
	TIPS.TextScaled = true
	TIPS.TextSize = 14.000
	TIPS.TextWrapped = true

	CREDS.Name = "CREDS"
	CREDS.Parent = kc
	CREDS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CREDS.BackgroundTransparency = 1.000
	CREDS.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CREDS.BorderSizePixel = 0
	CREDS.Position = UDim2.new(0.698770463, 0, 0.902158201, 0)
	CREDS.Size = UDim2.new(0.288934439, 0, 0.0719424486, 0)
	CREDS.Font = Enum.Font.RobotoMono
	CREDS.Text = "SCRIPT BY: NoirSpaceShadow"
	CREDS.TextColor3 = Color3.fromRGB(241, 241, 241)
	CREDS.TextScaled = true
	CREDS.TextSize = 14.000
	CREDS.TextWrapped = true

end

local function isPartMoving(part)
	return part.Velocity.Magnitude > 0
end

local function key_LISTENER()
	local USER_PART = player.Character:WaitForChild("HumanoidRootPart")

	UserInputService.InputBegan:Connect(function(input, isProcessed)
		if not isProcessed then
			-- Check if the E key is pressed
			if input.KeyCode == Enum.KeyCode.E then
				if MAIN_OBJ and MAIN_OBJ.Parent ~= player.Character then
					tempOBJ = MAIN_OBJ
					if S1_isActivated == true then
						local startTime = tick()
						local followDuration = 1
						local originalPosition = USER_PART.Position
						local teleportPartCFrame = MAIN_OBJ.CFrame
						local backOffset = teleportPartCFrame.LookVector * -1 
						print("TARGET: "..MAIN_OBJ.Name)
						print("PLAYERL: "..USER_PART.Name)
						USER_PART.CFrame = CFrame.new(teleportPartCFrame.Position + backOffset, teleportPartCFrame.Position)

					else if S2_isActivated == true then
							local startTime = tick()
							local followDuration = 1
							local originalPosition = USER_PART.Position
							local teleportPartCFrame = MAIN_OBJ.CFrame
							local backOffset = teleportPartCFrame.LookVector * 1 
							USER_PART.CFrame = CFrame.new(teleportPartCFrame.Position + backOffset, teleportPartCFrame.Position)	

						end
					end
				else
					MAIN_OBJ = tempOBJ
				end
			end
		end
	end)
end

local currentOutline
local function addOutlineToCharacter(character)
	if currentOutline then
		currentOutline:Destroy()
	end

	local highlight = Instance.new("Highlight")
	highlight.Name = "Outline"
	highlight.Adornee = character
	highlight.FillTransparency = 1
	highlight.OutlineColor = Color3.new(0, 1, 0)
	highlight.OutlineTransparency = 0
	highlight.Parent = character

	currentOutline = highlight
end

local function rotateToTarget(loc, targ)
	if loc and targ ~= nil then
		local targetPosition = targ.Position
		local currentPosition = loc.Position
		local lookVector = (targetPosition - currentPosition).Unit

		local newCFrame = CFrame.new(currentPosition) * CFrame.lookAt(currentPosition, targetPosition)

		loc.CFrame = CFrame.new(currentPosition, targetPosition)	
	end
	
end


local function isPlayerUnderMouse(mouseX, mouseY)
	local rayOrigin = game.Workspace.CurrentCamera.CFrame.Position
	local rayDirection = (game.Workspace.CurrentCamera:ScreenPointToRay(mouseX, mouseY)).Direction * 1000
	local ray = Ray.new(rayOrigin, rayDirection)
	local part, position = game.Workspace:FindPartOnRay(ray)

	if part then
		local character = part.Parent
		if character:FindFirstChild("Humanoid") then			
			local humanoidRootPart = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Head")
			if humanoidRootPart and character ~= player.Character then
				
				if S1_isActivated == true then
					MAIN_OBJ = part
					tempOBJ = MAIN_OBJ
					playerTargetTXT.Text = "PlayerOnTarget: "..MAIN_OBJ.Parent.Name
					tpLOCTXT.Text = "TargetGoal: "..humanoidRootPart.Name	
					addOutlineToCharacter(character)
					return true, character, part
					
				elseif S2_isActivated == true then
					MAIN_OBJ = part
					tempOBJ = MAIN_OBJ
					playerTargetTXT_2.Text = "PlayerOnTarget: "..MAIN_OBJ.Parent.Name
					tpLOCTXT_2.Text = "TargetGoal: "..humanoidRootPart.Name
					addOutlineToCharacter(character)
					return true, character, part
				end
					
				
				
				
			else
				MAIN_OBJ = tempOBJ
			end

		end
	end

	return false, nil, part
end

local function mouse_LISTENER()
	local mouseX, mouseY = 0, 0

	mouse.Move:Connect(function()
		if S1_isActivated == true or S2_isActivated == true then
			mouseX = mouse.X
			mouseY = mouse.Y

			if S1_isActivated == true then
				mouseX_TXT_2.TextColor = BrickColor.new(Color3.fromRGB(241, 0, 4))
				mouseY_TXT_2.TextColor = BrickColor.new(Color3.fromRGB(241, 0, 4))
				mouseX_TXT.Text = "MousePos_X: ".. mouseX
				mouseY_TXT.Text = "MousePos_Y: ".. mouseY

				if isPlayerUnderMouse(mouseX, mouseY) then
					mouseX_TXT.TextColor = BrickColor.new(Color3.fromRGB(1, 255, 9))
					mouseY_TXT.TextColor = BrickColor.new(Color3.fromRGB(1, 255, 9))
				else
					mouseX_TXT.TextColor = BrickColor.new(Color3.fromRGB(241, 0, 4))
					mouseY_TXT.TextColor = BrickColor.new(Color3.fromRGB(241, 0, 4))
				end
			elseif S2_isActivated == true then
				mouseX_TXT.TextColor = BrickColor.new(Color3.fromRGB(241, 0, 4))
				mouseY_TXT.TextColor = BrickColor.new(Color3.fromRGB(241, 0, 4))

				mouseX_TXT_2.Text = "MousePos_X: ".. mouseX
				mouseY_TXT_2.Text = "MousePos_Y: ".. mouseY

				if isPlayerUnderMouse(mouseX, mouseY) then
					mouseX_TXT_2.TextColor = BrickColor.new(Color3.fromRGB(1, 255, 9))
					mouseY_TXT_2.TextColor = BrickColor.new(Color3.fromRGB(1, 255, 9))
				else
					mouseX_TXT_2.TextColor = BrickColor.new(Color3.fromRGB(241, 0, 4))
					mouseY_TXT_2.TextColor = BrickColor.new(Color3.fromRGB(241, 0, 4))
				end
			end
		end
	end)

	return mouseX, mouseY
end



--FUNC
gen_UI()
key_LISTENER()
mouse_LISTENER()



activate.MouseButton1Click:Connect(function()
	if not S1_isActivated then
		activate.BackgroundColor3 = Color3.fromRGB(81, 214, 170)
		activate.Text = "ON"
		S1_isActivated = true
		if S2_isActivated == true then
			S2_isActivated = false
			activate_2.BackgroundColor3 = Color3.fromRGB(214, 98, 100)
			activate_2.Text = "OFF"

		end

	else
		activate.BackgroundColor3 = Color3.fromRGB(214, 98, 100)
		activate.Text = "OFF"
		S1_isActivated = false
	end

end)


activate_2.MouseButton1Click:Connect(function()
	if not S2_isActivated then
		activate_2.BackgroundColor3 = Color3.fromRGB(81, 214, 170)
		activate_2.Text = "ON"
		S2_isActivated = true
		if S1_isActivated == true then
			S1_isActivated = false
			activate.BackgroundColor3 = Color3.fromRGB(214, 98, 100)
			activate.Text = "OFF"

		end

	else
		activate_2.BackgroundColor3 = Color3.fromRGB(214, 98, 100)
		activate_2.Text = "OFF"
		S2_isActivated = false
	end

end)

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	kc.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

UserInputService.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = kc.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

runService.Heartbeat:Connect(function()
	if S1_isActivated == true then
		rotateToTarget(player.Character:WaitForChild("HumanoidRootPart"), MAIN_OBJ)
	elseif S2_isActivated == true then
		rotateToTarget(player.Character:WaitForChild("HumanoidRootPart"), MAIN_OBJ)
	end
	
end)
