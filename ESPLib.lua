local function Chams(parents, parts, color, onlyPlayers)
    local localPlayer = game.Players.LocalPlayer
    local parents = parents or {localPlayer.Name}
	local parts = parts or {"HumanoidRootPart"}
	local color = color or Color3.fromRGB(62, 74, 88)
	local onlyPlayers = onlyPlayers or false
    local faces = {"Front", "Top", "Back", "Bottom", "Right", "Left"}
    local instances = {}
	
	if onlyPlayers then
        for playerIndex, player in pairs(game.Players:GetPlayers()) do
            if player ~= localPlayer then
                for playerDescendantIndex, playerDescendant in pairs(player.Character:GetDescendants()) do
                    if table.find(parts, playerDescendant.Name) then
                        for faceIndex, face in pairs(faces) do
                            local surface = Instance.new("SurfaceGui", playerDescendant)
                            local frame = Instance.new("Frame", surface)
                
                            surface.Adornee = playerDescendant
                            surface.AlwaysOnTop = true
                            surface.Face = Enum.NormalId[face]
                            surface.Name = face
                            surface.ResetOnSpawn = false
                
                            frame.BackgroundColor3 = color
                            frame.BackgroundTransparency = 0.9
                            frame.Name = face
                            frame.Size = UDim2.new(1, 0, 1, 0)
                
                            table.insert(instances, surface)
                        end
                    end
                end
            end
        end
    else
        for descendantIndex, descendant in pairs(game.Workspace:GetDescendants()) do
            if descendant:IsA("Part") and table.find(parts, descendant.Name) then
                for parentIndex, parent in pairs(parents) do
                    if parent == descendant.Parent.Name then
                        if table.find(parts, descendant.Name) then
                            for faceIndex, face in pairs(faces) do
                                local surface = Instance.new("SurfaceGui", descendant)
                                local frame = Instance.new("Frame", surface)
                        
                                surface.Adornee = descendant
                                surface.AlwaysOnTop = true
                                surface.Face = Enum.NormalId[face]
                                surface.Name = face
                                surface.ResetOnSpawn = false
                    
                                frame.BackgroundColor3 = color
                                frame.BackgroundTransparency = 0.9
                                frame.Name = face
                                frame.Size = UDim2.new(1, 0, 1, 0)
                        
                                table.insert(instances, surface)
                            end
                        end
                    end
                end
            end
        end
    end

    return instances
end
