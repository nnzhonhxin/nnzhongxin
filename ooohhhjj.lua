--nmlG
--by A01
--by ghgj
-- 我玩原神，怎么你了

game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "NN",
    Text = "Permission = true",
    Icon = "rbxassetid://17240832325",
    Duration = 60,
    Callback = bindable,
    Button1 = "invalid",
    Button2 = "Effective opening"
})

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/VeaMSRZK"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "半缝合"
LBL.TextColor3 = Color3.new(155, 155, 155)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end

OrionLib:MakeNotification({
                    Name = "正在开启反挂机请稍等...",
                    Content = "Akf 开启中...",
                    Time = 2
                })     
print("你好FLUXUS")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)      

OrionLib:MakeNotification({
                    Name = "开启成功",
                    Content = "AKF",
                    Time = 1
                })
    wait(1)
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "NN中心1.6", HidePremium = false, SaveConfig =true,IntroText="NN中心1.6", ConfigFolder = "NN中心"})
local Tab = Window:MakeTab({
	Name = "主页",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("更新","坐车狂热，启动速度优化，通用优化，滑板刷钱")
Tab:AddParagraph("云端更新","！")
Tab:AddParagraph("永久免费")
Tab:AddParagraph("提示","脚本中心") 
Tab:AddParagraph("你的注入器:"..identifyexecutor())
Tab:AddParagraph("作者","？？")
Tab:AddParagraph("别骂")
Tab:AddParagraph("您当前服务器的ID"," "..game.GameId.."")

Tab:AddButton ({
	Name = "复制官方Q群",
	Callback = function ()
	 setclipboard("246983979")
	 OrionLib:MakeNotification({
                    Name = "提示信息",
                    Content = "你已复制，请在粘贴板中查看",
                    Time = 3
                })
	end
})

local Tab = Window:MakeTab({
	Name = "通用",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddSlider({

	Name = "速度",

	Min = 16,

	Max = 200,

	Default = 16,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end    

})
Tab:AddSlider({

	Name = "跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})
Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置速度:  "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."   |速度",
                    Content = "成功",
                    Time = 3
                })
	end
})
Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置重力:  "..game.Workspace.Gravity.."   |重力",
                    Content = "成功",
                    Time = 3
                })
	end
})
Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置跳跃高度:  "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."   |高度",
                    Content = "成功",
                    Time = 3
                })
	end
})
Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)		    		    

		end

	end	
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
  Name = "子弹追踪",
  Callback = function()
    local Camera = game:GetService("Workspace").CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer

local function GetClosestPlayer()
   local ClosestPlayer = nil
   local FarthestDistance = math.huge

   for i, v in pairs(Players.GetPlayers(Players)) do
       if v ~= LocalPlayer and v.Character and v.Character.FindFirstChild(v.Character, "HumanoidRootPart") then
           local DistanceFromPlayer = (LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude

           if DistanceFromPlayer < FarthestDistance then
               FarthestDistance = DistanceFromPlayer
               ClosestPlayer = v
           end
       end
   end

   if ClosestPlayer then
       return ClosestPlayer
   end
end

local GameMetaTable = getrawmetatable(game)
local OldGameMetaTableNamecall = GameMetaTable.__namecall
setreadonly(GameMetaTable, false)

GameMetaTable.__namecall = newcclosure(function(object, ...)
   local NamecallMethod = getnamecallmethod()
   local Arguments = {...}

   if tostring(NamecallMethod) == "FindPartOnRayWithIgnoreList" then
       local ClosestPlayer = GetClosestPlayer()

       if ClosestPlayer and ClosestPlayer.Character then
           Arguments[1] = Ray.new(Camera.CFrame.Position, (ClosestPlayer.Character.Head.Position - Camera.CFrame.Position).Unit * (Camera.CFrame.Position - ClosestPlayer.Character.Head.Position).Magnitude)
       end
   end

   return OldGameMetaTableNamecall(object, unpack(Arguments))
end)
  end
})
Tab:AddButton({
	Name = "无敌人物",
	Callback = function()
local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
    local char = lp.Character
    char.Archivable = true
    local new = char:Clone()
    new.Parent = workspace
    lp.Character = new
    wait(2)
    local oldhum = char:FindFirstChildWhichIsA "Humanoid"
    local newhum = oldhum:Clone()
    newhum.Parent = char
    newhum.RequiresNeck = false
    oldhum.Parent = nil
    wait(2)
    lp.Character = char
    new:Destroy()
    wait(1)
    newhum:GetPropertyChangedSignal("Health"):Connect(
        function()
            if newhum.Health <= 0 then
                oldhum.Parent = lp.Character
                wait(1)
                oldhum:Destroy()
            end
        end)
    workspace.CurrentCamera.CameraSubject = char
    if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(.1)
        char.Animate.Disabled = false
    end
    lp.Character:FindFirstChild "Head":Destroy()
end
end
})
Tab:AddButton({
  Name = "无限跳跃，左脚踩右脚",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
  end
})
Tab:AddButton({
  Name = "控制脚本(已汉化",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sdhdbxub/sdhdbxub/main/YNKUM.lua"))()
  end
})
Tab:AddButton({
  Name = "回满血(部分服务器不可用",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/nengliangtiao"))()
  end
})
Tab:AddButton({
    Name="自杀",
    Callback=function()
        game.Players.LocalPlayer.Character.Humanoid.Health=0
HumanDied = true
    end
})
Tab:AddButton({
	Name = "爬墙",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
    end
})
Tab:AddButton ({
	Name = "高画质",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
	end
})
Tab:AddButton ({
	Name = "飞行v3(修复",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/UVAj0uWu"))()
	end
})
Tab:AddButton ({
	Name = "阿尔宙斯飞行",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/5zJu3hfN"))()
	end
})
Tab:AddButton ({
	Name = "锁头",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/6RQGbFqD"))()
	end
})
Tab:AddButton ({
	Name = "牛逼一点的锁头整合",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/BINjiaobzx6/BINjiao/main/obf_W9sUzSqwIqu68V8vk5DofNGe8jyjCuSVvo0X4IBRXZRQYMAp2W2md5Suhz6Jyq4E.lua"))()
	end
})
Tab:AddButton ({
	Name = "锁头(队伍检测",
	Callback = function ()
	_G.AimbotEnabled = Value

		local Camera = workspace.CurrentCamera
		local Players = game:GetService("Players")
		local RunService = game:GetService("RunService")
		local UserInputService = game:GetService("UserInputService")
		local TweenService = game:GetService("TweenService")
		local LocalPlayer = Players.LocalPlayer
		local Holding = false

		_G.TeamCheck = true
		_G.AimPart = "Head"
		_G.Sensitivity = 0

		_G.CircleSides = 64
		_G.CircleColor = Color3.fromRGB(255, 255, 255)
		_G.CircleTransparency = 0.7
		_G.CircleRadius = 80
		_G.CircleFilled = false
		_G.CircleVisible = false
		_G.CircleThickness = 0

		local FOVCircle = Drawing.new("Circle")
		FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
		FOVCircle.Radius = _G.CircleRadius
		FOVCircle.Filled = _G.CircleFilled
		FOVCircle.Color = _G.CircleColor
		FOVCircle.Visible = _G.CircleVisible
		FOVCircle.Radius = _G.CircleRadius
		FOVCircle.Transparency = _G.CircleTransparency
		FOVCircle.NumSides = _G.CircleSides
		FOVCircle.Thickness = _G.CircleThickness

		local function GetClosestPlayer()
			local MaximumDistance = _G.CircleRadius
			local Target = nil

			for _, v in next, Players:GetPlayers() do
				if v.Name ~= LocalPlayer.Name then
					if _G.TeamCheck == true then
						if v.Team ~= LocalPlayer.Team then
							if v.Character ~= nil then
								if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
									if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
										local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
										local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude

										if VectorDistance < MaximumDistance then
											Target = v
										end
									end
								end
							end
						end
					else
						if v.Character ~= nil then
							if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
								if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
									local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
									local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude

									if VectorDistance < MaximumDistance then
										Target = v
									end
								end
							end
						end
					end
				end
			end

			return Target
		end

		UserInputService.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton2 then
				Holding = true
			end
		end)

		UserInputService.InputEnded:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton2 then
				Holding = false
			end
		end)

		RunService.RenderStepped:Connect(function()
			FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
			FOVCircle.Radius = _G.CircleRadius
			FOVCircle.Filled = _G.CircleFilled
			FOVCircle.Color = _G.CircleColor
			FOVCircle.Visible = _G.CircleVisible
			FOVCircle.Radius = _G.CircleRadius
			FOVCircle.Transparency = _G.CircleTransparency
			FOVCircle.NumSides = _G.CircleSides
			FOVCircle.Thickness = _G.CircleThickness

			if Holding == true and _G.AimbotEnabled == true then
				TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
			end
		end)
	end    
})
Tab:AddButton({
	Name = "普通范围",
    Default = false,
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
	end
})
Tab:AddButton({
	Name = "中等范围",
    Default = false,
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/x13bwrFb"))()
	end
})
Tab:AddButton ({
	Name = "超大范围",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()
	end
})
Tab:AddButton({
	Name = "透视",
	Callback = function()
      	local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
  	end
})
Tab:AddButton({
	Name = "飞车",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})
Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})
Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})
Tab:AddButton({
	Name = "infiniteyield",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
  	end
})
Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "工具 点击传送" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})
Tab:AddButton({
    Name = "动作",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Zj4NnKs6"))()
    end
})
Tab:AddButton ({
	Name = "玩家进来看得见",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
	end
})
Tab:AddButton({
  Name = "旋转",
  Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  end
})
Tab:AddButton({
	Name = "FPS加强",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/FPS-X-GUI/main/FPS_X.lua"))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "rooms&doors",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "自己做的by AA 我做的比较烂"
})
Tab:AddButton ({
	Name = "难看的来怪提示",
	Callback = function ()
	 -- 你要么开我源码，要么我发你的.开我源码，那我可真能说你是开元大神by AA制作全部东西我自己全部做的..我是第二个
local objectName = "remotemonster"
local objectStatus = false
local StarterGui = game:GetService("StarterGui")
local notifyCount = {
    appear = 0,
    disappear = 0,
    notExist = 0
}
local function notify(title, text, type)
    if (type == "appear" and notifyCount.appear < 2) or
       (type == "disappear" and notifyCount.disappear < 2) or
       (type == "notExist" and notifyCount.notExist < 2) then
        StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = 5
        })
        notifyCount[type] = notifyCount[type] + 1
    end
end
local function checkObject()
    local object = workspace:FindFirstChild(objectName)
    if object then
        if not objectStatus then
            notify("by AA", "怪物已出现", "appear")
            objectStatus = true
        end
    else
        if objectStatus then
            notify("by AA", "怪物已消失(伤害也没了)", "disappear")
            objectStatus = false
        else
            notify("你已经开启", "来怪的时候会给提示", "notExist")
            wait(5) 
        end
    end
end
local function startMonitoring()
    while true do
        local success, err = pcall(function()
            checkObject()
        end)
        if not success then
            warn("onpeNo吧: " .. tostring(err))
        end
        wait(1) 
    end
end
spawn(startMonitoring)
	end
})
Tab:AddButton({
  Name = "好看的来怪提示",
  Callback = function()
local objectName = "remotemonster"
local objectStatus = false
local StarterGui = game:GetService("StarterGui")
local notifyCount = {
    appear = 0,
    disappear = 0,
    notExist = 0
}
local function notify(title, text, type)
    if (type == "appear" and notifyCount.appear < 2) or
       (type == "disappear" and notifyCount.disappear < 2) or
       (type == "notExist" and notifyCount.notExist < 2) then
        OrionLib:MakeNotification({
            Name = title,
            Content = text,
            Time = 6
        })
        notifyCount[type] = notifyCount[type] + 1
    end
end
local function checkObject()
    local object = workspace:FindFirstChild(objectName)
    if object then
        if not objectStatus then
            notify("by AA", "怪物已出现", "appear")
            objectStatus = true
        end
    else
        if objectStatus then
            notify("by AA", "怪物已消失(伤害也没了)", "disappear")
            objectStatus = false
        else
            notify("你已经开启", "来怪的时候会给提示", "notExist")
            wait(5)
        end
    end
end
local function startMonitoring()
    while true do
        local success, err = pcall(function()
            checkObject()
        end)
        if not success then
            warn("opngNo吧: " .. tostring(err))
        end
        wait(1) 
    end
end
spawn(startMonitoring)
  end
})
Tab:AddButton ({
	Name = "全图高亮永远不会掉",
	Callback = function ()
	 local Light = game:GetService("Lighting")

function dofullbright()
Light.Ambient = Color3.new(1, 1, 1)
Light.ColorShift_Bottom = Color3.new(1, 1, 1)
Light.ColorShift_Top = Color3.new(1, 1, 1)
end

dofullbright()

Light.LightingChanged:Connect(dofullbright)
	end
})
local Tab = Window:MakeTab({
	Name = "rake",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "超好用建议搭配第二个用",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/ikY8F7gv"))()
	end
})
Tab:AddButton ({
	Name = "第二个",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/jFn0k6Gz"))()
	end
})
Tab:AddButton ({
	Name = "3",
	Callback = function ()
	 loadstring(game:HttpGet("agggg"))()
	end
})
local Tab = Window:MakeTab({
	Name = "doors",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "陈",
  Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\89\83\108\111\110\47\82\65\87\45\46\46\97\45\115\99\114\105\112\116\47\109\97\105\110\47\37\69\57\37\57\57\37\56\56\68\79\79\82\83\50\46\48\77\79\79\78\37\69\54\37\66\55\37\66\55\37\69\54\37\66\55\37\56\54\34\41\41\40\41")()
    end
})
Tab:AddButton ({
	Name = "MSHUB",
	Callback = function ()
	 loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua"),true))()
	end
})
Tab:AddButton ({
	Name = "后门",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/sdhdbxub/sdhdbxub/main/kwibuuai.lua"))()
	end
})
Tab:AddButton ({
	Name = "键盘脚本",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
	end
})
Tab:AddButton ({
	Name = "black king汉化",
	Callback = function ()
	 --[[Doors Blackking And BobHub脚本汉化]]loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
	end
})
Tab:AddButton ({
	Name = "NBDOORS(卡密NB)",
	Callback = function ()
	 loadstring(game:HttpGet("https://github.com/DocYogurt/DOORS/raw/main/Loader.lua"))()
	end
})
local Section = Tab:AddSection({
	Name = "模式"
})
Tab:AddButton({  
    Name = "模式v3",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/munciseek/Script-Mode/main/V3/Main-Scipt"))()
	end
})
Tab:AddButton ({
	Name = "mayhem mode",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/Drop56796/Mayhem-mode-enity/main/Mayhem%20Mode.lua"))()
	end
})
Tab:AddButton ({
	Name = "模式整合更新(特别好用，推荐使用这个特别好用)",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/Drop56796/if/main/if.lua"))()
	end
})
Tab:AddButton ({
	Name = "模式整合要卡密特别推荐(点击获得卡密链接)",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/Drop56796/keysystem-ui/main/check%20out.lua"))()
	 setclipboard("https://workink.net/1UMB/Keypoint")
	 OrionLib:MakeNotification({
                    Name = "解卡需要VPN",
                    Content = "你已获得卡密链接，请自行解卡！",
                    Time = 3
                })
	end
})
Tab:AddButton ({
	Name = "好用模式(要卡密自己搞)",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/munciseek/DOORS-mode/main/ScripV2"))()
	end
})
Tab:AddButton ({
	Name = "生日模式",
	Callback = function ()
	 loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/BirthdayModeDOORS/main/BirthdayModeScript'))()
	end
})
Tab:AddButton ({
	Name = "硬核模式v6",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.Motherfucker.com/Idiot114514/false/main/Bad-Hardcore_Mode.lua"))()
	end
})
Tab:AddButton ({
	Name = "极端模式",
	Callback = function ()
	 loadstring(game:HttpGet('https://github.com/HollowedOutMods/MayhemMode/blob/main/loader.lua?raw=true'))()
	end
})
local Section = Tab:AddSection({
	Name = "道具"
})
Tab:AddButton({
	Name = "圣光手雷",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
  	end
})
  Tab:AddButton({
	Name = "十字架",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
  	end
})
Tab:AddButton ({
	Name = "臭猫",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell Plushie"))()
	end
})
Tab:AddButton({
	Name = "seek枪",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/persopoiu/scripts/main/seekgun.lua"))()
  	end    
})

Tab:AddButton({
	Name = "魔法书",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Magic%20Book"))()
  	end    
})

Tab:AddButton({
	Name = "无线电量的手电筒",
	Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/9Daqa4hD'))()
  	end    
})

Tab:AddButton({
	Name = "香蕉枪",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
  	end    
})

Tab:AddButton({
	Name = "糖果",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/persopoiu/scripts/main/candyscript/candy.lua"))()
  	end    
})

Tab:AddButton({
	Name = "幸运方块",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Lucky%20Block"))()
  	end    
})

Tab:AddButton({
	Name = "磁铁",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
  	end    
})
Tab:AddButton({
	Name = "变身",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
  	end    
})
Tab:AddButton({
	Name = "蜡烛",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Items/Candle.lua"))()
  	end    
})
Tab:AddButton({
	Name = "吸尘器",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/EverythingGunByNeRD.lua"))()
  	end    
})
Tab:AddButton({
	Name = "火箭筒",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/sharksharksharkshark/musical-pancake/main/huo.txt"))()
  	end    
})

Tab:AddButton({
	Name = "臭猫",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell%20Plushie"))()
  	end    
})

Tab:AddButton({
	Name = "巧克力",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell%20Plushie"))()
  	end    
})

Tab:AddButton({
	Name = "炸弹",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/IcegunByNerd.lua"))()
  	end    
})

Tab:AddButton({
	Name = "木棍刚开门使用",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Debug%20Stick"))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "可怕的寿司",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "米饭和诺里"
})
Tab:AddButton ({
	Name = "米饭和诺里",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-180.0427703857422, 8.905012130737305, 18.106494903564453)
	end
})
local Section = Tab:AddSection({
	Name = "鱼场"
})
Tab:AddButton ({
	Name = "三文鱼",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-141.59385681152344, 4.864150524139404, 233.35406494140625)
	end
})
Tab:AddButton ({
	Name = "金枪鱼",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-156.87152099609375, 8.135756492614746, 267.52410888671875)
	end
})
Tab:AddButton ({
	Name = "洪水",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-202.3022918701172, 4.864147186279297, 270.55206298828125)
	end
})
Tab:AddButton ({
	Name = "e鱼",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-222.5277557373047, 4.864150524139404, 232.02337646484375)
	end
})
local Tab = Window:MakeTab({
	Name = "各大脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton ({
	Name = "导管中心",
	Callback = function ()
	 loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
	end
})
Tab:AddButton ({
	Name = "QI脚本",
	Callback = function ()
	 loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\52\118\53\110\55\110\47\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\47\109\97\105\110\47\81\73\37\69\56\37\56\52\37\57\65\37\69\54\37\57\67\37\65\67\37\69\53\37\56\53\37\56\68\37\69\56\37\66\52\37\66\57\37\69\55\37\56\57\37\56\56\46\108\117\97\34\41\41\40\41\9\10")()
	end
})
Tab:AddButton ({
	Name = "欧米脚本1.0.0",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/YJGE0q1D"))()
	end
})
Tab:AddButton ({
	Name = "林脚本(卡密:林帅逼)",
	Callback = function ()
	 lin = "林天帝nb"lin ="林QQ群 759054392"loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/linnb/main/linnb"))()
	end
})
Tab:AddButton ({
	Name = "绿脚本",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/Esw6YQKR"))()
	end
})
Tab:AddButton({
    Name = "XCS，卡密a或者e",
    Callback = function()
    getgenv().XC="作者XC"loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()
    end
})

local Tab = Window:MakeTab({
	Name = "Sol’Rng",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "用",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/upd/main/rng"))()
	end
})
Tab:AddButton ({
	Name = "script1",
	Callback = function ()
	 loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
	end
})
Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Looser3itx/Hmmmmmmmmmmmmmmmmmmmmmmmmmmmm/main/loader.lua"))()
  	end
})
Tab:AddButton({
	Name = "tow",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
  	end
})
Tab:AddButton({
	Name = "3(需卡密)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/upd/main/rng"))()
  	end
})
local Tab = Window:MakeTab({
	Name = "忍者传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "script1",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua"))()
	end
})
Tab:AddButton ({
	Name = "script2",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/5repo/main/script4.lua"))()
	end
})

local Section = Tab:AddSection({
	Name = "传送岛屿"
})

Tab:AddButton({
	Name = "出生",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.665502548217773, 3.4228405952453613, 29.919952392578125)
	end
})

Tab:AddButton({
	Name = "魔法",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.17238235473633, 766.1807861328125, -138.44842529296875)
	end
})

Tab:AddButton({
	Name = "星岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207.2932891845703, 2013.88037109375, 237.36672973632812)
	end
})

Tab:AddButton({
	Name = "密岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171.97178649902344, 4047.380859375, 42.0699577331543)
	end
})

Tab:AddButton({
	Name = "天空岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.83824157714844, 5657.18505859375, 73.5014877319336)
	end
})

Tab:AddButton({
	Name = "冷岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.28330993652344, 9285.18359375, 77.36406707763672)
	end
})

Tab:AddButton({
	Name = "无限岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.34817504882812, 13680.037109375, 73.3861312866211)
	end
})

Tab:AddButton({
	Name = "沙岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.37144470214844, 17686.328125, 72.00334167480469)
	end
})

Tab:AddButton({
	Name = "雷岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.19349670410156, 24070.021484375, 78.05432891845703)
	end
})

Tab:AddButton({
	Name = "远古炼狱岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.27163696289062, 28256.294921875, 69.3790283203125)
	end
})

Tab:AddButton({
	Name = "暗影岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.74267578125, 33206.98046875, 57.495574951171875)
	end
})

Tab:AddButton({
	Name = "灵魂岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.76148986816406, 39317.5703125, 61.06639862060547)
	end
})

Tab:AddButton({
	Name = "奇迹岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.2720184326172, 46010.5546875, 55.941951751708984)
	end
})

Tab:AddButton({
	Name = "黄金岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128.32339477539062, 52607.765625, 56.69411849975586)
	end
})

Tab:AddButton({
	Name = "传奇岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.35226440429688, 59594.6796875, 77.53300476074219)
	end
})

Tab:AddButton({
	Name = "科技传奇岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.3321075439453, 66669.1640625, 72.21722412109375)
	end
})

Tab:AddButton({
	Name = "超能岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.48077392578125, 70271.15625, 57.02311325073242)
	end
})

Tab:AddButton({
	Name = "混沌传奇岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
	end
})

Tab:AddButton({
	Name = "黑暗岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.9700927734375, 79746.984375, 58.54051971435547)
	end
})

Tab:AddButton({
	Name = "黑暗元素岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.697265625, 83198.984375, 72.73107147216797)
	end
})

Tab:AddButton({
	Name = "和平岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.3157501220703, 87051.0625, 66.78429412841797)
	end
})

Tab:AddButton({
	Name = "漩涡岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.08216857910156, 91246.0703125, 69.56692504882812)
	end
})

Tab:AddButton({
	Name = "35倍金币",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.2938232421875, 91245.765625, 120.54232788085938)
	end
})
autoswing = false
function swinging()
    spawn(
        function()
            while autoswing == true do
                task.wait()
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
                if not autoswing then
                    break
                end
            end
        end
    )
end
autosell = false
function selling()
    spawn(
        function()
            while autosell == true do
                task.wait(.01)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                    wait(.1)
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Workspace.Part.CFrame
                    if not autosell then
                        break
                    end
                end
            end
        end
    )
end
autosellmax = false
function maxsell()
    spawn(
        function()
            while autosellmax == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    if game.Players.LocalPlayer.PlayerGui.gameGui.maxNinjitsuMenu.Visible == true then
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                        task.wait()
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Workspace.Part.CFrame
                    end
                end
                if not autosellmax then
                    break
                end
            end
        end
    )
end
autobuyswords = false
function buyswords()
    spawn(
        function()
            while autobuyswords == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSwords"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyswords then
                    break
                end
            end
        end
    )
end
autobuybelts = false
function buybelts()
    spawn(
        function()
            while autobuybelts == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllBelts"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuybelts then
                    break
                end
            end
        end
    )
end
autobuyranks = false
function buyranks()
    spawn(
        function()
            while autobuyranks == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyRank"
                    local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
                    end
                end
                if not autobuyranks then
                    break
                end
            end
        end
    )
end
autobuyskill = false
function buyskill()
    spawn(
        function()
            while autobuyskill == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSkills"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyskill then
                    break
                end
            end
        end
    )
end
autobuyshurikens = false
function buyshurikens()
    spawn(
        function()
            while autobuyshurikens == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllShurikens"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyshurikens then
                    break
                end
            end
        end
    )
end

local Section = Tab:AddSection({
	Name = "自动赚"
})
Tab:AddToggle(
    {
        Name = "自动挥舞",
        Default = false,
        Callback = function(x)
            autoswing = x
            if autoswing then
                swinging()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动售卖",
        Default = false,
        Callback = function(x)
            autosell = x
            if autosell then
                selling()
            end
        end
    }
)
    
Tab:AddToggle(
    {
        Name = "存满了自动售卖",
        Default = false,
        Callback = function(x)
            autosellmax = x
            if autosellmax then
                maxsell()
            end
        end
    }
)

local Section = Tab:AddSection({
	Name = "自动购买功能"
})

Tab:AddToggle(
    {
        Name = "自动购买剑",
        Default = false,
        Callback = function(x)
            autobuyswords = x
            if autobuyswords then
                buyswords()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买腰带",
        Default = false,
        Callback = function(x)
            autobuybelts = x
            if autobuybelts then
                buybelts()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买称号（等级）",
        Default = false,
        Callback = function(x)
            autobuyranks = x
            if autobuyranks then
                buyranks()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买忍术",
        Default = false,
        Callback = function(x)
            autobuyskill = x
            if autobuyskill then
                buyskill()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买（全部打开）",
        Default = false,
        Callback = function(x)
            autobuyshurikens = x
            if autobuyshurikens then
                buyshurikens()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "解锁所有岛",
        Callback = function()
            for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
                if v then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame
                    wait(.5)
                end
            end
        end
    }
)

Tab:AddButton({
	Name = "死亡宠物",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4593.21337890625, 130.87181091308594, 1430.2239990234375)
	end
})

local Tab = Window:MakeTab({
	Name = "极速传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "无限经验",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/5repo/main/script4.lua"))()
	end
})
Tab:AddButton({
	Name = "自动",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/T9wTL150"))()        
  	end    
})

local Section = Tab:AddSection({
	Name = "传送岛屿"
})

Tab:AddButton({
	Name = "返还出生岛",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828125, 58.87917709350586, 3099.033935546875)      
  	end    
})

Tab:AddButton({
	Name = "白雪城",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.138671875, 58.87917709350586, 3782.69384765625)   
  	end    
})

Tab:AddButton({
	Name = "熔岩城",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.96875, 216.83917236328125, 4898.62841796875)       
  	end    
})

Tab:AddButton({
	Name = "传奇公路",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.87109375, 216.83917236328125, 5907.6279296875)    
  	end    
})
local Tab = Window:MakeTab({
	Name = "蜂群模拟器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "script1",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/Historia00012/HISTORIAHUB/main/BSS%20FREE"))()
	end
})
local Tab = Window:MakeTab({
	Name = "劳改人生(监狱人生)",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "劳改"
})
Tab:AddButton({
	Name = "HACK",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/De4aYHDY"))()
  	end
})
Tab:AddButton({
  Name = "2prison",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
  end
})
Tab:AddButton({
	Name = "手里剑秒杀",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
  	end
})
local Section = Tab:AddSection({
	Name = "位置"
})
Tab:AddButton({
	Name = "警卫室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
  	end
})
Tab:AddButton({
	Name = "监狱室内",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
  	end
})
Tab:AddButton({
	Name = "罪犯复活点",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
  	end
})
Tab:AddButton({
	Name = "监狱室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
  	end
})
local Tab = Window:MakeTab({
	Name = "力量传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "力量",
  Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/noobhosting/noobscript/main/MuscleLegends.lua'))()
  end
})
Tab:AddButton ({
	Name = "V.G Hub",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/littlegui/main/MuscleLegends"))()
	end
})
Tab:AddButton ({
	Name = "力量传奇剑客(加群组",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/jiankeQWQ/JianKeStudio/main/liliangchuanqi"))()
	end
})
Tab:AddButton({
	Name = "出生点",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
  	end    
})
Tab:AddButton({
	Name = "冰霜健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
  	end    
})
Tab:AddButton({
	Name = "神话健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
  	end    
})
Tab:AddButton({
	Name = "永恒健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
  	end    
})
Tab:AddButton({
	Name = "传说健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
  	end    
})
Tab:AddButton({
	Name = "肌肉之王健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
  	end    
})
Tab:AddButton({
	Name = "安全",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
  	end    
})
local Tab = Window:MakeTab({
	Name = "bf",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "1",
  Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
  end
})
    Tab:AddButton({
  Name = "2",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
  end
})
    Tab:AddButton({
  Name = "3",
  Callback = function()
loadstring(game:HttpGet"https://raw.githubusercontent.com/Basicallyy/Basicallyy/main/MinGamingV4.lua")()
  end
})
    Tab:AddButton({
  Name = "4",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Minhtriettt/Free-Script/main/MTriet-Hub.lua"))()
  end
})
Tab:AddButton({
  Name = "5",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/Speed-Hub-X/main/SpeedHubX"))()
  end
})
local Tab = Window:MakeTab({
	Name = "一路向西",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "king",
  Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Drifter0507/scripts/main/westbound"),true))()
  end
})
Tab:AddButton({
  Name = "2",
  Callback = function()
loadstring(game:GetObjects("rbxassetid://448334599810144323913")[1].Source)()
  end
})
local Tab = Window:MakeTab({
	Name = "巴掌",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "脚本1",
	Callback = function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Slap-Battles-UI-v1-12403"))()  	
end
})
Tab:AddButton({
	Name = "脚2(要卡密)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/haxhell/roblox-scripts/main/slap-battles.lua", true))()
  	end
})
Tab:AddButton({
  Name = "刷巴掌",
  Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Farm'))()
  end
})
local Tab = Window:MakeTab({
	Name = "鲨口求生2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddDropdown({
	Name = "免费船只",
	Default = "1",
	Options = {"鸭子船bat", "鸭子船", "蓝色汽艇", "蓝木摩托艇", "独角兽船", "Jetski", "红马", "单桅帆船", "拖船", "小型游艇", "JetskiDonut", "马林鱼", "管状船", "渔船", "海盗船", "小型木制帆船", "红色摩托艇", "双体船", "战斗艇", "旅游船", "鸭子海洋生物", "派对船", "军用潜艇",  "姜饼轮船", "雪橇2022", "雪地车", "游轮"},
	Callback = function(Value)
local ohString1 = (Value)
game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(ohString1)
	end
})
Tab:AddButton({
	Name = "自动杀鲨鱼",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
  	end
})
local Tab = Window:MakeTab({

	Name = "动感星期五",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})
Tab:AddButton({

  Name = "好用",

  Callback = function ()

loadstring(game:HttpGet('https://raw.githubusercontent.com/ShowerHead-FluxTeam/scripts/main/funky-friday-autoplay'))()

  end

})
local Tab = Window:MakeTab({

	Name = "模仿者",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})
Tab:AddButton({

  Name = "1",

  Callback = function ()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ttjy9808/THEMIMICNEWMOBILEUINOTBETA/main/README.md"))()

  end

})
local Tab = Window:MakeTab({
	Name = "彩虹朋友",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "1",
  Callback = function ()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JNHHGaming/Rainbow-Friends/main/Rainbow%20Friends"))()
  end
})
Tab:AddButton({
  Name = "好用！",
  Callback = function ()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/BorkWare/main/Scripts/' .. game.GameId .. ".lua"))(' Watermelon ? ')
  end
})
local Tab = Window:MakeTab({
	Name = "手臂摔跤模拟器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({

  Name = "1",

  Callback = function ()

loadstring(game:HttpGet("https://raw.githubusercontent.com/KrzysztofHub/script/main/loader.lua"))()

  end

})
Tab:AddButton({

  Name = "2",

  Callback = function ()

loadstring(game:HttpGet("https://raw.githubusercontent.com/zicus-scripts/SkullHub/main/Loader.lua"))()

  end

})
local Tab = Window:MakeTab({
	Name = "越狱",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "自瞄",
  Callback = function ()
loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
  end

})
Tab:AddButton({
  Name = "青",
  Callback = function ()
loadstring(game:HttpGet('https://rentry.co/ct293/raw'))()
  end

})
Tab:AddButton({
  Name = "抢劫",
  Callback = function ()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Pxsta72/ProjectAuto/main/free"))()
  end
})

local Tab = Window:MakeTab({
	Name = "背上只因剑",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({  
    Name = "好用",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0SwordWarriors"))()
	end
})

local Tab = Window:MakeTab({
	Name = "俄亥俄州",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({  
    Name = "内鬼",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/ohio/main/Roblox232"))()
	end
})
Tab:AddButton({  
    Name = "GG",
	Callback = function()
	loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\115\99\114\105\112\116\115\46\118\105\115\117\114\117\115\46\100\101\118\47\111\104\105\111\47\115\111\117\114\99\101"))()
	end
})
Tab:AddButton({  
    Name = "俄",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/1QCwNAXx"))()
	end
})
Tab:AddButton({  
    Name = "打",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/ohio/main/Roblox232"))()
	end
})
Tab:AddButton({  
    Name = "thekkcond",
	Callback = function()
	loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\115\99\114\105\112\116\115\46\118\105\115\117\114\117\115\46\100\101\118\47\111\104\105\111\47\115\111\117\114\99\101"))()
	end
})
Tab:AddButton({  
    Name = "third",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/1QCwNAXx"))()
	end
})
Tab:AddButton({  
    Name = "好用",
	Callback = function()
    loadstring(game:HttpGet("https://pastefy.app/QbXPfsgC/raw"))()
	end
})
local Tab = Window:MakeTab({
	Name = "法宝",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "1",
  Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/loader_1038"))()
    end
})

local Tab = Window:MakeTab({
	Name = "河北唐县",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "唐",
  Callback = function()
loadstring(game:HttpGet("https://pastefy.app/s20nni0h/raw"))()
  end
})
Tab:AddButton({
  Name = "唐2",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Tang%20Country.lua"))()
  end
})
local Tab = Window:MakeTab({
	Name = "破坏者谜团",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "透视之类的",
  Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script"),true))()
  end
})
Tab:AddButton({
  Name = "超多功能",
  Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script"),true))()
  end
})
Tab:AddButton({
  Name = "绘制位置(警长之类的",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/Releases/main/MurderMystery2HighlightESP"))(' Watermelon ?')
  end
})
local Tab = Window:MakeTab({
	Name = "nico下一个机器人",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "nico1",
  Callback = function()
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/fartbutt69/Nico-s-Nextbot-Killer/main/script.lua", true))()
  end
})
Tab:AddButton({
  Name = "nico2",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/elonof/nicosbots-script/main/main.lua",true))()
  end
})
Tab:AddButton({
  Name = "好用",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/elonof/nicosbots-script/main/main.lua",true))()
  end
})
Tab:AddButton({
  Name = "可以刷",
  Callback = function()
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/fartbutt69/Nico-s-Nextbot-Killer/main/script.lua", true))()
  end
})
local Tab = Window:MakeTab({
	Name = "起床战争",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "vepe v3",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Alan0947383/Demonic-HUB-V2/main/S-C-R-I-P-T.lua",true))()
  end
})
Tab:AddButton({
  Name = "vape v4.1",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/V4ForRoblox/main/NewMainScript.lua", true))()
  end
})
local Tab = Window:MakeTab({
	Name = "伐木",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "伐木1",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
	end
})
Tab:AddButton({
  Name = "白",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloudX-ScriptsWane/ScriptsDache/main/%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A822.lua", true))()
  end
})
local Section = Tab:AddSection({	Name = "传送..."})                                      Tab:AddButton({Name = "火",      Callback = function()              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1615.8934326171875, 622.9998779296875, 1086.1234130859375)               end                                    })                                                                              Tab:AddButton({                  Name = "画室",                 Callback = function()                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5241.55810546875, -166.00003051757812, 709.5656127929688)                end                                    })                                                                Tab:AddButton({                  Name = "幻影",              Callback = function()             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.28166198730469, -213.13137817382812, -1357.8018798828125)              end                                   })                                                                Tab:AddButton({                 Name = "木材反斗城",            Callback = function()             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(252.31906127929688, 2.9999992847442627, 56.9854850769043)                  end                                   })                                                                               Tab:AddButton({                 Name = "冰木",                  Callback = function()              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1522.8817138671875, 412.3657531738281, 3277.71826171875)                     end                                    })                                                                Tab:AddButton({                  Name = "椰子",                Callback = function()              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2615.709228515625, -5.899986743927002, -21.30138397216797)                  end                                     })

local Tab = Window:MakeTab({
	Name = "自然灾害模拟器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "指令",
  Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
      end
})

Tab:AddButton({
  Name = "2",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
  end
})
local Tab = Window:MakeTab({
	Name = "汽车经销大亨",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "好用",
  Callback = function()
loadstring(game:HttpGet("https://pastefy.app/5o594Q0i/raw"))()
  end
})
Tab:AddButton({
  Name = "不知道",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/03sAlt/BlueLockSeason2/main/README.md"))()
  end
})
local Tab = Window:MakeTab({
	Name = "兵工厂",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({  
    Name = "whh",
	Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init'), true))()
	end
})
Tab:AddButton({  
    Name = "子弹追踪",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))()
	end
})
local Tab = Window:MakeTab({
	Name = "刀刃球",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({  
    Name = "超级超级强(比拼延迟",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Ei22vwnm"))()
	end
})
Tab:AddButton({  
    Name = "超强1",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Neoncat765/Neon.C-Hub-X/main/UnknownVersion"))()
	end
})
Tab:AddButton({  
    Name = "超强2",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HKLua/Balls/main/DawnLoader.lua"))()
	end
})
Tab:AddButton({  
    Name = "超强3",
	Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Unknownkellymc1/Unknownscripts/main/slap-battles')))()
	end
})
local Tab = Window:MakeTab({
	Name = "最强战场",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet("https://pastefy.app/REPoaFWC/raw",true))();
    end
})
Tab:AddButton({
  Name = "2",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SaitamaBattlegrounds.lua"))()
    end
})
    Tab:AddButton({
  Name = "3",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sandwichk/RobloxScripts/main/Scripts/BadWare/Hub/Load.lua", true))()
    end
})
local Tab = Window:MakeTab({
	Name = "火箭发射模拟",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "1",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xinhaoxian2/QB/main/QB%E7%81%AB%E7%AE%AD%E5%8F%91%E5%B0%84%E6%A8%A1%E6%8B%9F%E5%99%A8.lua"))()
    end
})
Tab:AddButton({  
    Name = "2",
	Callback = function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/9245/%E7%8C%AB%E9%80%9A%E7%94%A8.txt?sign=hrWROZdVfK2mtJcIFa3Tvbl-TojP1C86_Zd3q03qttc%3D%3A0"))()
	end
})
Tab:AddButton({  
    Name = "3",
	Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/dizyhvh/rbx_scripts/main/321_blast_off_simulator')))()
	end
})
local Tab = Window:MakeTab({
	Name = "evade",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({  
    Name = "1",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
	end
})
local Tab = Window:MakeTab({
	Name = "内脏与黑火药",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "强烈推荐，非常非常好用",
  Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/smsmdmsmsk/Roblox/main/%E4%B8%93%E5%B1%9E%E6%B8%85%E9%A3%8E%E8%84%9A%E6%9C%AC.txt"),true))()
  end
})
local Tab = Window:MakeTab({
	Name = "51",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "1",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Saktk-In-Area51/main/Area51", true))()
  end
})
local Tab = Window:MakeTab({
	Name = "活过杀手",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "1",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Milan08Studio/ChairWare/main/main.lua"))()
  end
})
local Tab = Window:MakeTab({
	Name = "造船寻宝",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/max2007killer/auto-build-not-limit/main/autobuild.txt"))()
  end
})
Tab:AddButton({
  Name = "2",
  Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/urmomjklol69/GoldFarmBabft/main/GoldFarm.lua'),true))()
  end
})
Tab:AddButton({
  Name = "3",
  Callback = function()
loadstring(game:HttpGet("https://pastefy.app/hvV1c4nO/raw"))()
  end
})
Tab:AddButton({
  Name = "4",
  Callback = function()
loadstring(game:HttpGet("http://dirtgui.xyz/BuildABoat.lua",true))()
  end
})
local Tab = Window:MakeTab({
	Name = "餐厅大亨",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "1",
  Callback = function()
loadstring(game:HttpGet("https://pastefy.app/Ppqt0Gib/raw"))()
  end
})
Tab:AddButton({
  Name = "2",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/toosiwhip/snake-hub/main/restaurant-tycoon-2.lua"))()
  end
})
Tab:AddButton({
  Name = "3",
  Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/4icwwuh3"))()
  end
})
local Tab = Window:MakeTab({
	Name = "滑板",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "功能全是我自己做的，老外没人做这个"
})
Tab:AddButton({
  Name = "自动刷钱(使用一次之后重置进度，然后再使用",
  Callback = function()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local teleportLocations = {
    CFrame.new(720.9003295898438, 820.221923828125, 1276.2716064453125),
    CFrame.new(720.8494262695312, 820.2217407226562, 1035.9639892578125),
    CFrame.new(718.9112548828125, 820.2220458984375, 888.6531372070312),
    CFrame.new(717.5925903320312, 820.2430419921875, 700.90185546875),
    CFrame.new(718.4744262695312, 820.2437133789062, 438.0439758300781),
    CFrame.new(721.3782348632812, 820.2398071289062, 255.46966552734375),
    CFrame.new(729.5831909179688, 768.5872802734375, -35.86282730102539),
    CFrame.new(729.4841918945312, 778.0161743164062, -372.23382568359375),
    CFrame.new(727.8489379882812, 777.989501953125, -638.0508422851562),
    CFrame.new(728.0556640625, 777.9688110351562, -836.60498046875),
    CFrame.new(729.286376953125, 777.9891967773438, -1014.779052734375),
    CFrame.new(733.6581420898438, 791.115234375, -1396.6961669921875),
    CFrame.new(732.4264526367188, 791.1156616210938, -2041.016357421875),
    CFrame.new(726.75, 791.1173706054688, -2196.39453125),
    CFrame.new(730.2203369140625, 791.1075439453125, -2884.73681640625),
    CFrame.new(730.3388061523438, 791.1142578125, -3102.38916015625),
    CFrame.new(727.7655029296875, 791.1150512695312, -3360.87109375),
    CFrame.new(731.046630859375, 792.5222778320312, -3677.801513671875),
    CFrame.new(727.9034423828125, 792.566650390625, -3870.017822265625),
    CFrame.new(740.8197021484375, 803.2163696289062, -4172.65771484375),
    CFrame.new(735.9893798828125, 803.2164306640625, -4503.990234375),
    CFrame.new(737.9425659179688, 770.2411499023438, -4761.38134765625),
    CFrame.new(737.3558959960938, 770.2410278320312, -5020.162109375),
    CFrame.new(737.0813598632812, 770.1453857421875, -5178.78955078125),
    CFrame.new(736.8077392578125, 770.0449829101562, -5435.8759765625),
    CFrame.new(736.2731323242188, 770.0885009765625, -6014.43603515625),
    CFrame.new(741.013427734375, 780.6370849609375, -6213.00439453125),
    CFrame.new(736.9421997070312, 795.6929931640625, -6474.15576171875),
    CFrame.new(733.9675903320312, 795.6925659179688, -6717.08251953125),
    CFrame.new(738.1251220703125, 754.1655883789062, -6913.83642578125),
    CFrame.new(739.092041015625, 754.25146484375, -7150.85546875),
    CFrame.new(734.5187377929688, 754.337646484375, -7493.94677734375),
    CFrame.new(739.6365356445312, 754.532958984375, -7747.5048828125),
    CFrame.new(737.41259765625, 754.5267944335938, -7983.705078125),
    CFrame.new(731.8265380859375, 754.5131225585938, -8211.40625),
    CFrame.new(734.9577026367188, 754.5107421875, -8399.2939453125),
    CFrame.new(735.8970947265625, 754.5259399414062, -8567.2109375),
    CFrame.new(738.2869262695312, 754.5265502929688, -8854.595703125),
    CFrame.new(735.8578491210938, 754.5283813476562, -9069.7646484375),
    CFrame.new(738.4788818359375, 754.5164794921875, -9369.9013671875),
    CFrame.new(735.3330078125, 719.4370727539062, -9663.6357421875),
    CFrame.new(731.3956298828125, 738.4107055664062, -9936.8046875),
    CFrame.new(792.6646118164062, 778.3489990234375, -10319.5458984375),
    CFrame.new(794.5692749023438, 771.293212890625, -10535.9765625),
    CFrame.new(791.642822265625, 771.2813720703125, -10719.689453125),
    CFrame.new(798.0781860351562, 771.2813110351562, -10937.3662109375),
    CFrame.new(790.6343383789062, 771.2320556640625, -11117.2685546875),
    CFrame.new(789.1956787109375, 771.2974853515625, -11368.8837890625),
    CFrame.new(796.0390625, 771.2975463867188, -11612.83203125),
    CFrame.new(790.6952514648438, 771.2510375976562, -11770.052734375),
    CFrame.new(791.5932006835938, 771.2510375976562, -11996.244140625),
    CFrame.new(819.493896484375, 729.9517211914062, -12265.978515625),
    CFrame.new(817.0325317382812, 729.86181640625, -12535.783203125),
    CFrame.new(818.5285034179688, 741.7108154296875, -12692.2021484375),
    CFrame.new(817.0189208984375, 692.0725708007812, -13026.912109375),
    CFrame.new(813.52783203125, 692.0728759765625, -13220.89453125),
    CFrame.new(819.1791381835938, 691.9867553710938, -13399.01953125),
    CFrame.new(816.0570678710938, 691.9366455078125, -13587.2548828125),
    CFrame.new(820.8309326171875, 692.0704345703125, -13819.9853515625),
    CFrame.new(812.9336547851562, 690.8340454101562, -14021.150390625),
    CFrame.new(813.8812866210938, 690.8252563476562, -14404.408203125),
    CFrame.new(815.9535522460938, 721.4076538085938, -14690.9716796875),
    CFrame.new(814.2242431640625, 721.4094848632812, -14913.4892578125),
    CFrame.new(816.998291015625, 721.4088134765625, -15154.8330078125),
    CFrame.new(814.1343383789062, 721.3041381835938, -15388.2294921875),
    CFrame.new(811.3001098632812, 720.972900390625, -15760.357421875),
    CFrame.new(813.3223876953125, 680.7445068359375, -16142),
    CFrame.new(812.300537109375, 694.798583984375, -16342.7587890625),
    CFrame.new(816.538818359375, 694.798583984375, -16649.501953125),
    CFrame.new(810.9940795898438, 694.5449829101562, -16878.16796875),
    CFrame.new(815.1284790039062, 694.5429077148438, -17178.115234375),
    CFrame.new(814.3304443359375, 694.5443115234375, -17490.7109375),
    CFrame.new(815.6641235351562, 694.5447387695312, -17755.572265625),
    CFrame.new(810.6181640625, 694.5426635742188, -18062.677734375),
    CFrame.new(813.5664672851562, 694.798095703125, -18430.931640625),
    CFrame.new(814.7852783203125, 704.7312622070312, -18698.54296875),
    CFrame.new(814.5475463867188, 704.7316284179688, -18909.955078125),
    CFrame.new(814.0503540039062, 704.7161254882812, -19135.42578125),
    CFrame.new(816.026123046875, 735.065673828125, -19390.2890625),
    CFrame.new(817.2208251953125, 685.2952880859375, -19686.294921875),
    CFrame.new(825.0120239257812, 685.2904663085938, -19956.169921875),
    CFrame.new(820.5740356445312, 685.1828002929688, -20672.314453125),
    CFrame.new(821.83984375, 685.0441284179688, -21094.357421875),
    CFrame.new(832.3796997070312, 686.7738647460938, -21371.220703125),
    CFrame.new(837.410400390625, 686.9760131835938, -21607.171875),
    CFrame.new(832.1165161132812, 686.9696044921875, -21846.94140625),
    CFrame.new(835.9284057617188, 686.9833374023438, -22108.408203125),
    CFrame.new(832.0123901367188, 686.9644775390625, -22405.853515625),
    CFrame.new(838.1778564453125, 654.8596801757812, -22718.806640625),
    CFrame.new(831.3048095703125, 654.8251342773438, -23031.599609375),
    CFrame.new(830.6279907226562, 654.3272705078125, -23595.107421875),
    CFrame.new(833.7484741210938, 654.3263549804688, -23855.962890625),
    CFrame.new(833.8663330078125, 654.29443359375, -24143.8203125),
}
local teleportDelay = 0.5
local function teleportToLocations()
    for _, location in ipairs(teleportLocations) do
        -- 传送玩家
        humanoidRootPart.CFrame = location
        print("开始刷钱: " .. tostring(location))
        wait(teleportDelay)
    end
    print("请重启")
end

teleportToLocations()
  end
})
Tab:AddButton({
  Name = "进度20%",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(730.4793701171875, 792.5690307617188, -3870.926513671875) 
  end
})
Tab:AddButton({
  Name = "进度30%",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(736.6497802734375, 795.643310546875, -6475.37646484375) 
  end
})
Tab:AddButton({
  Name = "进度40%",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(737.010986328125, 754.5283203125, -9073.75390625) 
  end
})
Tab:AddButton({
  Name = "进度60(因为缺了一部分我也不知道",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(827.6930541992188, 694.544677734375, -16893.171875) 
  end
})
Tab:AddButton({
  Name = "进度70",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(826.8505249023438, 685.2952880859375, -19700.220703125) 
  end
})
Tab:AddButton({
  Name = "进度80",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(834.3157348632812, 686.9769897460938, -21863.525390625) 
  end
})
Tab:AddButton({
  Name = "进度100%",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(840.1195678710938, 654.294677734375, -24155.2734375)
  end
})
local Tab = Window:MakeTab({
	Name = "恐怖奶奶联机",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "第一章"
})
Tab:AddButton({
  Name = "一键通关(下水道结局",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-339.3637390136719, -17.456302642822266, 34.61933135986328)
  end
})
local Section = Tab:AddSection({
	Name = "第二章"
})
Tab:AddButton({
  Name = "一键通关(门结局",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-358.2890625, 117.10624694824219, 24.6708927154541)
  end
})
local Section = Tab:AddSection({
	Name = "第三章"
})
Tab:AddButton({
  Name = "一键通关(大门结局",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21.647024154663086, 15.914345741271973, -98.02608489990234)
  end
})
local Tab = Window:MakeTab({
	Name = "坐车狂热",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "检查点1"
})
Tab:AddButton({
  Name = "1",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9345.09375, 1131.218017578125, -132.20254516601562)
  end
})
local Section = Tab:AddSection({
	Name = "检查点2"
})
Tab:AddButton({
  Name = "2",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11027.7431640625, 1135.53369140625, 1529.1766357421875)
  end
})
local Section = Tab:AddSection({
	Name = "检查点3"
})
Tab:AddButton({
  Name = "3",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12904.9033203125, 1175.02978515625, 1894.902099609375)
  end
})
local Section = Tab:AddSection({
	Name = "检查点4"
})
Tab:AddButton({
  Name = "4",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(14713.0078125, 1724.079345703125, 1892.64404296875)
  end
})
local Section = Tab:AddSection({
	Name = "检查点5"
})
Tab:AddButton({
  Name = "5",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(15560.1884765625, 1723.9041748046875, 2052.9365234375)
  end
})
local Section = Tab:AddSection({
	Name = "检查点6"
})
Tab:AddButton({
  Name = "6",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17548.392578125, 1709.1190185546875, 2725.378662109375)
  end
})
local Section = Tab:AddSection({
	Name = "检查点7"
})
Tab:AddButton({
  Name = "7",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18263.65625, 1210.999267578125, 4262.97802734375)
  end
})
local Section = Tab:AddSection({
	Name = "检查点8"
})
Tab:AddButton({
  Name = "8",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18850.212890625, 1160.2744140625, 5402.203125)
  end
})
local Section = Tab:AddSection({
	Name = "检查点10"
})
Tab:AddButton({
  Name = "10",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21929.984375, 1177.484619140625, 6655.6484375)
  end
})
local Section = Tab:AddSection({
	Name = "检查点11"
})
Tab:AddButton({
  Name = "11",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23455.958984375, 1410.373779296875, 8618.978515625)
  end
})
local Section = Tab:AddSection({
	Name = "检查点12"
})
Tab:AddButton({
  Name = "12",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25554.3671875, 1678.889892578125, 7410.0634765625)
  end
})
local Section = Tab:AddSection({
	Name = "检查点13"
})
Tab:AddButton({
  Name = "13",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28279.033203125, 1680.139892578125, 6498.50439453125)
  end
})
local Section = Tab:AddSection({
	Name = "终点"
})
Tab:AddButton({
  Name = "Nice",
  Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(30468.392578125, 1488.4068603515625, 5198.72509765625)
  end
})
