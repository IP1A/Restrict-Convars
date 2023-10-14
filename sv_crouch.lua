-- https://github.com/IP1A/Small-scripts/tree/main
-- Выключает звуки ходьбы в присядку
-- Disables footstep sounds when crouching
local function NoSound(ply)
    if ply:Crouching() then return true end 
end

hook.Add('PlayerFootstep', "DisableCrouchSound", NoSound)
