local library = loadstring(game:HttpGet("https://pastebin.com/raw/nBq2D86q"))()
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
local window = library:new("nn中心")

local creds = window:Tab("信息",'16060333448')
local bin = creds:section("玩家信息",true)
local bio = creds:section("作者信息",true)
local credits = creds:section("关闭",true)

local PK = window:Tab("doors",'16060333448')
local PG = PK:section("模式",true)
local VH = PK:section("脚本",true)

bin:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
bin:Label("你的注入器:"..identifyexecutor())

bio:Label("官群：144701927")
bio:Label("作者nn")

credits:Toggle("脚本框架变小一点", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
credits:Button("关闭脚本",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)
 
PG:Button("doors极端", function()
    loadstring(game:HttpGet('https://github.com/HollowedOutMods/MayhemMode/blob/main/loader.lua?raw=true'))()
end)
PG:Button("doors通用", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Doors"))()
end)

VH:Button("doors变形", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))()
end)
VH:Button("doorsMS脚本", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSDOORS.lua"),true))()
end)
VH:Button("doors通用", function()
    --[[Doors Blackking And BobHub脚本汉化]]loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
end)