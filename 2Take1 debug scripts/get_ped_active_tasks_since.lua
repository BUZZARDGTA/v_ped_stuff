local NATIVES <const> = require("lib\\natives2845")

local text = "PED ACTIVE TASKS:"
local playerPed = player.player_ped()


local function create_tick_handler(handler)
    return menu.create_thread(function()
        while true do
            handler()
            system.yield()
        end
    end)
end


local base_tasks = {}

-- Get initial set of tasks
for i = 0, 1000 do
    if NATIVES.TASK.GET_IS_TASK_ACTIVE(playerPed, i) then
        base_tasks[i] = true
    end
end

menu.clear_all_notifications()

-- Main loop to continuously check for new tasks
create_tick_handler(function()
    for i = 0, 1000 do
        if NATIVES.TASK.GET_IS_TASK_ACTIVE(playerPed, i) then
            if not base_tasks[i] then
                menu.notify("New ped active task: " .. i, "", 6, 0)
            end
        end
    end
end)
