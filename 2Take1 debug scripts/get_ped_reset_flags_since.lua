local NATIVES <const> = require("lib\\natives2845")


local function create_tick_handler(handler)
    return menu.create_thread(function()
        while true do
            handler()
            system.yield()
        end
    end)
end


local playerPed = player.player_ped()
local base_flags = {}

-- Get initial set of flags
for i = 0, 1000 do
    if NATIVES.PED.GET_PED_RESET_FLAG(playerPed, i) then
        base_flags[i] = true
    end
end

menu.clear_all_notifications()

-- Main loop to continuously check for new flags
create_tick_handler(function()
    local playerPed = player.player_ped()

    for i = 0, 1000 do
        if NATIVES.PED.GET_PED_RESET_FLAG(playerPed, i) then
            if not base_flags[i] then
                menu.notify("New ped reset flag: " .. i, "", 6, 0)
            end
        end
    end
end)
