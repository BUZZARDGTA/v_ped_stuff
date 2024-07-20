local NATIVES <const> = require("lib\\natives2845")


local text = "PED CONFIG FLAGS:"
local playerPed = player.player_ped()

for i = 0, 1000 do
    -- https://alloc8or.re/gta5/nativedb/?n=0x1913FE4CBF41C463
    if NATIVES.PED.GET_PED_CONFIG_FLAG(playerPed, i, true) then
        text = text .. "\n" .. i
    end
end

menu.clear_all_notifications()
menu.notify(text, "", 6, 0)

print(text)

menu.exit()
