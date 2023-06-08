local CF = CFrame.new() -- Position here.
local Speed = 100 --Studs Per Second

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

TweenService:Create(
    (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart", 9e9),
    TweenInfo.new(Players.LocalPlayer:DistanceFromCharacter(CF.Position)/Speed, Enum.EasingStyle.Linear),
    {CFrame = CF}
):Play()

