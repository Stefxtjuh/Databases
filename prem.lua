local PremStarData = {
 --[[[2834470639] = true,]] -- hecate
}

local PremStarLegendData = {
[587438679] = true, --jaroah
}

local function loademoji()
    for i,v in pairs(game:GetService('Workspace').Players:GetChildren()) do
        if v:FindFirstChild('UpperTorso') then
            if not v:FindFirstChild('UpperTorso'):FindFirstChild('OriginalSize') then
                local plrcheck = game:GetService('Players'):FindFirstChild(v.Name)
                if plrcheck then
                    local plrID = game:GetService('Players'):FindFirstChild(v.Name).UserId
                    if plrID == 350167333 then --stef (owner)
                        if v:FindFirstChildWhichIsA('Humanoid') then           
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🪐]' .. game.Players[v.Name].DisplayName) 
                        end
                    elseif plrID == 2834470639 then
                        if v:FindFirstChildWhichIsA('Humanoid') then           
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🌈+🏳‍🌈+💅]'.. game.Players[v.Name].DisplayName) 
                        end
            
                       elseif table.find(PremStarLegendData, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]' .. game.Players[v.Name].DisplayName)
                        end
            
                    elseif table.find(premdata, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]' .. game.Players[v.Name].DisplayName)
                        end
                    end
                end
            end
        end
    end
end

local succ, errr = pcall(loademoji)
