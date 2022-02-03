local OwnerAndAdmins = {
350167333,
}


local premlol = {
	2902144481,
	2834470639,
}


local starlegend = {
2861039011
}





local function main()
	local success, err = pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefxtjuh/Databases/main/starleg.lua"))()
	end)

	for i,v in pairs(game.Players:GetChildren()) do
		if table.find(OwnerAndAdmins,v.UserId) then
			if v.Character then
				v.Character:FindFirstChild("Humanoid").DisplayName = "[🪐]"..v.DisplayName
			end
	
		elseif table.find(starlegend,v.UserId) then
			if v.Character then
				v.Character:FindFirstChild("Humanoid").DisplayName = "[🌟]"..v.DisplayName
			end
		elseif table.find(premID,v.UserId) then
			if v.Character then
				v.Character:FindFirstChild("Humanoid").DisplayName = "[⭐]"..v.DisplayName
			end
		else
			if v.Character then
				if not v.Character.Head:FindFirstChild("OriginalSize") then
					v.Character:FindFirstChild("Humanoid").DisplayName = "[📱]"..v.DisplayName
				end
			end
		end
	end
end
local success, err = pcall(main)
if err then print(err) end
return premlol
