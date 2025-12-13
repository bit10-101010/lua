local windui = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local base = {}
local Config = {
    Version = 'PL1.0.3'
}

local plr = game:GetService("Players").LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local ts = game:GetService("TweenService")
local rs = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local cam = workspace.CurrentCamera
local plrs = game:GetService("Players")

base.equip = function(cf)
    local hrp = (plr.Character or plr.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
    local pos = hrp.CFrame
    local t1=ts:Create(hrp,TweenInfo.new(0.05),{CFrame=cf})
    t1:Play()
    t1.Completed:Wait()
    local t2=ts:Create(hrp,TweenInfo.new(0.05),{CFrame=pos})
    t2:Play()
end

local w = windui:CreateWindow({
    Title = "Vex Hub | Prison Life",
    Author = "Author: .interception. & s0ulz.lua",
    Folder = "VexHub",
    Icon = "flame",
    Transparent = false,
    HideSearchBar = false
}) w:Tag({Title=Config.Version,Radius=8})

windui:AddTheme({
    Name = "Midnight Blue",
    Accent = Color3.fromHex("#1e3a8a"),
    Dialog = Color3.fromHex("#1e293b"),
    Outline = Color3.fromHex("#3b82f6"),
    Text = Color3.fromHex("#f1f5f9"),
    Placeholder = Color3.fromHex("#64748b"),
    Background = Color3.fromHex("#0f172a"),
    Button = Color3.fromHex("#334155"),
    Icon = Color3.fromHex("#94a3b8")
})

windui:AddTheme({
    Name = "Crimson Red",
    Accent = Color3.fromHex("#7f1d1d"),
    Dialog = Color3.fromHex("#1c1917"),
    Outline = Color3.fromHex("#dc2626"),
    Text = Color3.fromHex("#fef2f2"),
    Placeholder = Color3.fromHex("#78716c"),
    Background = Color3.fromHex("#0a0a0a"),
    Button = Color3.fromHex("#44403c"),
    Icon = Color3.fromHex("#a8a29e")
})

windui:AddTheme({
    Name = "Forest Green",
    Accent = Color3.fromHex("#14532d"),
    Dialog = Color3.fromHex("#1c1917"),
    Outline = Color3.fromHex("#16a34a"),
    Text = Color3.fromHex("#f0fdf4"),
    Placeholder = Color3.fromHex("#78716c"),
    Background = Color3.fromHex("#0a0a0a"),
    Button = Color3.fromHex("#44403c"),
    Icon = Color3.fromHex("#bbf7d0")
})

windui:AddTheme({
    Name = "Purple Haze",
    Accent = Color3.fromHex("#581c87"),
    Dialog = Color3.fromHex("#18181b"),
    Outline = Color3.fromHex("#a855f7"),
    Text = Color3.fromHex("#faf5ff"),
    Placeholder = Color3.fromHex("#71717a"),
    Background = Color3.fromHex("#09090b"),
    Button = Color3.fromHex("#3f3f46"),
    Icon = Color3.fromHex("#d8b4fe")
})

windui:AddTheme({
    Name = "Ocean Depths",
    Accent = Color3.fromHex("#164e63"),
    Dialog = Color3.fromHex("#0c4a6e"),
    Outline = Color3.fromHex("#0ea5e9"),
    Text = Color3.fromHex("#f0f9ff"),
    Placeholder = Color3.fromHex("#7dd3fc"),
    Background = Color3.fromHex("#082f49"),
    Button = Color3.fromHex("#075985"),
    Icon = Color3.fromHex("#bae6fd")
})

windui:AddTheme({
    Name = "Sunset Orange",
    Accent = Color3.fromHex("#7c2d12"),
    Dialog = Color3.fromHex("#1c1917"),
    Outline = Color3.fromHex("#ea580c"),
    Text = Color3.fromHex("#fff7ed"),
    Placeholder = Color3.fromHex("#78716c"),
    Background = Color3.fromHex("#0a0a0a"),
    Button = Color3.fromHex("#44403c"),
    Icon = Color3.fromHex("#fed7aa")
})

windui:AddTheme({
    Name = "Rose Pink",
    Accent = Color3.fromHex("#881337"),
    Dialog = Color3.fromHex("#1c1917"),
    Outline = Color3.fromHex("#f43f5e"),
    Text = Color3.fromHex("#fff1f2"),
    Placeholder = Color3.fromHex("#78716c"),
    Background = Color3.fromHex("#0a0a0a"),
    Button = Color3.fromHex("#44403c"),
    Icon = Color3.fromHex("#fda4af")
})

windui:AddTheme({
    Name = "Cyber Yellow",
    Accent = Color3.fromHex("#713f12"),
    Dialog = Color3.fromHex("#1c1917"),
    Outline = Color3.fromHex("#eab308"),
    Text = Color3.fromHex("#fefce8"),
    Placeholder = Color3.fromHex("#78716c"),
    Background = Color3.fromHex("#0a0a0a"),
    Button = Color3.fromHex("#44403c"),
    Icon = Color3.fromHex("#fde047")
})

windui:AddTheme({
    Name = "Arctic White",
    Accent = Color3.fromHex("#e5e7eb"),
    Dialog = Color3.fromHex("#f3f4f6"),
    Outline = Color3.fromHex("#6b7280"),
    Text = Color3.fromHex("#111827"),
    Placeholder = Color3.fromHex("#9ca3af"),
    Background = Color3.fromHex("#ffffff"),
    Button = Color3.fromHex("#d1d5db"),
    Icon = Color3.fromHex("#4b5563")
})

windui:AddTheme({
    Name = "Neon Teal",
    Accent = Color3.fromHex("#134e4a"),
    Dialog = Color3.fromHex("#1c1917"),
    Outline = Color3.fromHex("#14b8a6"),
    Text = Color3.fromHex("#f0fdfa"),
    Placeholder = Color3.fromHex("#78716c"),
    Background = Color3.fromHex("#0a0a0a"),
    Button = Color3.fromHex("#44403c"),
    Icon = Color3.fromHex("#5eead4")
})

windui:AddTheme({
    Name = "Tokyo",
    Accent = Color3.fromHex("#e01b24"),
    Dialog = Color3.fromHex("#1a1a2e"),
    Outline = Color3.fromHex("#ff6b9d"),
    Text = Color3.fromHex("#eaeaea"),
    Placeholder = Color3.fromHex("#6c757d"),
    Background = Color3.fromHex("#0f0f1e"),
    Button = Color3.fromHex("#16213e"),
    Icon = Color3.fromHex("#c9184a")
})

windui:AddTheme({
    Name = "Ubuntu",
    Accent = Color3.fromHex("#e95420"),
    Dialog = Color3.fromHex("#2c2c2c"),
    Outline = Color3.fromHex("#ff7f50"),
    Text = Color3.fromHex("#f5f5f5"),
    Placeholder = Color3.fromHex("#999999"),
    Background = Color3.fromHex("#1a1a1a"),
    Button = Color3.fromHex("#3d3d3d"),
    Icon = Color3.fromHex("#dd4814")
})

windui:AddTheme({
    Name = "Linux Mint",
    Accent = Color3.fromHex("#87c442"),
    Dialog = Color3.fromHex("#2b2b2b"),
    Outline = Color3.fromHex("#9bdb4d"),
    Text = Color3.fromHex("#f5f5f5"),
    Placeholder = Color3.fromHex("#808080"),
    Background = Color3.fromHex("#1a1a1a"),
    Button = Color3.fromHex("#353535"),
    Icon = Color3.fromHex("#6fa22e")
})

windui:AddTheme({
    Name = "Vaporwave",
    Accent = Color3.fromHex("#ff71ce"),
    Dialog = Color3.fromHex("#261447"),
    Outline = Color3.fromHex("#01cdfe"),
    Text = Color3.fromHex("#fffb96"),
    Placeholder = Color3.fromHex("#b967ff"),
    Background = Color3.fromHex("#0e0032"),
    Button = Color3.fromHex("#3d1f5c"),
    Icon = Color3.fromHex("#05ffa1")
})

windui:AddTheme({
    Name = "Dracula",
    Accent = Color3.fromHex("#bd93f9"),
    Dialog = Color3.fromHex("#44475a"),
    Outline = Color3.fromHex("#ff79c6"),
    Text = Color3.fromHex("#f8f8f2"),
    Placeholder = Color3.fromHex("#6272a4"),
    Background = Color3.fromHex("#282a36"),
    Button = Color3.fromHex("#44475a"),
    Icon = Color3.fromHex("#8be9fd")
})

windui:AddTheme({
    Name = "Nord",
    Accent = Color3.fromHex("#88c0d0"),
    Dialog = Color3.fromHex("#3b4252"),
    Outline = Color3.fromHex("#81a1c1"),
    Text = Color3.fromHex("#eceff4"),
    Placeholder = Color3.fromHex("#4c566a"),
    Background = Color3.fromHex("#2e3440"),
    Button = Color3.fromHex("#434c5e"),
    Icon = Color3.fromHex("#5e81ac")
})

windui:AddTheme({
    Name = "Monokai",
    Accent = Color3.fromHex("#f92672"),
    Dialog = Color3.fromHex("#3e3d32"),
    Outline = Color3.fromHex("#66d9ef"),
    Text = Color3.fromHex("#f8f8f2"),
    Placeholder = Color3.fromHex("#75715e"),
    Background = Color3.fromHex("#272822"),
    Button = Color3.fromHex("#49483e"),
    Icon = Color3.fromHex("#a6e22e")
})

windui:AddTheme({
    Name = "Synthwave",
    Accent = Color3.fromHex("#ff007c"),
    Dialog = Color3.fromHex("#241b2f"),
    Outline = Color3.fromHex("#00d9ff"),
    Text = Color3.fromHex("#f0f0ff"),
    Placeholder = Color3.fromHex("#5a4d73"),
    Background = Color3.fromHex("#1a1423"),
    Button = Color3.fromHex("#352845"),
    Icon = Color3.fromHex("#ffd000")
})

windui:AddTheme({
    Name = "Gruvbox Dark",
    Accent = Color3.fromHex("#d79921"),
    Dialog = Color3.fromHex("#3c3836"),
    Outline = Color3.fromHex("#fabd2f"),
    Text = Color3.fromHex("#ebdbb2"),
    Placeholder = Color3.fromHex("#928374"),
    Background = Color3.fromHex("#282828"),
    Button = Color3.fromHex("#504945"),
    Icon = Color3.fromHex("#b8bb26")
})

windui:AddTheme({
    Name = "Cyberpunk",
    Accent = Color3.fromHex("#fcee09"),
    Dialog = Color3.fromHex("#2a1d4a"),
    Outline = Color3.fromHex("#00ffc8"),
    Text = Color3.fromHex("#ffffff"),
    Placeholder = Color3.fromHex("#a855f7"),
    Background = Color3.fromHex("#0d0221"),
    Button = Color3.fromHex("#3d2b5f"),
    Icon = Color3.fromHex("#ff007f")
})

windui:AddTheme({
    Name = "Matrix",
    Accent = Color3.fromHex("#00ff41"),
    Dialog = Color3.fromHex("#0d1a0d"),
    Outline = Color3.fromHex("#39ff14"),
    Text = Color3.fromHex("#00ff41"),
    Placeholder = Color3.fromHex("#0d4d0d"),
    Background = Color3.fromHex("#000000"),
    Button = Color3.fromHex("#003300"),
    Icon = Color3.fromHex("#00ff41")
})

windui:AddTheme({
    Name = "Sunset Vibes",
    Accent = Color3.fromHex("#ff6b35"),
    Dialog = Color3.fromHex("#2c1810"),
    Outline = Color3.fromHex("#f7931e"),
    Text = Color3.fromHex("#fff5e1"),
    Placeholder = Color3.fromHex("#8b4513"),
    Background = Color3.fromHex("#1a0f0a"),
    Button = Color3.fromHex("#3d2314"),
    Icon = Color3.fromHex("#ffa500")
})

windui:AddTheme({
    Name = "Coral Reef",
    Accent = Color3.fromHex("#ff6f61"),
    Dialog = Color3.fromHex("#1a3a52"),
    Outline = Color3.fromHex("#4ecdc4"),
    Text = Color3.fromHex("#f7fff7"),
    Placeholder = Color3.fromHex("#5b8fa3"),
    Background = Color3.fromHex("#0f2027"),
    Button = Color3.fromHex("#2c5364"),
    Icon = Color3.fromHex("#ffe66d")
})

--![[Combat Section]]
local combatSection = w:Section({
    Title = "Combat",
    Icon = "crosshair",
    Opened = true,
})

local aimbotTab = combatSection:Tab({
    Title = "Aimbot",
    Icon = "target"
})

aimbotTab:Section({
    Title = "Aimbot",
})

local fov = 100
local aimbotEnabled = false
local aimpart = "HumanoidRootPart"
local targetmode = "All"
local aimbotKey = "V"
local wallCheckEnabled = true
local currentTarget = nil

local circle = Drawing.new("Circle")
circle.Thickness = 2
circle.NumSides = 100
circle.Radius = fov
circle.Filled = false
circle.Visible = false
circle.Color = Color3.fromRGB(255, 255, 255)
circle.Transparency = 1

local aimbotToggle = aimbotTab:Toggle({
    Title="Aimbot",
    Type="Checkbox",
    Value = false,
    Callback = function(state)
        aimbotEnabled = state
        circle.Visible = state
        if not state then
            currentTarget = nil
        end
    end
})

aimbotTab:Keybind({
    Title = "Aimbot Keybind",
    Desc = "Keybind to toggle Aimbot",
    Value = aimbotKey,
    Callback = function(Value)
        aimbotKey = Value
    end
})

local wallCheckToggle = aimbotTab:Toggle({
    Title="Wall Check",
    Type="Checkbox",
    Value = true,
    Callback = function(state)
        wallCheckEnabled = state
    end
})

local targetPartDropdown = aimbotTab:Dropdown({
    Title="Target Part",
    Values={"HumanoidRootPart", "Head"},
    AllowNone=false,
    Callback = function(option)
        aimpart = option or "HumanoidRootPart"
    end
})

local dd2=aimbotTab:Dropdown({
    Title="Targets",
    Values={"All","Inmates","Criminals","Guards"},
    AllowNone=false,
    Callback = function(option)
        targetmode = option or "All"
    end
})

aimbotTab:Section({
    Title = "FOV Circle",
})

local fovSlider = aimbotTab:Slider({
    Title="FOV Circle Size",
    Step=5,
    Value={
        Min=50,
        Max=500,
        Default=100
    },
    Callback = function(val)
        fov = tonumber(val) or 100
        circle.Radius = tonumber(val) or 100
    end
})

local fovThicknessSlider = aimbotTab:Slider({
    Title="FOV Circle Thickness",
    Step=1,
    Value={
        Min=1,
        Max=10,
        Default=2
    },
    Callback = function(val)
        circle.Thickness = tonumber(val) or 2
    end
})

local fovColorPicker = aimbotTab:Colorpicker({
    Title = "FOV Circle Color",
    Desc = "Change FOV Circle Color",
    Default = Color3.fromRGB(255, 255, 255),
    Callback = function(color)
        circle.Color = color
    end
})

rs.RenderStepped:Connect(function()
    if aimbotEnabled then
        local mousePos = uis:GetMouseLocation()
        circle.Position = Vector2.new(mousePos.X, mousePos.Y)
        circle.Visible = true
    else
        circle.Visible = false
    end
end)

local function isVisible(targetPart)
    if not wallCheckEnabled then return true end
    
    local origin = cam.CFrame.Position
    local direction = (targetPart.Position - origin)
    
    local raycastParams = RaycastParams.new()
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
    raycastParams.FilterDescendantsInstances = {plr.Character, targetPart.Parent}
    raycastParams.IgnoreWater = true
    
    local result = workspace:Raycast(origin, direction, raycastParams)
    
    if not result then
        return true
    end
    
    return result.Instance:IsDescendantOf(targetPart.Parent)
end

local function getTarget()
    if not plr.Character or not plr.Character:FindFirstChild("HumanoidRootPart") then
        return nil
    end
    
    local closest = nil
    local closestDist = math.huge
    
    for _,p in pairs(plrs:GetPlayers()) do
        if p ~= plr and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            local hum = p.Character:FindFirstChild("Humanoid")
            if hum and hum.Health > 0 then
                local part = p.Character:FindFirstChild(aimpart)
                
                if part then
                    local valid = false
                    if targetmode == "All" then
                        valid = true
                    elseif targetmode == "Inmates" and p.Team and p.Team.Name == "Inmates" then
                        valid = true
                    elseif targetmode == "Criminals" and p.Team and p.Team.Name == "Criminals" then
                        valid = true
                    elseif targetmode == "Guards" and p.Team and p.Team.Name == "Guards" then
                        valid = true
                    end
                    
                    if valid and isVisible(part) then
                        local pos, onScreen = cam:WorldToViewportPoint(part.Position)
                        local screenSize = cam.ViewportSize
                        
                        if onScreen and pos.Z > 0 and pos.X >= 0 and pos.X <= screenSize.X and pos.Y >= 0 and pos.Y <= screenSize.Y then
                            local mousePos = uis:GetMouseLocation()
                            local dist = math.sqrt((pos.X - mousePos.X)^2 + (pos.Y - mousePos.Y)^2)
                            if dist < fov and dist < closestDist then
                                closest = part
                                closestDist = dist
                            end
                        end
                    end
                end
            end
        end
    end
    return closest
end

rs.RenderStepped:Connect(function()
    if aimbotEnabled and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
        local target = getTarget()
        if target then
            currentTarget = target
            local targetPos, onScreen = cam:WorldToViewportPoint(target.Position)
            local screenSize = cam.ViewportSize
            
            if onScreen and targetPos.Z > 0 and targetPos.X >= 0 and targetPos.X <= screenSize.X and targetPos.Y >= 0 and targetPos.Y <= screenSize.Y then
                local mousePos = uis:GetMouseLocation()
                local deltaX = targetPos.X - mousePos.X
                local deltaY = targetPos.Y - mousePos.Y
                
                if mousemoverel then
                    pcall(function()
                        mousemoverel(deltaX, deltaY)
                    end)
                end
            else
                currentTarget = nil
            end
        else
            currentTarget = nil
        end
    else
        currentTarget = nil
    end
end)

-- FIXED: Aimbot keybind input handler
uis.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode[aimbotKey] then
        aimbotEnabled = not aimbotEnabled
        aimbotToggle:Set(aimbotEnabled)
        circle.Visible = aimbotEnabled
        if not aimbotEnabled then
            currentTarget = nil
        end
    end
end)

--![[TriggerBot]]
local triggerbotTab = combatSection:Tab({
    Title = "TriggerBot",
    Icon = "zap"
})

triggerbotTab:Section({
    Title = "TriggerBot",
})

local triggerbotEnabled = false
local shootDelay = 0.1
local lastShotTime = 0

local function isPlayerUnderCursor()
    if not plr.Character then return nil end
    
    local mouse = plr:GetMouse()
    local target = mouse.Target
    
    if target then
        local targetPlayer = plrs:GetPlayerFromCharacter(target.Parent)
        if targetPlayer and targetPlayer ~= plr then
            local humanoid = targetPlayer.Character and targetPlayer.Character:FindFirstChild("Humanoid")
            if humanoid and humanoid.Health > 0 then
                if targetmode == "All" then
                    return targetPlayer
                elseif targetmode == "Inmates" and targetPlayer.Team and targetPlayer.Team.Name == "Inmates" then
                    return targetPlayer
                elseif targetmode == "Criminals" and targetPlayer.Team and targetPlayer.Team.Name == "Criminals" then
                    return targetPlayer
                elseif targetmode == "Guards" and targetPlayer.Team and targetPlayer.Team.Name == "Guards" then
                    return targetPlayer
                end
            end
        end
    end
    
    return nil
end

local function shootGun()
    local currentTime = tick()
    if currentTime - lastShotTime < shootDelay then
        return
    end
    
    mouse1click()
    lastShotTime = currentTime
end

local triggerbotConnection = nil

local function enableTriggerbot()
    if triggerbotConnection then
        triggerbotConnection:Disconnect()
    end
    
    triggerbotConnection = rs.RenderStepped:Connect(function()
        if not triggerbotEnabled then return end
        
        local targetPlayer = isPlayerUnderCursor()
        if targetPlayer then
            shootGun()
        end
    end)
end

local function disableTriggerbot()
    if triggerbotConnection then
        triggerbotConnection:Disconnect()
        triggerbotConnection = nil
    end
end

triggerbotTab:Toggle({
    Title = "TriggerBot On/Off",
    Desc = "Automatically shoot when hovering over players",
    Type = "Checkbox",
    Value = false,
    Callback = function(state)
        triggerbotEnabled = state
        if state then
            enableTriggerbot()
        else
            disableTriggerbot()
        end
    end
})

triggerbotTab:Slider({
    Title = "Shoot Delay",
    Desc = "Delay between shots in seconds",
    Step = 0.01,
    Value = {
        Min = 0.01,
        Max = 1,
        Default = 0.1
    },
    Callback = function(value)
        shootDelay = tonumber(value) or 0.1
    end
})

triggerbotTab:Paragraph({
    Title = "Note",
    Desc = "TriggerBot uses the same target filters as Aimbot. Make sure you have a gun equipped for this to work."
})

--![[ All Tab ]]!--

--![[All Tab]]
local allTab = combatSection:Tab({
    Title = "All",
    Icon = "crown"
})

allTab:Section({
    Title = "Mass Actions",
})

-- FIXED: Arrest All with continuous position tracking
allTab:Button({
    Title = "Arrest All",
    Desc = "Arrest all criminals (Guards only)",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local ArrestRemote = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("ArrestPlayer")
        
        local localChar = plr.Character
        if localChar and localChar:FindFirstChild("HumanoidRootPart") then
            local originalPosition = localChar.HumanoidRootPart.CFrame
            
            for _, player in pairs(plrs:GetPlayers()) do
                if player ~= plr and player.Team and player.Team.Name == "Criminals" then
                    local targetChar = player.Character
                    if targetChar and localChar and targetChar:FindFirstChild("HumanoidRootPart") and localChar:FindFirstChild("HumanoidRootPart") then
                        
                        print("Attempting to arrest:", player.Name)
                        
                        -- Follow the player for up to 3 seconds
                        local followStart = tick()
                        local followDuration = 3
                        local arrested = false
                        
                        while tick() - followStart < followDuration and not arrested do
                            -- Check if target still exists
                            if not targetChar or not targetChar:FindFirstChild("HumanoidRootPart") or not localChar or not localChar:FindFirstChild("HumanoidRootPart") then
                                break
                            end
                            
                            -- Continuously update position to follow target
                            localChar.HumanoidRootPart.CFrame = targetChar.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
                            
                            -- Attempt arrest
                            local success, result = pcall(function()
                                return ArrestRemote:InvokeServer(player)
                            end)
                            
                            if success then
                                print("Successfully arrested:", player.Name)
                                arrested = true
                                break
                            end
                            
                            task.wait(0.1) -- Update position every 0.1 seconds
                        end
                        
                        if not arrested then
                            print("Failed to arrest:", player.Name)
                        end
                        
                        task.wait(0.2) -- Brief pause before next target
                    end
                end
            end
            
            -- Return to original position
            if localChar and localChar:FindFirstChild("HumanoidRootPart") then
                localChar.HumanoidRootPart.CFrame = originalPosition
                print("Arrest sequence complete. Returned to original position.")
            end
        end
    end
})

allTab:Paragraph({
    Title = "Note",
    Desc = "This feature only works if you're on the Guards team. It will continuously follow each criminal until arrested, then move to the next."
})

--![[Hitbox Expander]]
local hitboxTab = combatSection:Tab({
    Title = "Hitbox Expander",
    Icon = "box"
})

hitboxTab:Section({
    Title = "Hitbox Expander",
})

_G.HeadSize = 15
_G.Disabled = false
_G.HitboxTransparency = 0.7
_G.HitboxColor = Color3.fromRGB(0, 255, 0)
local hitboxConnection = nil

local function expandHitbox()
    if hitboxConnection then
        hitboxConnection:Disconnect()
    end
    
    hitboxConnection = rs.RenderStepped:Connect(function()
        if _G.Disabled then
            for _, player in pairs(plrs:GetPlayers()) do
                if player.Name ~= plr.Name then
                    pcall(function()
                        local root = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                        if root then
                            root.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                            root.Transparency = _G.HitboxTransparency
                            root.Color = _G.HitboxColor
                            root.Material = Enum.Material.Neon
                            root.CanCollide = false
                        end
                    end)
                end
            end
        end
    end)
end

local function disableHitbox()
    _G.Disabled = false
    
    if hitboxConnection then
        hitboxConnection:Disconnect()
        hitboxConnection = nil
    end
    
    for _, player in pairs(plrs:GetPlayers()) do
        if player.Name ~= plr.Name then
            pcall(function()
                local root = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                if root then
                    root.Size = Vector3.new(2, 2, 1)
                    root.Transparency = 1
                    root.BrickColor = BrickColor.new("Medium stone grey")
                    root.Material = Enum.Material.Plastic
                    root.CanCollide = true
                end
            end)
        end
    end
end

local hitboxEnabled = hitboxTab:Toggle({
    Title = "Hitbox Expander On/Off",
    Desc = "Enable/Disables Hitbox Expander",
    Icon = "box",
    Value = false,
    Callback = function(Value)
        if Value == false then
            disableHitbox()
        else
            _G.Disabled = true
            expandHitbox()
        end
    end
})

local hbeSize = hitboxTab:Slider({
    Title = "Hitbox Size",
    Desc = "Changes Hitbox Size",
    Step = 1,
    Value = {
        Min = 1,
        Max = 50,
        Default = 15,
    },
    Callback = function(value)
        _G.HeadSize = tonumber(value) or 15
    end
})

local hbeOpacity = hitboxTab:Slider({
    Title = "Hitbox Transparency",
    Desc = "Changes Hitbox Opacity",
    Step = 0.1,
    Value = {
        Min =  0.1,
        Max = 1,
        Default = 0.7,
    },
    Callback = function(value)
        _G.HitboxTransparency = value
    end
})

local hbeColor = hitboxTab:Colorpicker({
    Title = "Hitbox Expander Color",
    Desc = "Change Hitbox Color",
    Default = Color3.fromRGB(0, 255, 0),
    Callback = function(color)
        _G.HitboxColor = color
    end
})

w:Divider()

--![[Visual Section]]
local visualSection = w:Section({
    Title = "Visuals",
    Icon = "eye",
    Opened = true,
})

local espTab = visualSection:Tab({
    Title = "ESP",
    Icon = "scan"
})

espTab:Section({
    Title = "ESP Settings",
})

local boxESPEnabled = false
local chamESPEnabled = false
local espObjects = {}

local boxColor = Color3.fromRGB(255, 255, 255)
local chamColor = Color3.fromRGB(255, 0, 0)

local espGuards = true
local espInmates = true
local espCriminals = true

local function clearESP(playerUserId)
    if playerUserId then
        for key, obj in pairs(espObjects) do
            if string.find(key, tostring(playerUserId)) then
                if obj.Remove then
                    obj:Remove()
                elseif obj.Destroy then
                    obj:Destroy()
                end
                espObjects[key] = nil
            end
        end
    else
        for _, obj in pairs(espObjects) do
            if obj and obj.Remove then
                obj:Remove()
            elseif obj and obj.Destroy then
                obj:Destroy()
            end
        end
        espObjects = {}
    end
end

local function createBoxESP()
    local box = Drawing.new("Square")
    box.Visible = false
    box.Color = boxColor
    box.Thickness = 2
    box.Transparency = 1
    box.Filled = false
    return box
end

local function createCham(character)
    local highlight = Instance.new("Highlight")
    highlight.Adornee = character
    highlight.FillColor = chamColor
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.5
    highlight.OutlineTransparency = 0
    highlight.Parent = character
    return highlight
end

local function shouldShowESP(player)
    if not player.Team then return true end
    
    local teamName = player.Team.Name
    if teamName == "Guards" and not espGuards then
        return false
    elseif teamName == "Inmates" and not espInmates then
        return false
    elseif teamName == "Criminals" and not espCriminals then
        return false
    end
    
    return true
end

local function updateESP()
    for _, player in pairs(plrs:GetPlayers()) do
        if player ~= plr and player.Character then
            local character = player.Character
            local hrp = character:FindFirstChild("HumanoidRootPart")
            local humanoid = character:FindFirstChild("Humanoid")
            local head = character:FindFirstChild("Head")
            
            if hrp and humanoid and humanoid.Health > 0 and head then
                local shouldShow = shouldShowESP(player)
                
                if not shouldShow then
                    clearESP(player.UserId)
                else
                    if boxESPEnabled then
                        if not espObjects[player.UserId .. "_box"] then
                            espObjects[player.UserId .. "_box"] = createBoxESP()
                        end
                        
                        local box = espObjects[player.UserId .. "_box"]
                        local hrpPos, hrpOnScreen = cam:WorldToViewportPoint(hrp.Position)
                        local headPos = cam:WorldToViewportPoint(head.Position + Vector3.new(0, 0.5, 0))
                        local legPos = cam:WorldToViewportPoint(hrp.Position - Vector3.new(0, 3, 0))
                        
                        if hrpOnScreen and headPos.Z > 0 and legPos.Z > 0 then
                            local height = math.abs(headPos.Y - legPos.Y)
                            local width = height / 2
                            
                            box.Size = Vector2.new(width, height)
                            box.Position = Vector2.new(hrpPos.X - width/2, headPos.Y)
                            box.Color = boxColor
                            box.Visible = true
                        else
                            box.Visible = false
                        end
                    else
                        if espObjects[player.UserId .. "_box"] then
                            espObjects[player.UserId .. "_box"]:Remove()
                            espObjects[player.UserId .. "_box"] = nil
                        end
                    end
                    
                    if chamESPEnabled then
                        if not espObjects[player.UserId .. "_cham"] then
                            espObjects[player.UserId .. "_cham"] = createCham(character)
                        else
                            local cham = espObjects[player.UserId .. "_cham"]
                            if cham then
                                cham.FillColor = chamColor
                            end
                        end
                    else
                        if espObjects[player.UserId .. "_cham"] then
                            espObjects[player.UserId .. "_cham"]:Destroy()
                            espObjects[player.UserId .. "_cham"] = nil
                        end
                    end
                end
            else
                clearESP(player.UserId)
            end
        end
    end
end

espTab:Toggle({
    Title="Box ESP",
    Type="Checkbox",
    Value = false,
    Callback = function(state)
        boxESPEnabled = state
        if not state then
            for key, obj in pairs(espObjects) do
                if string.find(key, "_box") and obj.Remove then
                    obj:Remove()
                    espObjects[key] = nil
                end
            end
        end
    end
})

espTab:Colorpicker({
    Title = "Box ESP Color",
    Desc = "Change Box ESP Color",
    Default = Color3.fromRGB(255, 255, 255),
    Callback = function(color)
        boxColor = color
    end
})

espTab:Toggle({
    Title="Cham ESP",
    Type="Checkbox",
    Value = false,
    Callback = function(state)
        chamESPEnabled = state
        if not state then
            for key, obj in pairs(espObjects) do
                if string.find(key, "_cham") and obj.Destroy then
                    obj:Destroy()
                    espObjects[key] = nil
                end
            end
        end
    end
})

espTab:Colorpicker({
    Title = "Cham ESP Color",
    Desc = "Change Cham ESP Color",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(color)
        chamColor = color
    end
})

espTab:Section({
    Title = "Team Filters",
})

espTab:Toggle({
    Title="ESP Guards",
    Type="Checkbox",
    Value = true,
    Callback = function(state)
        espGuards = state
        if not state then
            for _, player in pairs(plrs:GetPlayers()) do
                if player.Team and player.Team.Name == "Guards" then
                    clearESP(player.UserId)
                end
            end
        end
    end
})

espTab:Toggle({
    Title="ESP Inmates",
    Type="Checkbox",
    Value = true,
    Callback = function(state)
        espInmates = state
        if not state then
            for _, player in pairs(plrs:GetPlayers()) do
                if player.Team and player.Team.Name == "Inmates" then
                    clearESP(player.UserId)
                end
            end
        end
    end
})

espTab:Toggle({
    Title="ESP Criminals",
    Type="Checkbox",
    Value = true,
    Callback = function(state)
        espCriminals = state
        if not state then
            for _, player in pairs(plrs:GetPlayers()) do
                if player.Team and player.Team.Name == "Criminals" then
                    clearESP(player.UserId)
                end
            end
        end
    end
})

local tracersTab = visualSection:Tab({
    Title = "Tracers",
    Icon = "git-branch"
})

tracersTab:Section({
    Title = "Tracer Settings",
})

local tracersEnabled = false
local tracerColor = Color3.fromRGB(255, 255, 0)
local tracerThickness = 2
local tracerTarget = "All"
local tracerObjects = {}

local tracerGuards = true
local tracerInmates = true
local tracerCriminals = true

local function clearTracers(playerUserId)
    if playerUserId then
        for key, obj in pairs(tracerObjects) do
            if string.find(key, tostring(playerUserId)) then
                if obj.Remove then
                    obj:Remove()
                end
                tracerObjects[key] = nil
            end
        end
    else
        for _, obj in pairs(tracerObjects) do
            if obj and obj.Remove then
                obj:Remove()
            end
        end
        tracerObjects = {}
    end
end

local function createTracer()
    local line = Drawing.new("Line")
    line.Visible = false
    line.Color = tracerColor
    line.Thickness = tracerThickness
    line.Transparency = 1
    return line
end

local function shouldShowTracer(player)
    if not player.Team then return tracerTarget == "All" end
    
    local teamName = player.Team.Name
    
    if teamName == "Guards" and not tracerGuards then
        return false
    elseif teamName == "Inmates" and not tracerInmates then
        return false
    elseif teamName == "Criminals" and not tracerCriminals then
        return false
    end
    
    if tracerTarget == "All" then
        return true
    elseif tracerTarget == "Guards" and teamName == "Guards" then
        return true
    elseif tracerTarget == "Inmates" and teamName == "Inmates" then
        return true
    elseif tracerTarget == "Criminals" and teamName == "Criminals" then
        return true
    end
    
    return false
end

local function updateTracers()
    for _, player in pairs(plrs:GetPlayers()) do
        if player ~= plr and player.Character then
            local character = player.Character
            local hrp = character:FindFirstChild("HumanoidRootPart")
            local humanoid = character:FindFirstChild("Humanoid")
            
            if hrp and humanoid and humanoid.Health > 0 then
                if tracersEnabled and shouldShowTracer(player) then
                    if not tracerObjects[player.UserId .. "_tracer"] then
                        tracerObjects[player.UserId .. "_tracer"] = createTracer()
                    end
                    
                    local tracer = tracerObjects[player.UserId .. "_tracer"]
                    local playerChar = plr.Character
                    if playerChar then
                        local playerHead = playerChar:FindFirstChild("Head")
                        if playerHead then
                            local fromPos, fromVis = cam:WorldToViewportPoint(playerHead.Position)
                            local toPos, toVis = cam:WorldToViewportPoint(hrp.Position)
                            
                            if toVis then
                                tracer.From = Vector2.new(fromPos.X, fromPos.Y)
                                tracer.To = Vector2.new(toPos.X, toPos.Y)
                                tracer.Color = tracerColor
                                tracer.Thickness = tracerThickness
                                tracer.Visible = true
                            else
                                tracer.Visible = false
                            end
                        end
                    end
                else
                    clearTracers(player.UserId)
                end
            end
        end
    end
end

tracersTab:Toggle({
    Title="Enable Tracers",
    Type="Checkbox",
    Value = false,
    Callback = function(state)
        tracersEnabled = state
        if not state then
            clearTracers()
        end
    end
})

tracersTab:Dropdown({
    Title="Tracer Target",
    Values={"All","Inmates","Criminals","Guards"},
    AllowNone=false,
    Callback = function(option)
        tracerTarget = option or "All"
    end
})

tracersTab:Colorpicker({
    Title = "Tracer Color",
    Desc = "Change Tracer Color",
    Default = Color3.fromRGB(255, 255, 0),
    Callback = function(color)
        tracerColor = color
    end
})

tracersTab:Slider({
    Title="Tracer Thickness",
    Step=1,
    Value={
        Min=1,
        Max=10,
        Default=2
    },
    Callback = function(val)
        tracerThickness = tonumber(val) or 2
    end
})

tracersTab:Section({
    Title = "Team Filters",
})

tracersTab:Toggle({
    Title="Trace Guards",
    Type="Checkbox",
    Value = true,
    Callback = function(state)
        tracerGuards = state
        if not state then
            for _, player in pairs(plrs:GetPlayers()) do
                if player.Team and player.Team.Name == "Guards" then
                    clearTracers(player.UserId)
                end
            end
        end
    end
})

tracersTab:Toggle({
    Title="Trace Inmates",
    Type="Checkbox",
    Value = true,
    Callback = function(state)
        tracerInmates = state
        if not state then
            for _, player in pairs(plrs:GetPlayers()) do
                if player.Team and player.Team.Name == "Inmates" then
                    clearTracers(player.UserId)
                end
            end
        end
    end
})

tracersTab:Toggle({
    Title="Trace Criminals",
    Type="Checkbox",
    Value = true,
    Callback = function(state)
        tracerCriminals = state
        if not state then
            for _, player in pairs(plrs:GetPlayers()) do
                if player.Team and player.Team.Name == "Criminals" then
                    clearTracers(player.UserId)
                end
            end
        end
    end
})

rs.RenderStepped:Connect(function()
    if boxESPEnabled or chamESPEnabled then
        updateESP()
    end
    if tracersEnabled then
        updateTracers()
    end
end)

plrs.PlayerRemoving:Connect(function(player)
    clearESP(player.UserId)
    clearTracers(player.UserId)
end)

w:Divider()

local home = w:Tab({
    Title = "Loadout",
    Icon = "axe"
})

local loadoutHeader = home:Section({
    Title = "Weapon Collection",
})

home:Paragraph({
    Title = "Weapon Equip",
    Desc = "Teleport to weapon spawns to quickly equip items. Select a weapon and click Equip Item."
})

local sw = nil
local dd = home:Dropdown({
    Title = "Choose Weapon",
    Values = {"M9", "Remington 870", "AK-47"},
    Multi = false,
    Callback = function(option)
        sw = option
    end
})

local equip = home:Button({
    Title = "Equip Item",
    Callback = function()
        if sw == "M9" then
            base.equip(CFrame.new(813.6986694335938, 97.85000610351562, 2217.396240234375))
        elseif sw == "Remington 870" then
            base.equip(CFrame.new(820.298583984375, 97.85000610351562, 2217.396240234375))
        elseif sw == "AK-47" then
            base.equip(CFrame.new(-922.3126831054688, 91.27828216552734, 2051.95361328125))
        end
    end
})

local physical = w:Tab({
    Title="Physical",
    Icon="atom"
})

local physicalHeader = physical:Section({
    Title = "World Modifications",
})

physical:Paragraph({
    Title = "Map Editor",
    Desc = "Remove doors, gates, and teleport around the map. These changes affect your client only."
})

physical:Button({
    Title="Remove All KeyCard Doors",
    Callback = function()
        for _, inst in ipairs(workspace:GetDescendants()) do
            if string.find(inst.Name:lower(), "door_v3",1,true) then
                pcall(inst.Destroy, inst)
            end
        end
    end
})

physical:Button({
    Title="Remove All Cell Gates",
    Callback = function()
        for _, inst in ipairs(workspace:GetDescendants()) do
            if string.find(inst.Name:lower(), "CellDoors",1,true) then
                pcall(inst.Destroy, inst)
            end
        end
    end
})

physical:Button({
    Title="TP Inside Prison",
    Callback = function()
        local currentChar = plr.Character
        if currentChar then
            local currentHRP = currentChar:FindFirstChild("HumanoidRootPart")
            if currentHRP then
                currentHRP.CFrame = CFrame.new(702.549927, 99.9000092, 2247.06055)
            end
        end
    end
})

physical:Button({
    Title="TP To Criminal Base",
    Callback = function()
        local currentChar = plr.Character
        if currentChar then
            local currentHRP = currentChar:FindFirstChild("HumanoidRootPart")
            if currentHRP then
                currentHRP.CFrame = CFrame.new(-897.12, 93.3, 2150.64)
            end
        end
    end
})

-- FIXED: Complete flight system rewrite
local movement = w:Tab({
    Title = "Movement",
    Icon = "footprints",
})

local movementHeader = movement:Section({Title = "Movement Options"})

movement:Slider({
    Title = "Walk Speed",
    Desc = "Movement speed",
    Step = 1,
    Value = {
        Min = 16,
        Max = 200,
        Default = 16
    },
    Callback = function(v)
        local char = plr.Character
        if char then
            local hum = char:FindFirstChildWhichIsA("Humanoid")
            if hum then
                hum.WalkSpeed = v
            end
        end
    end
})

movement:Slider({
    Title = "Jump Power",
    Desc = "Jump height",
    Step = 1,
    Value = {
        Min = 50,
        Max = 200,
        Default = 50
    },
    Callback = function(v)
        local char = plr.Character
        if char then
            local hum = char:FindFirstChildWhichIsA("Humanoid")
            if hum then
                hum.UseJumpPower = true
                hum.JumpPower = v
            end
        end
    end
})

movement:Space()
movement:Divider()

local noclipEnabled = false
local noclipConnection = nil

local function enableNoclip()
    if noclipConnection then
        noclipConnection:Disconnect()
    end
    
    noclipConnection = rs.Stepped:Connect(function()
        if not noclipEnabled then return end
        
        local char = plr.Character
        if char then
            for _, part in pairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
end

local function disableNoclip()
    if noclipConnection then
        noclipConnection:Disconnect()
        noclipConnection = nil
    end
    
    local char = plr.Character
    if char then
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end
end

movement:Toggle({
    Title = "Noclip",
    Desc = "Walk through walls",
    Value = false,
    Callback = function(state)
        noclipEnabled = state
        if state then
            enableNoclip()
        else
            disableNoclip()
        end
    end
})

movement:Space()
movement:Divider()

-- Flight System Variables
local flying = false
local flySpeed = 50
local flightKey = "G"
local ctrl = {f = 0, b = 0, l = 0, r = 0, q = 0, e = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

local bg = nil
local bv = nil
local flightConnection = nil
local currentAnimTrack = nil

-- Animation setup
local function createAnim(id)
    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://" .. id
    return anim
end

local animations = {
    idle = createAnim(507766388),
    forward = createAnim(507767714),
    backwards = createAnim(507767714),
    left = createAnim(507767714),
    right = createAnim(507767714),
}

local function playAnimation(animName)
    local char = plr.Character
    if not char then return end
    
    local humanoid = char:FindFirstChildWhichIsA("Humanoid")
    if not humanoid then return end
    
    if currentAnimTrack then
        currentAnimTrack:Stop()
        currentAnimTrack = nil
    end
    
    local anim = animations[animName]
    if anim then
        currentAnimTrack = humanoid:LoadAnimation(anim)
        if currentAnimTrack then
            currentAnimTrack.Priority = Enum.AnimationPriority.Action
            currentAnimTrack:Play()
        end
    end
end

local function stopFlying()
    flying = false
    
    if flightConnection then
        flightConnection:Disconnect()
        flightConnection = nil
    end
    
    if currentAnimTrack then
        currentAnimTrack:Stop()
        currentAnimTrack = nil
    end
    
    local char = plr.Character
    if char then
        local humanoid = char:FindFirstChildWhichIsA("Humanoid")
        if humanoid then
            humanoid.PlatformStand = false
        end
        
        local torso = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
        if torso then
            if bg then
                bg:Destroy()
                bg = nil
            end
            if bv then
                bv:Destroy()
                bv = nil
            end
        end
    end
    
    ctrl = {f = 0, b = 0, l = 0, r = 0, q = 0, e = 0}
    speed = 0
end

local function startFlying()
    local char = plr.Character
    if not char then return end
    
    local torso = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
    local humanoid = char:FindFirstChildWhichIsA("Humanoid")
    
    if not torso or not humanoid then return end
    
    flying = true
    
    -- Create BodyGyro
    bg = Instance.new("BodyGyro")
    bg.P = 9e4
    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    bg.cframe = torso.CFrame
    bg.Parent = torso
    
    -- Create BodyVelocity
    bv = Instance.new("BodyVelocity")
    bv.velocity = Vector3.new(0, 0, 0)
    bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
    bv.Parent = torso
    
    -- Flight loop
    if flightConnection then
        flightConnection:Disconnect()
    end
    
    flightConnection = rs.Heartbeat:Connect(function()
        if not flying then
            stopFlying()
            return
        end
        
        local char = plr.Character
        if not char then
            stopFlying()
            return
        end
        
        local torso = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
        local humanoid = char:FindFirstChildWhichIsA("Humanoid")
        
        if not torso or not humanoid or humanoid.Health <= 0 then
            stopFlying()
            return
        end
        
        if not bg or not bv or bg.Parent ~= torso or bv.Parent ~= torso then
            stopFlying()
            return
        end
        
        humanoid.PlatformStand = true
        
        -- Calculate speed
        local moving = (ctrl.f + ctrl.b) ~= 0 or (ctrl.l + ctrl.r) ~= 0 or (ctrl.q + ctrl.e) ~= 0
        
        if moving then
            speed = flySpeed
        else
            speed = 0
        end
        
        -- Determine animation
        if ctrl.f == 1 then
            playAnimation("forward")
        elseif ctrl.b == 1 then
            playAnimation("backwards")
        elseif ctrl.l == 1 then
            playAnimation("left")
        elseif ctrl.r == 1 then
            playAnimation("right")
        else
            playAnimation("idle")
        end
        
        -- Calculate velocity
        local camCF = workspace.CurrentCamera.CoordinateFrame
        local direction = Vector3.new(0, 0, 0)
        
        if ctrl.f == 1 then
            direction = direction + camCF.LookVector
        end
        if ctrl.b == 1 then
            direction = direction - camCF.LookVector
        end
        if ctrl.l == 1 then
            direction = direction - camCF.RightVector
        end
        if ctrl.r == 1 then
            direction = direction + camCF.RightVector
        end
        if ctrl.q == 1 then
            direction = direction + Vector3.new(0, 1, 0)
        end
        if ctrl.e == 1 then
            direction = direction - Vector3.new(0, 1, 0)
        end
        
        if direction.Magnitude > 0 then
            direction = direction.Unit
        end
        
        bv.velocity = direction * speed
        bg.cframe = camCF
    end)
end

local flightToggle = movement:Toggle({
    Title = "Flight",
    Value = false,
    Callback = function(state)
        if state then
            startFlying()
        else
            stopFlying()
        end
    end
})

movement:Keybind({
    Title = "Flight Keybind",
    Desc = "Keybind to toggle flight",
    Value = flightKey,
    Callback = function(Value)
        flightKey = Value
    end
})

movement:Slider({
    Title = "Flight Speed",
    Desc = "Flight velocity",
    Step = 1,
    Value = {
        Min = 10,
        Max = 200,
        Default = 50
    },
    Callback = function(v)
        flySpeed = v
        maxspeed = v
    end
})

-- Flight input handlers
uis.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed or not flying then return end
    
    local key = input.KeyCode
    
    if key == Enum.KeyCode.W then
        ctrl.f = 1
    elseif key == Enum.KeyCode.S then
        ctrl.b = 1
    elseif key == Enum.KeyCode.A then
        ctrl.l = 1
    elseif key == Enum.KeyCode.D then
        ctrl.r = 1
    elseif key == Enum.KeyCode.Space then
        ctrl.q = 1
    elseif key == Enum.KeyCode.LeftShift then
        ctrl.e = 1
    end
end)

uis.InputEnded:Connect(function(input, gameProcessed)
    local key = input.KeyCode
    
    if key == Enum.KeyCode.W then
        ctrl.f = 0
    elseif key == Enum.KeyCode.S then
        ctrl.b = 0
    elseif key == Enum.KeyCode.A then
        ctrl.l = 0
    elseif key == Enum.KeyCode.D then
        ctrl.r = 0
    elseif key == Enum.KeyCode.Space then
        ctrl.q = 0
    elseif key == Enum.KeyCode.LeftShift then
        ctrl.e = 0
    elseif key == Enum.KeyCode[flightKey] and not gameProcessed then
        if flying then
            flightToggle:Set(false)
        else
            flightToggle:Set(true)
        end
    end
end)

-- Character respawn handler
plr.CharacterAdded:Connect(function(char)
    stopFlying()
    currentTarget = nil
    
    if noclipEnabled then
        task.wait(0.5)
        enableNoclip()
    end
    
    task.wait(1)
    hrp = char:WaitForChild("HumanoidRootPart")
end)

w:Divider()

local settings = w:Tab({
    Title = "Settings",
    Icon = "cog",
    Locked = false
})

local settingsHeader = settings:Section({
    Title = "Appearance",
    Box = false,
})

settings:Dropdown({
    Title = "UI Theme",
    Desc = "Change the UI theme",
    Values = {
        "Dark", 
        "Midnight Blue", 
        "Crimson Red", 
        "Forest Green", 
        "Purple Haze", 
        "Ocean Depths", 
        "Sunset Orange", 
        "Rose Pink", 
        "Cyber Yellow", 
        "Arctic White", 
        "Neon Teal",
        "Tokyo",
        "Ubuntu",
        "Linux Mint",
        "Vaporwave",
        "Dracula",
        "Nord",
        "Monokai",
        "Synthwave",
        "Gruvbox Dark",
        "Cyberpunk",
        "Matrix",
        "Sunset Vibes",
        "Coral Reef"
    },
    AllowNone = false,
    Callback = function(theme)
        windui:SetTheme(theme)
    end
})

settings:Slider({
    Title = "UI Transparency",
    Desc = "Change UI background transparency",
    Step = 0.05,
    Value = {
        Min = 0,
        Max = 1,
        Default = 0
    },
    Callback = function(value)
        windui.TransparencyValue = tonumber(value)
        if tonumber(value) > 0 then
            w:ToggleTransparency(true)
        else
            w:ToggleTransparency(false)
        end
    end
})

settings:Space()

local toggleHeader = settings:Section({
    Title = "Toggle Key",
    Box = false,
})

local toggleKey = settings:Keybind({
    Title = "Keybind",
    Desc = "Keybind to open/close UI",
    Value = "H",
    Callback = function(Value)
        w:SetToggleKey(Enum.KeyCode[Value])
    end
})

settings:Space()

local customThemeSection = settings:Section({
    Title = "Custom Theme Creator",
    Box = false,
})

local customTheme = {
    Name = "Custom",
    Accent = Color3.fromHex("#1e3a8a"),
    Dialog = Color3.fromHex("#1e293b"),
    Outline = Color3.fromHex("#3b82f6"),
    Text = Color3.fromHex("#f1f5f9"),
    Placeholder = Color3.fromHex("#64748b"),
    Background = Color3.fromHex("#0f172a"),
    Button = Color3.fromHex("#334155"),
    Icon = Color3.fromHex("#94a3b8")
}

settings:Colorpicker({
    Title = "Accent Color",
    Desc = "Main accent color",
    Default = customTheme.Accent,
    Callback = function(color)
        customTheme.Accent = color
    end
})

settings:Colorpicker({
    Title = "Background Color",
    Desc = "Main background color",
    Default = customTheme.Background,
    Callback = function(color)
        customTheme.Background = color
    end
})

settings:Colorpicker({
    Title = "Dialog Color",
    Desc = "Dialog background color",
    Default = customTheme.Dialog,
    Callback = function(color)
        customTheme.Dialog = color
    end
})

settings:Colorpicker({
    Title = "Outline Color",
    Desc = "Outline and border color",
    Default = customTheme.Outline,
    Callback = function(color)
        customTheme.Outline = color
    end
})

settings:Colorpicker({
    Title = "Text Color",
    Desc = "Main text color",
    Default = customTheme.Text,
    Callback = function(color)
        customTheme.Text = color
    end
})

settings:Colorpicker({
    Title = "Button Color",
    Desc = "Button background color",
    Default = customTheme.Button,
    Callback = function(color)
        customTheme.Button = color
    end
})

settings:Colorpicker({
    Title = "Icon Color",
    Desc = "Icon tint color",
    Default = customTheme.Icon,
    Callback = function(color)
        customTheme.Icon = color
    end
})

settings:Button({
    Title = "Apply Custom Theme",
    Desc = "Apply your custom theme",
    Callback = function()
        windui:AddTheme(customTheme)
        windui:SetTheme("Custom")
    end
})

aimbotTab:Select()
