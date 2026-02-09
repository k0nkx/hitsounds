local CoreGui = game:GetService("CoreGui")

local url = "https://github.com/k0nkx/hitsounds/raw/refs/heads/main/rust.ogg"
local file = "rust.ogg"

if not isfile(file) then
    writefile(file, game:HttpGet(url))
end

local sound = Instance.new("Sound")
sound.SoundId = getcustomasset(file)
sound.Volume = 1
sound.Parent = CoreGui
sound:Play()

sound.Ended:Connect(function()
    sound:Destroy()
end)
