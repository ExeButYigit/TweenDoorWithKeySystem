local Door = script.Parent

local TweenService = game:GetService("TweenService")
local Info = TweenInfo.new(0.5,Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)

local DoorOpenPosition = script.Parent.Parent.OpenedPosition
local DoorClosePosition = script.Parent.Parent.ClosedPosition

local DoorOpenTween = TweenService:Create(Door, Info, {CFrame = DoorOpenPosition.CFrame})
local DoorCloseTween = TweenService:Create(Door, Info, {CFrame = DoorClosePosition.CFrame})

script.Parent.Touched:Connect(function(hit)
	if hit and 	hit.Parent.Name == "ManagerRoomKey" then
		script.Sound:Play()
		wait(1)
        DoorOpenTween:Play()
		hit.Parent:Destroy()
	end
end)
