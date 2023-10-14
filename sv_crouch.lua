
local function NoSound(ply)
    if ply:Crouching() then return true end 
end

hook.Add('PlayerFootstep', "DisableCrouchSound", NoSound)
