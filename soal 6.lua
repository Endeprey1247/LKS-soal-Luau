--soal 6
--[[game.Players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Connect(function(char)
		local bodyColor = char:WaitForChild("BodyColors")
		if bodyColor.BrickColor == "Medium Brown" then
			plr:Kick()
		end
	end)
end)]]

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Stack = require(ReplicatedStorage:WaitForChild("Stack"))

local s = Stack.new()

s:push("A")

s:push("B")

s:push("C")

print(s:pop())

print(s:pop())

s:push("E")

print(s:pop())

print(s:pop())
