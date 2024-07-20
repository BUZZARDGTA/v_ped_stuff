local NATIVES <const> = require("lib\\natives2845")

local text = "PED RESET FLAGS:"
local playerPed = player.player_ped()

for i = 0, 1000 do
    -- https://alloc8or.re/gta5/nativedb/?n=0xC1E8A365BF3B29F2
    if NATIVES.PED.GET_PED_RESET_FLAG(playerPed, i) then
        text = text .. "\n" .. i
    end
end

menu.clear_all_notifications()
menu.notify(text, "", 6, 0)

print(text)

menu.exit()
