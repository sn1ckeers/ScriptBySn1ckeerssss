local LocalPlayer = game:GetService("Players").LocalPlayer
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

-- Menu

local colors = {
    SchemeColor = Color3.fromRGB(38, 20, 43),
    Background = Color3.fromRGB(67, 38, 80),
    Header = Color3.fromRGB(45, 27, 56),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(55, 30, 63)
}

local Window = Library.CreateLib("Script By sn1ckeerssss [ v1 ]", colors)
local Movement = Window:NewTab("Movement")
local SectionSpeed = Movement:NewSection("Speed")
local SectionJump = Movement:NewSection("Jump")

-- Walk speed
local PlayerSpeed = 0

SectionSpeed:NewSlider("player speed", "None", 500, 16, function(speed)
    PlayerSpeed = speed
end)

SectionSpeed:NewToggle("toggle speed", "None", function(state)
    if state then
        LocalPlayer.Character.Humanoid.WalkSpeed = PlayerSpeed
    else
        LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)

-- Jump power

local PlayerJump = 0

SectionJump:NewSlider("player jump", "None", 500, 50, function(jump)
    PlayerJump = jump
end)

SectionJump:NewToggle("toggle jump", "None", function(state)
    if state then
        LocalPlayer.Character.Humanoid.JumpPower = PlayerJump
    else
        LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)