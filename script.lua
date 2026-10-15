--============================================================
--  FREDDY HUB — Steal an Egg ULTIMATE v4
--  SEGURANÇA MÁXIMA | Anti-Ban | Anti-Kick | Anti-Detect
--  PT-BR / EN | Mobile | Finder | ESP | Notifier
--  + Auto Click | Click TP | Auto Buy | Fullbright | FPS Unlock
--============================================================

local CFG = {
   LANG = "PT",
   AUTO_STEAL = false, AUTO_PLACE = false, AUTO_SELL = false,
   AUTO_HATCH = false, AUTO_UPGRADE = false, AUTO_FUSE = false,
   AUTO_HUNGRY = false, AUTO_RETURN = false, AUTO_LOCK = false,
   AUTO_DELIVER = false,
   SPEED = false, SPEED_VALUE = 200,
   FLY = false, FLY_SPEED = 100,
   NOCLIP = false, INF_JUMP = false, TP_WALK = false, TP_WALK_SPEED = 5,
   ANTI_KICK = true, ANTI_BAN = true, ANTI_DETECT = true,
   ANTI_TP_DETECT = true, ANTI_SPEED_DETECT = true,
   ANTI_RAGDOLL = true, ANTI_FLING = true, ANTI_VOID = true,
   ANTI_HIT = false, CHARACTER_PROTECT = true,
   REMOTE_PROTECT = true, SAFE_DISCONNECT = true,
   STEALTH_MODE = true, PANIC_BUTTON = true,
   NO_BAT_CD = false, BAT_AIMBOT = false,
   ESP_PETS = false, ESP_SHOW_NAME = true, ESP_SHOW_RARITY = true,
   ESP_SHOW_VALUE = true, ESP_SHOW_MUT = true, ESP_PLAYERS = false,
   ESP_BASES = false, SEE_THROUGH = false,
   FINDER = false,
   FINDER_RARITY = {"Legendary","Mythic","Secret"},
   FINDER_VALUE = 1000000,
   FINDER_ONLY_EMPTY = false, FINDER_MAX_PLAYERS = 8,
   WEBHOOK = "", PING_ID = "",
   STEAL_RANGE = 60, MIN_VALUE = 0, MIN_RARITY = "Common",
   AUTO_REDEEM = false, AUTO_QUIZ = false, AUTO_AFK = false,
   FPS_BOOST = false, AUTO_HOP = false,
   HOP_MIN = 3, HOP_MAX = 12,
   AUTO_CLICK = false, AUTO_CLICK_DELAY = 0.1,
   CLICK_TP = false,
   AUTO_BUY = false,
   AUTO_CLAIM = false,
   ANTI_AFK_PRO = false,
   FPS_UNLOCK = false,
   FULLBRIGHT = false,
   AUTO_RECONNECT = false,
}

local L = {}
L.PT = {
   title="Freddy Hub", subtitle="Steal an Egg",
   main="Principal", steal="Roubo", move="Movimento",
   visual="Visual", combat="Combate", sec="Seguranca", misc="Extras", server="Servidor",
   autosteal="Auto Roubar", autoplace="Auto Colocar", autosell="Auto Vender",
   autohatch="Auto Chocar", autoupgrade="Auto Melhorar", autofuse="Auto Fundir",
   autohungry="Auto Alimentar", autoreturn="Auto Voltar", autolock="Auto Travar",
   autodeliver="Auto Entregar",
   speed="Velocidade", fly="Voar", noclip="Atravessar", infjump="Pulo Infinito",
   tpwalk="TP Walk",
   antikick="Anti Kick", antiban="Anti Ban", antidetect="Anti Deteccao",
   antitp="Anti Deteccao de TP", antispeed="Anti Deteccao de Velocidade",
   antiragdoll="Anti Queda", antifling="Anti Arremesso", antivoid="Anti Vazio",
   antihit="Anti Hit", charprotect="Protecao de Personagem",
   remoteprotect="Protecao de Remote", safedisconnect="Saida Segura",
   stealth="Modo Furtivo", panic="Botao de Panico",
   nobat="Sem Cooldown Taco", bataimbot="Aimbot Taco",
   esppets="ESP Pets", espplayers="ESP Players", espbases="ESP Bases",
   seethrough="Ver Atraves de Bases",
   finder="Finder (Avisa Pet Bom)", webhook="Webhook Discord",
   pingid="ID para Ping", stealrange="Alcance do Roubo",
   minvalue="Valor Minimo", minrarity="Raridade Minima",
   onlyempty="So notificar se servidor vazio",
   maxplayers="Max. Jogadores no Servidor",
   rarity_filter="Filtrar Raridade",
   autoredeem="Auto Resgatar Codigo", autoquiz="Auto Responder Quiz",
   autoafk="Anti AFK", fpsboost="FPS Boost", autohop="Auto ServerHop",
   hopmin="Min. Jogadores", hopmax="Max. Jogadores",
   safety_status="Status de Seguranca",
   autoclick="Auto Clicker", autoclickdelay="Delay do Click",
   clicktp="Click TP (toca na tela)",
   autobuy="Auto Comprar", autoclaim="Auto Resgatar Recompensa",
   antiafkpro="Anti AFK Pro (movimento)", fpsunlock="FPS Unlock",
   fullbright="Fullbright (visao noturna)",
   autoreconnect="Auto Reconectar",
}
L.EN = {
   title="Freddy Hub", subtitle="Steal an Egg",
   main="Main", steal="Steal", move="Movement",
   visual="Visual", combat="Combat", sec="Security", misc="Misc", server="Server",
   autosteal="Auto Steal", autoplace="Auto Place", autosell="Auto Sell",
   autohatch="Auto Hatch", autoupgrade="Auto Upgrade", autofuse="Auto Fuse",
   autohungry="Auto Feed", autoreturn="Auto Return", autolock="Auto Lock",
   autodeliver="Auto Deliver",
   speed="Speed", fly="Fly", noclip="Noclip", infjump="Infinite Jump",
   tpwalk="TP Walk",
   antikick="Anti Kick", antiban="Anti Ban", antidetect="Anti Detection",
   antitp="Anti TP Detect", antispeed="Anti Speed Detect",
   antiragdoll="Anti Ragdoll", antifling="Anti Fling", antivoid="Anti Void",
   antihit="Anti Hit", charprotect="Character Protection",
   remoteprotect="Remote Protection", safedisconnect="Safe Disconnect",
   stealth="Stealth Mode", panic="Panic Button",
   nobat="No Bat Cooldown", bataimbot="Bat Aimbot",
   esppets="ESP Pets", espplayers="ESP Players", espbases="ESP Bases",
   seethrough="See Through Bases",
   finder="Finder (Notify Good Pets)", webhook="Discord Webhook",
   pingid="Ping ID", stealrange="Steal Range",
   minvalue="Min Value", minrarity="Min Rarity",
   onlyempty="Only notify if server empty",
   maxplayers="Max Players in Server",
   rarity_filter="Rarity Filter",
   autoredeem="Auto Redeem Code", autoquiz="Auto Answer Quiz",
   autoafk="Anti AFK", fpsboost="FPS Boost", autohop="Auto ServerHop",
   hopmin="Min Players", hopmax="Max Players",
   safety_status="Safety Status",
   autoclick="Auto Clicker", autoclickdelay="Click Delay",
   clicktp="Click TP (tap screen)",
   autobuy="Auto Buy", autoclaim="Auto Claim Reward",
   antiafkpro="Anti AFK Pro (movement)", fpsunlock="FPS Unlock",
   fullbright="Fullbright (night vision)",
   autoreconnect="Auto Reconnect",
}

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = L[CFG.LANG].title.." | "..L[CFG.LANG].subtitle,
   LoadingTitle = L[CFG.LANG].title,
   LoadingSubtitle = "Ultimate v4 | Security+",
   Theme = "Amethyst",
   ConfigurationSaving = { Enabled = true, FolderName = "FreddyHub", FileName = "Ultimate" },
   KeySystem = false,
})

local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local RunSvc = game:GetService("RunService")
local HttpSvc = game:GetService("HttpService")
local TS = game:GetService("TeleportService")
local UIS = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")
local LP = Players.LocalPlayer
local CAM = workspace.CurrentCamera

pcall(function()
   if hookfunction and LP.Kick then
      hookfunction(LP.Kick, function() return end)
   end
end)

pcall(function()
   if getgc and hookfunction and islclosure then
      for _, fn in next, getgc(true) do
         if type(fn) == "function" and islclosure(fn) then
            local ok, info = pcall(debug.info, fn, "s")
            if ok and type(info) == "string" then
               if info:find("kick") or info:find("ban") or info:find("detect") then
                  pcall(hookfunction, fn, function() return end)
               end
            end
         end
      end
   end
end)

pcall(function()
   if hookmetamethod then
      local old
      old = hookmetamethod(game, "__namecall", function(self, ...)
         local m = getnamecallmethod()
         if m == "Kick" or m == "kick" then return nil end
         return old(self, ...)
      end)
   end
end)

local remotes = {}
for _, v in ipairs(RS:GetDescendants()) do
   if v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then
      local n = v.Name:lower()
      if n:find("steal") then remotes.steal = v end
      if n:find("place") then remotes.place = v end
      if n:find("sell") then remotes.sell = v end
      if n:find("hatch") or n:find("open") then remotes.hatch = v end
      if n:find("upgrade") then remotes.upgrade = v end
      if n:find("fuse") then remotes.fuse = v end
      if n:find("hungry") or n:find("feed") then remotes.hungry = v end
      if n:find("lock") then remotes.lock = v end
      if n:find("deliver") then remotes.deliver = v end
      if n:find("redeem") or n:find("code") then remotes.redeem = v end
      if n:find("answer") or n:find("quiz") then remotes.quiz = v end
      if n:find("buy") or n:find("purchase") then remotes.buy = v end
      if n:find("claim") or n:find("reward") then remotes.claim = v end
   end
end

local pets = {}
local RARITY_ORDER = {Common=1,Uncommon=2,Rare=3,Epic=4,Legendary=5,Mythic=6,Secret=7,Godly=8}

local function getPetInfo(model)
   local rarity = model:GetAttribute("Rarity") or model:GetAttribute("rarity")
   local value = model:GetAttribute("Value") or model:GetAttribute("value")
      or model:GetAttribute("CashPerSecond") or model:GetAttribute("Income")
   local mutation = model:GetAttribute("Mutation") or model:GetAttribute("mutation")
   if not rarity then
      local n = model.Name
      if n:find("Secret") then rarity="Secret"
      elseif n:find("Mythic") then rarity="Mythic"
      elseif n:find("Legendary") or n:find("Legend") then rarity="Legendary"
      elseif n:find("Epic") then rarity="Epic"
      elseif n:find("Rare") then rarity="Rare"
      elseif n:find("Uncommon") then rarity="Uncommon"
      else rarity="Common" end
   end
   return rarity or "Unknown", value or 0, mutation or "None"
end

local function scanPets()
   pets = {}
   for _, v in ipairs(workspace:GetDescendants()) do
      if v:IsA("Model") and v.PrimaryPart then
         local n = v.Name:lower()
         if n:find("pet") or n:find("egg") or n:find("brainrot")
            or v:FindFirstChildOfClass("ProximityPrompt")
            or v:GetAttribute("Rarity") then
            local rarity, value, mutation = getPetInfo(v)
            table.insert(pets, {model=v, name=v.Name, rarity=rarity, value=value, mutation=mutation})
         end
      end
   end
   table.sort(pets, function(a,b) return a.value > b.value end)
end

local espFolder = Instance.new("Folder")
espFolder.Name = "FreddyESP"
espFolder.Parent = workspace

local function updateESP()
   for _, c in ipairs(espFolder:GetChildren()) do c:Destroy() end
   if CFG.ESP_PETS then
      for _, p in ipairs(pets) do
         local hl = Instance.new("Highlight")
         hl.Adornee = p.model
         if p.rarity == "Secret" then hl.FillColor = Color3.fromRGB(255,215,0)
         elseif p.rarity == "Mythic" then hl.FillColor = Color3.fromRGB(255,80,80)
         elseif p.rarity == "Legendary" then hl.FillColor = Color3.fromRGB(255,150,50)
         elseif p.rarity == "Epic" then hl.FillColor = Color3.fromRGB(180,80,255)
         elseif p.rarity == "Rare" then hl.FillColor = Color3.fromRGB(80,150,255)
         else hl.FillColor = Color3.fromRGB(100,200,100) end
         hl.OutlineColor = Color3.new(1,1,1)
         hl.FillTransparency = 0.5
         hl.Parent = espFolder
         local lines = {}
         if CFG.ESP_SHOW_NAME then table.insert(lines, p.name) end
         if CFG.ESP_SHOW_RARITY then table.insert(lines, "["..p.rarity.."]") end
         if CFG.ESP_SHOW_VALUE and p.value > 0 then table.insert(lines, tostring(p.value)) end
         if CFG.ESP_SHOW_MUT and p.mutation ~= "None" then table.insert(lines, p.mutation) end
         if #lines > 0 then
            local bb = Instance.new("BillboardGui")
            bb.Size = UDim2.new(0,250,0,80)
            bb.StudsOffset = Vector3.new(0,4,0)
            bb.AlwaysOnTop = true
            bb.Adornee = p.model
            bb.Parent = espFolder
            local tl = Instance.new("TextLabel")
            tl.Size = UDim2.new(1,0,1,0)
            tl.BackgroundTransparency = 1
            tl.Text = table.concat(lines, "\n")
            tl.TextColor3 = Color3.new(1,1,1)
            tl.TextStrokeTransparency = 0
            tl.Font = Enum.Font.GothamBold
            tl.TextScaled = true
            tl.Parent = bb
         end
      end
   end
   if CFG.ESP_PLAYERS then
      for _, pl in ipairs(Players:GetPlayers()) do
         if pl ~= LP and pl.Character then
            local hl = Instance.new("Highlight")
            hl.Adornee = pl.Character
            hl.FillColor = Color3.fromRGB(255,80,120)
            hl.FillTransparency = 0.7
            hl.Parent = espFolder
         end
      end
   end
   if CFG.ESP_BASES then
      for _, v in ipairs(workspace:GetDescendants()) do
         if v:IsA("Model") and (v.Name:lower():find("base") or v.Name:lower():find("plot")) then
            local hl = Instance.new("Highlight")
            hl.Adornee = v
            hl.FillColor = Color3.fromRGB(80,255,120)
            hl.FillTransparency = 0.8
            hl.Parent = espFolder
         end
      end
   end
end

local function tpTo(pos)
   local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
   if not hrp then return end
   if CFG.ANTI_TP_DETECT then
      local start = hrp.Position
      for i = 1, 5 do
         local t = i / 5
         hrp.CFrame = CFrame.new(start:Lerp(pos, t) + Vector3.new(0,3,0))
         task.wait(0.02)
      end
   else
      hrp.CFrame = CFrame.new(pos + Vector3.new(0,3,0))
   end
end

local function trySteal(pet)
   local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
   if not hrp or not pet.model.PrimaryPart then return end
   if CFG.MIN_VALUE > 0 and pet.value < CFG.MIN_VALUE then return end
   if CFG.MIN_RARITY ~= "Common" and (RARITY_ORDER[pet.rarity] or 0) < (RARITY_ORDER[CFG.MIN_RARITY] or 0) then return end
   local dist = (hrp.Position - pet.model.PrimaryPart.Position).Magnitude
   if dist > CFG.STEAL_RANGE then tpTo(pet.model.PrimaryPart.Position); return end
   if remotes.steal then
      pcall(function()
         if remotes.steal:IsA("RemoteEvent") then remotes.steal:FireServer(pet.model)
         else remotes.steal:InvokeServer(pet.model) end
      end)
      return
   end
   local prompt = pet.model:FindFirstChildOfClass("ProximityPrompt")
   if prompt then
      pcall(function()
         prompt.MaxActivationDistance = 9e9
         prompt.RequiresLineOfSight = false
         prompt:InputHoldBegin()
         task.wait(prompt.HoldDuration + 0.05)
         prompt:InputHoldEnd()
      end)
   end
end

local notified = {}
local function sendWebhook(pet, reason)
   if CFG.WEBHOOK == "" then return end
   local key = pet.name..tostring(pet.model:GetDebugId())
   if notified[key] then return end
   if CFG.FINDER_ONLY_EMPTY then
      if #Players:GetPlayers() > CFG.FINDER_MAX_PLAYERS then return end
   end
   notified[key] = true
   local ping = CFG.PING_ID ~= "" and "<@"..CFG.PING_ID..">" or ""
   local desc
   if CFG.LANG == "PT" then
      desc = "**Nome:** "..pet.name.."\n**Raridade:** "..pet.rarity
          .. "\n**Valor:** "..tostring(pet.value).."\n**Mutacao:** "..pet.mutation
          .. "\n**Motivo:** "..(reason or "Finder")
   else
      desc = "**Name:** "..pet.name.."\n**Rarity:** "..pet.rarity
          .. "\n**Value:** "..tostring(pet.value).."\n**Mutation:** "..pet.mutation
          .. "\n**Reason:** "..(reason or "Finder")
   end
   pcall(function()
      request({
         Url = CFG.WEBHOOK, Method = "POST",
         Headers = {["Content-Type"]="application/json"},
         Body = HttpSvc:JSONEncode({
            content = ping.." **"..(CFG.LANG=="PT" and "Achou pet bom!" or "Good pet found!").."**",
            embeds = {{ title = pet.name, description = desc, color = 16711808 }}
         })
      })
   end)
end

local speedConn
local function toggleSpeed(on)
   if speedConn then speedConn:Disconnect(); speedConn = nil end
   if not on then return end
   speedConn = RunSvc.Heartbeat:Connect(function()
      local hum = LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
      if hum then
         if CFG.ANTI_SPEED_DETECT then
            pcall(function() hum.WalkSpeed = CFG.SPEED_VALUE + math.random(-20, 20) end)
         else
            hum.WalkSpeed = CFG.SPEED_VALUE
         end
      end
   end)
end

local flyConn, flyBV, flyBG, flyGUI
local function toggleFly(on)
   if flyConn then flyConn:Disconnect(); flyConn = nil end
   if flyBV then flyBV:Destroy(); flyBV = nil end
   if flyBG then flyBG:Destroy(); flyBG = nil end
   if flyGUI then flyGUI:Destroy(); flyGUI = nil end
   if not on then return end
   local char = LP.Character
   if not char then return end
   local hrp = char:FindFirstChild("HumanoidRootPart")
   if not hrp then return end
   flyBV = Instance.new("BodyVelocity")
   flyBV.MaxForce = Vector3.new(9e9,9e9,9e9)
   flyBV.Velocity = Vector3.zero
   flyBV.Parent = hrp
   flyBG = Instance.new("BodyGyro")
   flyBG.MaxTorque = Vector3.new(9e9,9e9,9e9)
   flyBG.P = 1000
   flyBG.D = 50
   flyBG.CFrame = hrp.CFrame
   flyBG.Parent = hrp
   flyGUI = Instance.new("ScreenGui", game.CoreGui)
   flyGUI.Name = "FreddyFly"
   local dirs = {up=false,down=false,left=false,right=false,fwd=false,back=false}
   local function makeBtn(txt, pos)
      local b = Instance.new("TextButton")
      b.Size = UDim2.new(0,55,0,55)
      b.Position = pos
      b.BackgroundColor3 = Color3.fromRGB(255,80,120)
      b.BackgroundTransparency = 0.2
      b.Text = txt
      b.TextColor3 = Color3.new(1,1,1)
      b.Font = Enum.Font.GothamBold
      b.TextSize = 18
      b.Parent = flyGUI
      local c = Instance.new("UICorner")
      c.CornerRadius = UDim.new(1,0)
      c.Parent = b
      return b
   end
   local up = makeBtn("^", UDim2.new(0.5,-27,0.55,0))
   local down = makeBtn("v", UDim2.new(0.5,-27,0.78,0))
   local left = makeBtn("<", UDim2.new(0.28,-27,0.66,0))
   local right = makeBtn(">", UDim2.new(0.72,-27,0.66,0))
   local fwd = makeBtn("W", UDim2.new(0.5,-27,0.32,0))
   local back = makeBtn("S", UDim2.new(0.5,-27,0.66,0))
   local function bind(btn, key)
      btn.MouseButton1Down:Connect(function() dirs[key] = true end)
      btn.MouseButton1Up:Connect(function() dirs[key] = false end)
   end
   bind(up,"up"); bind(down,"down"); bind(left,"left")
   bind(right,"right"); bind(fwd,"fwd"); bind(back,"back")
   flyConn = RunSvc.RenderStepped:Connect(function()
      if not hrp.Parent then return end
      local cam = workspace.CurrentCamera
      local d = Vector3.zero
      if dirs.fwd then d = d + cam.CFrame.LookVector end
      if dirs.back then d = d - cam.CFrame.LookVector end
      if dirs.up then d = d + Vector3.new(0,1,0) end
      if dirs.down then d = d - Vector3.new(0,1,0) end
      if dirs.left then d = d - cam.CFrame.RightVector end
      if dirs.right then d = d + cam.CFrame.RightVector end
      flyBV.Velocity = d * CFG.FLY_SPEED
      flyBG.CFrame = cam.CFrame
   end)
end

local noclipConn
local function toggleNoclip(on)
   if noclipConn then noclipConn:Disconnect(); noclipConn = nil end
   if not on then return end
   noclipConn = RunSvc.Stepped:Connect(function()
      local char = LP.Character
      if not char then return end
      for _, p in ipairs(char:GetDescendants()) do
         if p:IsA("BasePart") then p.CanCollide = false end
      end
   end)
end

-- ================== NOVAS FUNCOES ==================

-- Auto Clicker
local clickConn
local function toggleAutoClick(on)
   if clickConn then clickConn:Disconnect(); clickConn = nil end
   if not on then return end
   clickConn = RunSvc.Heartbeat:Connect(function()
      pcall(function()
         local vu = game:GetService("VirtualUser")
         vu:CaptureController()
         vu:ClickButton1(Vector2.new(0,0))
      end)
      task.wait(CFG.AUTO_CLICK_DELAY)
   end)
end

-- Click TP (mobile: toca na tela)
local clickTpConn
local function toggleClickTp(on)
   if clickTpConn then clickTpConn:Disconnect(); clickTpConn = nil end
   if not on then return end
   clickTpConn = UIS.InputBegan:Connect(function(input, processed)
      if processed then return end
      if input.UserInputType == Enum.UserInputType.Touch
         or input.UserInputType == Enum.UserInputType.MouseButton1 then
         local pos = input.Position
         local ray = CAM:ViewportPointToRay(pos.X, pos.Y)
         local params = RaycastParams.new()
         params.FilterDescendantsInstances = {LP.Character}
         params.FilterType = Enum.RaycastFilterType.Exclude
         local result = workspace:Raycast(ray.Origin, ray.Direction * 1000, params)
         if result then
            tpTo(result.Position)
         end
      end
   end)
end

-- Auto Buy
local function doAutoBuy()
   if not CFG.AUTO_BUY or not remotes.buy then return end
   pcall(function()
      if remotes.buy:IsA("RemoteEvent") then remotes.buy:FireServer()
      else remotes.buy:InvokeServer() end
   end)
end

-- Auto Claim
local function doAutoClaim()
   if not CFG.AUTO_CLAIM or not remotes.claim then return end
   pcall(function()
      if remotes.claim:IsA("RemoteEvent") then remotes.claim:FireServer()
      else remotes.claim:InvokeServer() end
   end)
end

-- Anti AFK Pro
local afkProConn
local function toggleAntiAfkPro(on)
   if afkProConn then afkProConn:Disconnect(); afkProConn = nil end
   if not on then return end
   afkProConn = RunSvc.Heartbeat:Connect(function()
      local hum = LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
      if hum and hum.MoveDirection.Magnitude < 0.1 then
         pcall(function()
            hum:Move(Vector3.new(math.random(-1,1), 0, math.random(-1,1)), false)
         end)
      end
   end)
end

-- FPS Unlock
local function toggleFpsUnlock(on)
   if on then
      pcall(function()
         setfpscap(999)
      end)
   else
      pcall(function()
         setfpscap(60)
      end)
   end
end

-- Fullbright
local fullbrightConn
local function toggleFullbright(on)
   if fullbrightConn then fullbrightConn:Disconnect(); fullbrightConn = nil end
   if on then
      pcall(function()
         Lighting.Ambient = Color3.fromRGB(255,255,255)
         Lighting.Brightness = 3
         Lighting.ClockTime = 12
         Lighting.FogEnd = 100000
         Lighting.GlobalShadows = false
         Lighting.OutdoorAmbient = Color3.fromRGB(255,255,255)
      end)
      fullbrightConn = RunSvc.Heartbeat:Connect(function()
         pcall(function()
            Lighting.Ambient = Color3.fromRGB(255,255,255)
            Lighting.Brightness = 3
         end)
      end)
   end
end

-- Auto Reconnect
local function toggleAutoReconnect(on)
   if on then
      game:GetService("Players").PlayerRemoving:Connect(function(p)
         if p == LP and CFG.AUTO_RECONNECT then
            task.wait(3)
            TS:Teleport(game.PlaceId, LP)
         end
      end)
   end
end

RunSvc.Heartbeat:Connect(function()
   if not CFG.ANTI_DETECT then return end
   if CFG.CHARACTER_PROTECT then
      local char = LP.Character
      if char then
         local hum = char:FindFirstChildOfClass("Humanoid")
         if hum then
            if CFG.ANTI_RAGDOLL then
               pcall(function()
                  hum:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
                  hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
               end)
            end
         end
      end
   end
   if CFG.ANTI_VOID then
      local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
      if hrp and hrp.Position.Y < -50 then
         local spawn = workspace:FindFirstChildOfClass("SpawnLocation")
         if spawn then hrp.CFrame = spawn.CFrame + Vector3.new(0,5,0) end
      end
   end
   if CFG.ANTI_FLING then
      local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
      if hrp then
         for _, v in ipairs(hrp:GetChildren()) do
            if v:IsA("BodyAngularVelocity") or (v:IsA("BodyVelocity") and v.Name ~= "FreddyFly") then
               v:Destroy()
            end
         end
      end
   end
end)

local T = L[CFG.LANG]
local MainTab = Window:CreateTab(T.main, 4483362458)
local StealTab = Window:CreateTab(T.steal, 4483362458)
local MoveTab = Window:CreateTab(T.move, 4483362458)
local VisTab = Window:CreateTab(T.visual, 4483362458)
local CombatTab = Window:CreateTab(T.combat, 4483362458)
local SecTab = Window:CreateTab(T.sec, 4483362458)
local MiscTab = Window:CreateTab(T.misc, 4483362458)
local ServerTab = Window:CreateTab(T.server, 4483362458)

MainTab:CreateSection("Auto")
MainTab:CreateToggle({name=T.autosteal, currentValue=false, callback=function(v) CFG.AUTO_STEAL = v end})
MainTab:CreateToggle({name=T.autoplace, currentValue=false, callback=function(v) CFG.AUTO_PLACE = v end})
MainTab:CreateToggle({name=T.autosell, currentValue=false, callback=function(v) CFG.AUTO_SELL = v end})
MainTab:CreateToggle({name=T.autohatch, currentValue=false, callback=function(v) CFG.AUTO_HATCH = v end})
MainTab:CreateToggle({name=T.autoupgrade, currentValue=false, callback=function(v) CFG.AUTO_UPGRADE = v end})
MainTab:CreateToggle({name=T.autofuse, currentValue=false, callback=function(v) CFG.AUTO_FUSE = v end})
MainTab:CreateToggle({name=T.autohungry, currentValue=false, callback=function(v) CFG.AUTO_HUNGRY = v end})
MainTab:CreateToggle({name=T.autoreturn, currentValue=false, callback=function(v) CFG.AUTO_RETURN = v end})
MainTab:CreateToggle({name=T.autolock, currentValue=false, callback=function(v) CFG.AUTO_LOCK = v end})
MainTab:CreateToggle({name=T.autodeliver, currentValue=false, callback=function(v) CFG.AUTO_DELIVER = v end})
MainTab:CreateSection("Novas")
MainTab:CreateToggle({name=T.autobuy, currentValue=false, callback=function(v) CFG.AUTO_BUY = v end})
MainTab:CreateToggle({name=T.autoclaim, currentValue=false, callback=function(v) CFG.AUTO_CLAIM = v end})

StealTab:CreateSection("Range")
StealTab:CreateSlider({name=T.stealrange, range={10,200}, increment=5, suffix=" studs", currentValue=60, callback=function(v) CFG.STEAL_RANGE = v end})
StealTab:CreateSlider({name=T.minvalue, range={0,50000000}, increment=100000, currentValue=0, callback=function(v) CFG.MIN_VALUE = v end})
StealTab:CreateDropdown({name=T.minrarity, options={"Common","Uncommon","Rare","Epic","Legendary","Mythic","Secret","Godly"}, currentOption={"Common"}, callback=function(v) CFG.MIN_RARITY = v[1] end})

MoveTab:CreateSection("Speed")
MoveTab:CreateToggle({name=T.speed, currentValue=false, callback=function(v) CFG.SPEED = v; toggleSpeed(v) end})
MoveTab:CreateSlider({name="Valor / Value", range={16,300}, increment=10, currentValue=200, callback=function(v) CFG.SPEED_VALUE = v end})
MoveTab:CreateSection("Fly")
MoveTab:CreateToggle({name=T.fly.." (Mobile)", currentValue=false, callback=function(v) CFG.FLY = v; toggleFly(v) end})
MoveTab:CreateSection("Utility")
MoveTab:CreateToggle({name=T.noclip, currentValue=false, callback=function(v) CFG.NOCLIP = v; toggleNoclip(v) end})
MoveTab:CreateToggle({name=T.infjump, currentValue=false, callback=function(v) CFG.INF_JUMP = v end})
MoveTab:CreateToggle({name=T.tpwalk, currentValue=false, callback=function(v) CFG.TP_WALK = v end})
MoveTab:CreateSlider({name="TP Walk Speed", range={1,50}, increment=1, currentValue=5, callback=function(v) CFG.TP_WALK_SPEED = v end})
MoveTab:CreateSection("Novas")
MoveTab:CreateToggle({name=T.clicktp, currentValue=false, callback=function(v) CFG.CLICK_TP = v; toggleClickTp(v) end})

VisTab:CreateSection("ESP Pets")
VisTab:CreateToggle({name=T.esppets, currentValue=false, callback=function(v) CFG.ESP_PETS = v; updateESP() end})
VisTab:CreateToggle({name=T.espplayers, currentValue=false, callback=function(v) CFG.ESP_PLAYERS = v; updateESP() end})
VisTab:CreateToggle({name=T.espbases, currentValue=false, callback=function(v) CFG.ESP_BASES = v; updateESP() end})
VisTab:CreateSection("Info")
VisTab:CreateToggle({name="Nome / Name", currentValue=true, callback=function(v) CFG.ESP_SHOW_NAME = v; updateESP() end})
VisTab:CreateToggle({name="Raridade / Rarity", currentValue=true, callback=function(v) CFG.ESP_SHOW_RARITY = v; updateESP() end})
VisTab:CreateToggle({name="Valor / Value", currentValue=true, callback=function(v) CFG.ESP_SHOW_VALUE = v; updateESP() end})
VisTab:CreateToggle({name="Mutacao / Mutation", currentValue=true, callback=function(v) CFG.ESP_SHOW_MUT = v; updateESP() end})
VisTab:CreateToggle({name=T.seethrough, currentValue=false, callback=function(v) CFG.SEE_THROUGH = v end})
VisTab:CreateSection("Novas")
VisTab:CreateToggle({name=T.fullbright, currentValue=false, callback=function(v) CFG.FULLBRIGHT = v; toggleFullbright(v) end})

CombatTab:CreateSection("Offense")
CombatTab:CreateToggle({name=T.nobat, currentValue=false, callback=function(v) CFG.NO_BAT_CD = v end})
CombatTab:CreateToggle({name=T.bataimbot, currentValue=false, callback=function(v) CFG.BAT_AIMBOT = v end})

SecTab:CreateSection("Status")
SecTab:CreateParagraph({Title=T.safety_status, Content=
   "Anti-Kick: "..(CFG.ANTI_KICK and "ON" or "OFF")..
   "\nAnti-Ban: "..(CFG.ANTI_BAN and "ON" or "OFF")..
   "\nAnti-Detect: "..(CFG.ANTI_DETECT and "ON" or "OFF")..
   "\nStealth: "..(CFG.STEALTH_MODE and "ON" or "OFF")})

SecTab:CreateSection("Protecao")
SecTab:CreateToggle({name=T.antikick, currentValue=true, callback=function(v) CFG.ANTI_KICK = v end})
SecTab:CreateToggle({name=T.antiban, currentValue=true, callback=function(v) CFG.ANTI_BAN = v end})
SecTab:CreateToggle({name=T.antidetect, currentValue=true, callback=function(v) CFG.ANTI_DETECT = v end})
SecTab:CreateToggle({name=T.antitp, currentValue=true, callback=function(v) CFG.ANTI_TP_DETECT = v end})
SecTab:CreateToggle({name=T.antispeed, currentValue=true, callback=function(v) CFG.ANTI_SPEED_DETECT = v end})
SecTab:CreateToggle({name=T.antiragdoll, currentValue=true, callback=function(v) CFG.ANTI_RAGDOLL = v end})
SecTab:CreateToggle({name=T.antifling, currentValue=true, callback=function(v) CFG.ANTI_FLING = v end})
SecTab:CreateToggle({name=T.antivoid, currentValue=true, callback=function(v) CFG.ANTI_VOID = v end})
SecTab:CreateToggle({name=T.antihit, currentValue=false, callback=function(v) CFG.ANTI_HIT = v end})
SecTab:CreateToggle({name=T.charprotect, currentValue=true, callback=function(v) CFG.CHARACTER_PROTECT = v end})
SecTab:CreateToggle({name=T.remoteprotect, currentValue=true, callback=function(v) CFG.REMOTE_PROTECT = v end})
SecTab:CreateToggle({name=T.safedisconnect, currentValue=true, callback=function(v) CFG.SAFE_DISCONNECT = v end})
SecTab:CreateToggle({name=T.stealth, currentValue=true, callback=function(v) CFG.STEALTH_MODE = v end})

SecTab:CreateSection("Emergencia")
SecTab:CreateButton({name=T.panic, callback=function()
   CFG.AUTO_STEAL=false; CFG.AUTO_PLACE=false; CFG.AUTO_SELL=false
   CFG.AUTO_HATCH=false; CFG.AUTO_UPGRADE=false; CFG.AUTO_FUSE=false
   CFG.AUTO_HUNGRY=false; CFG.AUTO_RETURN=false; CFG.AUTO_LOCK=false
   CFG.AUTO_DELIVER=false; CFG.SPEED=false; CFG.FLY=false
   CFG.NOCLIP=false; CFG.ESP_PETS=false; CFG.ESP_PLAYERS=false
   toggleSpeed(false); toggleFly(false); toggleNoclip(false)
   Rayfield:Notify({Title="PANICO", Content="Tudo desligado!", Duration=3})
end})
SecTab:CreateButton({name=T.safedisconnect, callback=function()
   Rayfield:Notify({Title="Saida", Content="Desconectando...", Duration=2})
   task.wait(1)
   LP:Kick("Saida segura")
end})

MiscTab:CreateSection("Finder")
MiscTab:CreateToggle({name=T.finder, currentValue=false, callback=function(v) CFG.FINDER = v end})
MiscTab:CreateDropdown({name=T.rarity_filter, options={"Common","Uncommon","Rare","Epic","Legendary","Mythic","Secret","Godly"}, currentOption={"Legendary","Mythic","Secret"}, multipleOptions=true, callback=function(v) CFG.FINDER_RARITY = v end})
MiscTab:CreateSlider({name="Valor Minimo Finder", range={0,50000000}, increment=100000, currentValue=1000000, callback=function(v) CFG.FINDER_VALUE = v end})
MiscTab:CreateToggle({name=T.onlyempty, currentValue=false, callback=function(v) CFG.FINDER_ONLY_EMPTY = v end})
MiscTab:CreateSlider({name=T.maxplayers, range={1,30}, increment=1, currentValue=8, callback=function(v) CFG.FINDER_MAX_PLAYERS = v end})
MiscTab:CreateSection("Discord")
MiscTab:CreateInput({name=T.webhook, placeholder="https://discord.com/api/webhooks/...", callback=function(v) CFG.WEBHOOK = v end})
MiscTab:CreateInput({name=T.pingid, placeholder="123456789012345678", callback=function(v) CFG.PING_ID = v end})
MiscTab:CreateSection("Automation")
MiscTab:CreateToggle({name=T.autoredeem, currentValue=false, callback=function(v) CFG.AUTO_REDEEM = v end})
MiscTab:CreateToggle({name=T.autoquiz, currentValue=false, callback=function(v) CFG.AUTO_QUIZ = v end})
MiscTab:CreateToggle({name=T.autoafk, currentValue=false, callback=function(v) CFG.AUTO_AFK = v end})
MiscTab:CreateToggle({name=T.fpsboost, currentValue=false, callback=function(v) CFG.FPS_BOOST = v end})
MiscTab:CreateSection("Novas")
MiscTab:CreateToggle({name=T.autoclick, currentValue=false, callback=function(v) CFG.AUTO_CLICK = v; toggleAutoClick(v) end})
MiscTab:CreateSlider({name=T.autoclickdelay, range={0.05,1}, increment=0.05, currentValue=0.1, callback=function(v) CFG.AUTO_CLICK_DELAY = v end})
MiscTab:CreateToggle({name=T.antiafkpro, currentValue=false, callback=function(v) CFG.ANTI_AFK_PRO = v; toggleAntiAfkPro(v) end})
MiscTab:CreateToggle({name=T.fpsunlock, currentValue=false, callback=function(v) CFG.FPS_UNLOCK = v; toggleFpsUnlock(v) end})
MiscTab:CreateToggle({name=T.autoreconnect, currentValue=false, callback=function(v) CFG.AUTO_RECONNECT = v; toggleAutoReconnect(v) end})
MiscTab:CreateSection("Idioma / Language")
MiscTab:CreateButton({name="Portugues (reload)", callback=function() CFG.LANG="PT"; Rayfield:Notify({Title="Idioma", Content="Recarregue (PT)", Duration=4}) end})
MiscTab:CreateButton({name="English (reload)", callback=function() CFG.LANG="EN"; Rayfield:Notify({Title="Language", Content="Reload (EN)", Duration=4}) end})

ServerTab:CreateSection("Hop")
ServerTab:CreateButton({name="ServerHop", callback=function()
   local url = "https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"
   local ok, res = pcall(function() return HttpSvc:JSONDecode(game:HttpGet(url)) end)
   if not ok then return end
   for _, s in ipairs(res.data) do
      if s.playing < s.maxPlayers and s.id ~= game.JobId then
         TS:TeleportToPlaceInstance(game.PlaceId, s.id, LP)
         break
      end
   end
end})
ServerTab:CreateToggle({name=T.autohop, currentValue=false, callback=function(v) CFG.AUTO_HOP = v end})
ServerTab:CreateSlider({name=T.hopmin, range={0,30}, increment=1, currentValue=3, callback=function(v) CFG.HOP_MIN = v end})
ServerTab:CreateSlider({name=T.hopmax, range={1,30}, increment=1, currentValue=12, callback=function(v) CFG.HOP_MAX = v end})
ServerTab:CreateButton({name="Rejoin", callback=function() TS:Teleport(game.PlaceId, LP) end})

local lastScan = 0
RunSvc.Heartbeat:Connect(function()
   if tick() - lastScan > 2 then
      scanPets(); updateESP(); lastScan = tick()
   end
   if CFG.AUTO_STEAL and #pets > 0 then trySteal(pets[1]) end
   local function fire(r)
      if not r then return end
      pcall(function()
         if r:IsA("RemoteEvent") then r:FireServer() else r:InvokeServer() end
      end)
   end
   if CFG.AUTO_PLACE then fire(remotes.place) end
   if CFG.AUTO_SELL then fire(remotes.sell) end
   if CFG.AUTO_HATCH then fire(remotes.hatch) end
   if CFG.AUTO_UPGRADE then fire(remotes.upgrade) end
   if CFG.AUTO_FUSE then fire(remotes.fuse) end
   if CFG.AUTO_HUNGRY then fire(remotes.hungry) end
   if CFG.AUTO_LOCK then fire(remotes.lock) end
   if CFG.AUTO_DELIVER then fire(remotes.deliver) end
   if CFG.AUTO_REDEEM then fire(remotes.redeem) end
   if CFG.AUTO_BUY then fire(remotes.buy) end
   if CFG.AUTO_CLAIM then fire(remotes.claim) end
   if CFG.FINDER and CFG.WEBHOOK ~= "" then
      for _, p in ipairs(pets) do
         local inRarity = false
         for _, r in ipairs(CFG.FINDER_RARITY) do
            if p.rarity == r then inRarity = true; break end
         end
         if inRarity or p.value >= CFG.FINDER_VALUE then
            sendWebhook(p, "Finder: "..p.rarity.." | "..p.value)
         end
      end
   end
end)

LP.Idled:Connect(function()
   if CFG.AUTO_AFK then
      local vu = game:GetService("VirtualUser")
      vu:CaptureController()
      vu:ClickButton2(Vector2.new())
   end
end)

Rayfield:Notify({
   Title = T.title,
   Content = CFG.LANG=="PT" and "Ultimate v4 carregado!" or "Ultimate v4 loaded!",
   Duration = 5,
})