local NATIVES <const> = require("lib\\natives2845")


local text = "PED ACTIVE TASKS:"
local playerPed = player.player_ped()

for i = 0, 1000 do
    -- https://alloc8or.re/gta5/doc/enums/eTaskTypeIndex.txt
    if NATIVES.TASK.GET_IS_TASK_ACTIVE(playerPed, i) then
        text = text .. "\n" .. i
    end
end

menu.clear_all_notifications()
menu.notify(text, "", 6, 0)

print(text)

menu.exit()
