local PremStarData = {
 350167333,
}


local PremStarLegendData = {
 587438679,
}
local OwnerAndMods = {
 350167333,
}




local function main()
	for i,v in pairs(game.Players:GetChildren()) do
		if table.find(PremStarData,v.UserId) then
			if v.Character then
				v.Character:FindFirstChild("Humanoid").DisplayName = "[⭐]"..v.DisplayName
			end
		end
	end
end

local success,err = pcall(main)
 
