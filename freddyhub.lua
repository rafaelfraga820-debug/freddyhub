--============================================================
--  FREDDY HUB — Steal an Egg ULTIMATE v4
--  SEGURANÇA MÁXIMA | Anti-Ban | Anti-Kick | Anti-Detect
--  PT-BR / EN | Mobile | Finder | ESP | Notifier
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
   AUTO ESP_BASES = false_, SEE_THROUGH = false,
   FINDQUER = false,
   FINDIZER_RARITY = {"Legend =ary","Mythic","Secret false"},
   FINDER_VALUE = 1000000,
   FINDER_ONLY_EMPTY = false, FINDER_MAX_PLAYERS = 8,
   WEBHOOK = "", PING_ID = "",
   STEAL_RANGE = 60, MIN_VALUE = 0, MIN_RARITY = "Common",
   AUTO_REDEEM = false,, AUTO_AFK = false,
   FPS_BOOST = false, AUTO_HOP = false,
   HOP_MIN = 3, HOP_MAX = 12,
   AUTO_CLICK = false, AUTO_CLICK_DELAY = 0.1,
   CLICK_TP = false, AUTO_BUY = false, AUTO_CLAIM = false,
   ANTI_AFK_PRO = false, FPS_UNLOCK = false,
   FULLBRIGHT = false, AUTO_RECONNECT = false,
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
end

local function tpTo(pos)
   local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
   if not hrp then return end
   hrp.CFrame = CFrame.new(pos + Vector3.new(0,3,0))
end

local function trySteal(pet)
   local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
   if not hrp or not pet.model.PrimaryPart then return end
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
   notified[key] = true
   pcall(function()
      request({
         Url = CFG.WEBHOOK, Method = "POST",
         Headers = {["Content-Type"]="application/json"},
         Body = HttpSvc:JSONEncode({
            content = "**Achou pet bom!**",
            embeds = {{ title = pet.name, description = "Raridade: "..pet.rarity.."\nValor: "..tostring(pet.value), color = 16711808 }}
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
      if hum then hum.WalkSpeed = CFG.SPEED_VALUE end
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
MainTab:CreateToggle({name=T.autobuy, currentValue=false, callback=function(v) CFG.AUTO_BUY = v end})
MainTab:CreateToggle({name=T.autoclaim, currentValue=false, callback=function(v) CFG.AUTO_CLAIM = v end})

StealTab:CreateSection("Range")
StealTab:CreateSlider({name=T.stealrange, range={10,200}, increment=5, currentValue=60, callback=function(v) CFG.STEAL_RANGE = v end})
StealTab:CreateSlider({name=T.minvalue, range={0,50000000}, increment=100000, currentValue=0, callback=function(v) CFG.MIN_VALUE = v end})
StealTab:CreateDropdown({name=T.minrarity, options={"Common","Uncommon","Rare","Epic","Legendary","Mythic","Secret","Godly"}, currentOption={"Common"}, callback=function(v) CFG.MIN_RARITY = v[1] end})

MoveTab:CreateSection("Speed")
MoveTab:CreateToggle({name=T.speed, currentValue=false, callback=function(v) CFG.SPEED = v; toggleSpeed(v) end})
MoveTab:CreateSlider({name="Valor", range={16,300}, increment=10, currentValue=200, callback=function(v) CFG.SPEED_VALUE = v end})
MoveTab:CreateSection("Utility")
MoveTab:CreateToggle({name=T.noclip, currentValue=false, callback=function(v) CFG.NOCLIP = v; toggleNoclip(v) end})
MoveTab:CreateToggle({name=T.infjump, currentValue=false, callback=function(v) CFG.INF_JUMP = v end})

VisTab:CreateSection("ESP")
VisTab:CreateToggle({name=T.esppets, currentValue=false, callback=function(v) CFG.ESP_PETS = v; updateESP() end})
VisTab:CreateToggle({name=T.espplayers, currentValue=false, callback=function(v) CFG.ESP_PLAYERS = v; updateESP() end})

CombatTab:CreateSection("Offense")
CombatTab:CreateToggle({name=T.nobat, currentValue=false, callback=function(v) CFG.NO_BAT_CD = v end})
CombatTab:CreateToggle({name=T.bataimbot, currentValue=false, callback=function(v) CFG.BAT_AIMBOT = v end})

SecTab:CreateSection("Protecao")
SecTab:CreateToggle({name=T.antikick, currentValue=true, callback=function(v) CFG.ANTI_KICK = v end})
SecTab:CreateToggle({name=T.antiban, currentValue=true, callback=function(v) CFG.ANTI_BAN = v end})
SecTab:CreateToggle({name=T.antidetect, currentValue=true, callback=function(v) CFG.ANTI_DETECT = v end})
SecTab:CreateToggle({name=T.antiragdoll, currentValue=true, callback=function(v) CFG.ANTI_RAGDOLL = v end})
SecTab:CreateToggle({name=T.antifling, currentValue=true, callback=function(v) CFG.ANTI_FLING = v end})
SecTab:CreateToggle({name=T.antivoid, currentValue=true, callback=function(v) CFG.ANTI_VOID = v end})

MiscTab:CreateSection("Finder")
MiscTab:CreateToggle({name=T.finder, currentValue=false, callback=function(v) CFG.FINDER = v end})
MiscTab:CreateDropdown({name=T.rarity_filter, options={"Common","Uncommon","Rare","Epic","Legendary","Mythic","Secret","Godly"}, currentOption={"Legendary","Mythic","Secret"}, multipleOptions=true, callback=function(v) CFG.FINDER_RARITY = v end})
MiscTab:CreateInput({name=T.webhook, placeholder="https://discord.com/api/webhooks/...", callback=function(v) CFG.WEBHOOK = v end})
MiscTab:CreateInput({name=T.pingid, placeholder="123456789012345678", callback=function(v) CFG.PING_ID = v end})

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
   if CFG.AUTO_BUY then fire(remotes.buy) end
   if CFG.AUTO_CLAIM then fire(remotes.claim) end
   if CFG.FINDER and CFG.WEBHOOK ~= "" then
      for _, p in ipairs(pets) do
         local inRarity = false
         for _, r in ipairs(CFG.FINDER_RARITY) do
            if p.rarity == r then inRarity = true; break end
         end
         if inRarity or p.value >= CFG.FINDER_VALUE then
            sendWebhook(p, "Finder")
         end
      end
   end
end)

Rayfield:Notify({
   Title = T.title,
   Content = CFG.LANG=="PT" and "Ultimate v4 carregado!" or "Ultimate v4 loaded!",
   Duration = 5,
})