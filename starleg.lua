
local privateXD = {
 2945264137,
}




local function privateXDD()
	for i,v in pairs(game.Players:GetChildren()) do
  	if table.find(privateXD,v.UserId) then
			if v.Character then
				v.Character:FindFirstChild("Humanoid").DisplayName = "[♥]"..v.DisplayName
			end
		end
	end
end

local success,err = pcall(privateXDD)
 
return privaterXD;
