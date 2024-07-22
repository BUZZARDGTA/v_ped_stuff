local NATIVES <const> = require("lib\\natives2845")


local SCRIPT_NAME <const> = "debug_PCF.lua"
local SCRIPT_TITLE <const> = "DEBUG (PCF)"


local function create_tick_handler(handler)
    return menu.create_thread(function()
        while true do
            handler()
            system.yield()
        end
    end)
end


-- === Main Menu Features === --
local myRootMenu_Feat = menu.add_feature(SCRIPT_TITLE, "parent", 0)

local enable_Feat = menu.add_feature("Enable",  "toggle", myRootMenu_Feat.id)
enable_Feat.hint = "Enable or Disable."

local min_Feat   = menu.add_feature("Min Value",  "autoaction_value_i", myRootMenu_Feat.id)
min_Feat.hint = "The min flag value."
min_Feat.min = 0
min_Feat.max = 1000
min_Feat.value = 0

local max_Feat   = menu.add_feature("Max Value",  "autoaction_value_i", myRootMenu_Feat.id)
max_Feat.hint = "The max flag value. (max-known one is 461)"
max_Feat.min = 0
max_Feat.max = 1000
max_Feat.value = 1000

local boolean_Feat = menu.add_feature("Boolean", "autoaction_value_str", myRootMenu_Feat.id)
boolean_Feat.hint = "Do you want to set the flag or removes it?"
boolean_Feat:set_str_data({
    "true",
    "false"
})
boolean_Feat.value = 0

local delay_Feat = menu.add_feature("Delay (ms)", "autoaction_value_i", myRootMenu_Feat.id)
delay_Feat.hint = 'The delay after setting the selected flag(s).\n\nSet it to "-1" for no delay.'
delay_Feat.min = -1
delay_Feat.max = 1000
delay_Feat.value = -1


create_tick_handler(function()
    local playerPed = player.player_ped()

    if enable_Feat.on then
        for i = min_Feat.value, max_Feat.value do
            NATIVES.PED.SET_PED_CONFIG_FLAG(playerPed, i, (boolean_Feat:get_str_data()[boolean_Feat.value + 1] == "true"))
        end

        if delay_Feat.value ~= -1 then
            system.yield(delay_Feat.value)
        end
    end
end)
