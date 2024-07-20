local NATIVES <const> = require("lib\\natives2845")

local text = "PED CONFIG FLAGS:"
local playerPed = player.player_ped()


local function create_tick_handler(handler)
    return menu.create_thread(function()
        while true do
            handler()
            system.yield()
        end
    end)
end


local base_flags = {}

-- Get initial set of flags
for i = 0, 1000 do
    if NATIVES.PED.GET_PED_CONFIG_FLAG(playerPed, i, true) then
        base_flags[i] = true
    end
end

menu.clear_all_notifications()

-- Main loop to continuously check for new flags
create_tick_handler(function()
    for i = 0, 1000 do
        if NATIVES.PED.GET_PED_CONFIG_FLAG(playerPed, i, true) then
            if not base_flags[i] then
                menu.notify("New ped config flag: " .. i, "", 6, 0)
            end
        end
    end
end)