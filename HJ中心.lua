local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))() 
 local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))() 

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
LBL.Text = "纯缝合"
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
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S")).."秒"
end

OrionLib:MakeNotification({
                    Name = "正在开启反挂机请稍等...",
                    Content = "Akf 开启中...",
                    Time = 4
                })     
print("索引开启反挂机")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)      
                wait(4)
OrionLib:MakeNotification({
                    Name = "开启成功",
                    Content = "AKF",
                    Time = 3
                })
                OrionLib:MakeNotification({
                    Name = "开心",
                    Content = "开心对待每一天",
                    Time = 3
                })
    wait(1)
                
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "HJ中心1.1", HidePremium = false, SaveConfig =true,IntroText="HJ中心1.1", ConfigFolder = "NN中心"})
local Tab = Window:MakeTab({
	Name = "主页",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("更新","通用,doors,自然灾害,忍者传奇,力量传奇,通用(忍者传奇只更新到雷暴岛)")
Tab:AddParagraph("云端更新","wh")
Tab:AddParagraph("永久免费")
Tab:AddParagraph("提示","脚本中心") 
Tab:AddParagraph("你的注入器:"..identifyexecutor())
Tab:AddParagraph("作者","作者不愿意透露自己")
Tab:AddParagraph("别骂")

Tab:AddButton ({
	Name = "复制",
	Callback = function ()
	 setclipboard("没有东西")
	 OrionLib:MakeNotification({
                    Name = "提示信息",
                    Content = "你已复制，请在粘贴板中查看",
                    Time = 3
                })
	end
})

local Tab = Window:MakeTab({
	Name = "免费获得无限r币",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "免贵获得无限r币",
	Callback = function ()
	 game.Players.LocalPlayer:Kick('要是真有免费获得无限r币的话，那么你包封的，做人不要太贪心天上不会掉馅饼只会掉陷阱')
	end
})
local Tab = Window:MakeTab({
	Name = "通用",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
		
		
	end
})
Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
		
	end
})
Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
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
Tab:AddButton ({
	Name = "玩家进游戏看得见",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
	end
})
Tab:AddButton ({
	Name = "自杀",
	Callback = function ()
	 game.Players.LocalPlayer.Character.Humanoid.Health=0
HumanDied = true
	end
})
Tab:AddButton ({
	Name = "iy",
	Callback = function ()
	 loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
	end
})
local Section = Tab:AddSection({
	Name = "飞行"
})
Tab:AddButton ({
	Name = "飞行v3",
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
local Tab = Window:MakeTab({
	Name = "doors",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "脚本"
})
Tab:AddButton ({
	Name = "微山doors",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/weishanteam/Script/main/doors/WeiShan_Loader.lua"))()
	end
})
Tab:AddButton ({
	Name = "ms",
	Callback = function ()
	 loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua"),true))()
	end
})
Tab:AddButton ({
	Name = "键盘脚本",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
	end
})
Tab:AddButton ({
	Name = "变成怪物",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
	end
})
Tab:AddButton ({
	Name = "floor2(改地图)",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/iCherryKardes/Doors/main/Floor%202%20Mod"))()
	end
})
local Section = Tab:AddSection({
	Name = "道具"
})
Tab:AddButton ({
	Name = "seek枪",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/persopoiu/scripts/main/seekgun.lua"))()
	end
})
Tab:AddButton ({
	Name = "臭猫",
	Callback = function ()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell Plushie"))()
	end
})
Tab:AddButton ({
	Name = "圣光手雷",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
	end
})
Tab:AddButton ({
	Name = "磁铁",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
	end
})
local Tab = Window:MakeTab({
	Name = "自然灾害模拟器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "回到出生点",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-252.8938751220703, 180.0355987548828, 321.2361145019531)
	end
})
local Tab = Window:MakeTab({
	Name = "忍者传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "附魔岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(83.028564453125, 766.3915405273438, -128.62686157226562)
	end
})
Tab:AddButton ({
	Name = "星界岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.43006896972656, 2014.091064453125, 247.5571746826172)
	end
})
Tab:AddButton ({
	Name = "神秘岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(162.7420654296875, 4047.7841796875, 13.378257751464844)
	end
})
Tab:AddButton ({
	Name = "太空岛",
	Callback = function ()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.0364227294922, 5657.091796875, 161.54000854492188)
	end
})
Tab:AddButton ({
	Name = "冻土岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.7508544921875, 9285.08984375, 158.16287231445312)
	end
})
Tab:AddButton ({
	Name = "沙暴",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(183.7511749267578, 17686.236328125, 147.5008087158203)
	end
})
Tab:AddButton ({
	Name = "雷暴",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.87640380859375, 24069.9296875, 158.25582885742188)
	end
})
Tab:AddButton ({
	Name = "远古炼狱岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(166.48052978515625, 28256.201171875, 160.25828552246094)
	end
})
Tab:AddButton ({
	Name = "午夜暗影岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182.76388549804688, 33206.88671875, 136.66305541992188)
	end
})
Tab:AddButton ({
	Name = "神秘灵魂岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(157.39967346191406, 39317.4765625, 146.05630493164062)
	end
			
})
	Tab:AddButton ({
	Name = "冬季奇迹岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.73797607421875, 46010.4609375, 158.589599609375)
	end
})
	Tab:AddButton ({
	Name = "黄金大师岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.56202697753906, 52607.671875, 166.47279357910156)
	end
})
	Tab:AddButton ({
	Name = "龙传奇岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(166.83065795898438, 59594.58984375, 150.16586303710938)
	end
})
	Tab:AddButton ({
	Name = "赛博传奇岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(167.66766357421875, 66669.0703125, 142.27223205566406)
	end
})
	Tab:AddButton ({
	Name = "天岚超能岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182.09237670898438, 70271.0625, 157.14857482910156)
	end
})
	Tab:AddButton ({
	Name = "混沌传奇岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(177.88784790039062, 74442.7578125, 143.346435546875)
	end
})
	Tab:AddButton ({
	Name = "灵魂融合岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(183.39129638671875, 79746.890625, 163.01148986816406)
	end
})
	Tab:AddButton ({
	Name = "黑暗元素岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(169.4972381591797, 83198.890625, 170.53890991210938)
	end
})
	Tab:AddButton ({
	Name = "禅心岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(173.4744873046875, 87050.9765625, 141.89602661132812)
	end
})
Tab:AddButton ({
	Name = "炽热漩涡之岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(178.33023071289062, 91245.96875, 152.53775024414062)
	end
})
local Tab = Window:MakeTab({
	Name = "力量传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "小岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-44.46185302734375, 3.8302507400512695, 1901.6556396484375)
	end
})
Tab:AddButton ({
	Name = "冰霜健身房",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2623.78466796875, 3.676866054534912, -409.1138000488281)
	end
})
Tab:AddButton ({
	Name = "神话健身房",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2250.778076171875, 3.654913902282715, 1073.2266845703125)
	end
})
Tab:AddButton ({
	Name = "永恒健身房",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6734.2587890625, 3.6268656253814697, -1310.8692626953125)
	end
})
Tab:AddButton ({
	Name = "传奇健身房",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4625.86279296875, 987.8297729492188, -3916.247802734375)
	end
})
Tab:AddButton ({
	Name = "肌肉之王健身房",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8668.4169921875, 13.526894569396973, -5743.12939453125)
	end
})
