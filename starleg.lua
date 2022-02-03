
local PremStarLegendData = {
 587438679,
}




local function starlegend()
	for i,v in pairs(game.Players:GetChildren()) do
  	if table.find(PremStarLegendData,v.UserId) then
			if v.Character then
				v.Character:FindFirstChild("Humanoid").DisplayName = "[🌟]"..v.DisplayName
			end
		end
	end
end

local success,err = pcall(starlegend)
 
