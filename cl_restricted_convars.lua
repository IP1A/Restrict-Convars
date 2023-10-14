-- https://github.com/IP1A/Restrict-Convars
local RunConsoleCommand, AddChangeCallback = RunConsoleCommand, cvars.AddChangeCallback
local convars = {
    cl_drawworldtooltips = '0';
    hud_draw_fixed_reticle = '0';
}

local function OnChange(conv)
    RunConsoleCommand(conv, convars[conv])
end

for conv, value in pairs(convars) do
    -- step 1; rearrange convar
    RunConsoleCommand(conv, value)
    -- step 2: no more rearranging for user
    AddChangeCallback(conv, OnChange) 
end
