local Owner = {
	2834470639
	}

local function AdminCheck()
    for i,v in pairs(game:GetService('Workspace').Players:GetChildren()) do
        if v:FindFirstChild('UpperTorso') then
            if not v:FindFirstChild('UpperTorso'):FindFirstChild('OriginalSize') then
                local plrcheck = game:GetService('Players'):FindFirstChild(v.Name)
                if plrcheck then
		   local plrID = game:GetService('Players'):FindFirstChild(v.Name).UserId
                    if table.find(Owner, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🪐]' .. game.Players[v.Name].DisplayName)
                        end
              	    end
                end
            end
        end
    end
end
local succ, errr = pcall(AdminCheck)
