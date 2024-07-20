local NATIVES <const> = require("lib\\natives2845")


local SCRIPT_NAME <const> = "DEBUG.lua"
local SCRIPT_TITLE <const> = "DEBUG"


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
min_Feat.min = 1
min_Feat.max = 1000
min_Feat.value = 1

local max_Feat   = menu.add_feature("Max Value",  "autoaction_value_i", myRootMenu_Feat.id)
max_Feat.hint = "The max flag value."
max_Feat.min = 1
max_Feat.max = 1000
max_Feat.value = 1000

local delay_Feat = menu.add_feature("Delay (ms)", "autoaction_value_i", myRootMenu_Feat.id)
delay_Feat.hint = 'The delay after setting the selected flag(s).\n\nSet it to "-1" for no delay.'
delay_Feat.min = -1
delay_Feat.max = 1000
delay_Feat.value = -1


create_tick_handler(function()
    local playerPed = player.player_ped()

    for i = min_Feat.value, max_Feat.value do
        if enable_Feat.on
            and i ~= 0
            and i ~= 1   -- invisible locally but weapon assets visible
            and i ~= 2   -- weapon wheel you cannot select any firearm but you can select a few knifes (not all of them).
            and i ~= 18  -- in first person your weapon camera view is a bit shallower, however it does some weird camera movements restrictions.
            and i ~= 19  -- same then 18 but without the weird camera movements restrictions.
            and i ~= 24  -- Blocks the weapon wheel.
            and i ~= 33  -- Crosshair like when you aim at a dead ped.
            and i ~= 46  -- Prevent ped from jumping
            and i ~= 49  -- shoot 2 bullets/grenades/other stuff from weapons instead of 1, works with any firearms except projectiles
            and i ~= 50  -- ped is walking and shooting faster
            and i ~= 65  -- Forces the ped shooting
            and i ~= 66  -- idk aims little bit more on the left
            and i ~= 69  -- aim weirdly when not aiming (its even better when walking around with a C4/minigun)
            and i ~= 76  -- simulate a sniper hit while aiming with a sniper
            and i ~= 81  -- ragdoll as soon as you move
            and i ~= 83  -- Prevents you from sprinting fast. You sprint but not as fast as possible.
            and i ~= 98 -- When you are aiming the camera is more shallower. To enable you need to set the bitflag while you where already aiming, otherwise it won't work.
            and i ~= 99  -- Weapon Wheel disapear, only able to cycle trough pistol weapons, and camera while aiming is a bit different.
            and i ~= 110 -- weapon locked + lock weapon fire (cannot change your weapon annymore or shooting)
            and i ~= 113 -- PRF_PuttingOnHelmet // When set, the ped is putting on a helmet. DONT SET THIS only query it // Prevents you from driving a vehicle. -- actually tried it again later and it would drives just fine ?
            and i ~= 119 -- idk the weapon is more on the left then usual
            and i ~= 122 -- makes a rappelling noise whenever your ped is falling. also prevents you from ragdol
            and i ~= 125 -- same then 98
            and i ~= 128 -- PRF_BlockWeaponFire // Prevent the ped from shooting a weapon
            and i ~= 134 -- prevents your hands to moves when piloting an helicopter.
            and i ~= 138 -- same then 49 (they doesn't seems to be able to combine for shooting 4 bullets)
            and i ~= 160 -- weapon aiming becomes realllllly slow and movements there are broken too.
            and i ~= 156 -- idk the feeling when aiming around is different, weird things happening, try horning launcher shooting is weird rockets.
            and i ~= 166 -- PRF_MakeHeadInvisble // If set, scale the head of the ped to 0.001
            and i ~= 177 -- PRF_DisableTakeOffParachutePack // Disable taking off the parachute pack
            and i ~= 182 -- walk on air + noclip
            and i ~= 199 -- same then 134
            and i ~= 201 -- prevents you from shooting/throwing objects in a vehicle.
            and i ~= 202 -- while enabled, it sounds like you cannot gain any heigh anymore from walking
            and i ~= 203 -- stumble player and get up
            and i ~= 208 -- first person prevent ped weapon aiming
            and i ~= 243 -- idk it's doing some weird shit especially in first person, it looks down basically.
            and i ~= 246 -- idk aiming slowly and weirdly. maybe see 364
            and i ~= 260 -- first person force aim
            and i ~= 269 -- prevents your ped from moving arms / hands / try on a bike is fun, also while aiming.
            and i ~= 298 -- idk it glitches with ped and radar when walking around, it also forces walking once aiming + movement input received.
            and i ~= 299 -- idk it glitches your hands with a weapon equiped, try shooting and then stop u'll see a weird anim.
            and i ~= 301 -- idk first person 360 spinning loop
            and i ~= 309 -- PRF_DisableInVehicleActions // Prevents ped from doing in vehicle actions like closing door, hotwiring, starting engine, putting on helmet etc
            and i ~= 329 -- mhmm how to document that one ... When you walks, forces the ped to walk in literally front of you directly. Makes it funnier with first person aiming (u'll probably look really amusing to other players)
            and i ~= 332 -- idk it's just glitching your hand in first person view with a weapon aiming
            and i ~= 339 -- PRF_DontQuitMotionAiming // idk it's doing some weird shit when you're aiming it doesn't let you quit aiming.
            and i ~= 360 -- Look at your face now lmfao, only works on a Male char.
            and i ~= 361 -- Prevents you from using the weapon wheel. on a vehicle you are restricted to your pistol
            and i ~= 363 -- PRF_IsClosingVehicleDoor // Ped is closing a vehicle door
            and i ~= 364 -- idk aiming slowly and weirdly. maybe see 246
            and i ~= 365 -- locks weapon wheel selection in a car to the currently selected gun.
            and i ~= 383 -- idk when aiming it's doing some weird shit.
            and i ~= 374 -- first person weird effect on weapon's handling.
            and i ~= 392 and i ~= 435 -- Both of them together, in third person ped is punching the the car's steering wheel, same in first person but you also hear the horning sometimes. It also shakes your cam lmfao
            and i ~= 393 and i ~= 437 -- Both of them together, prevents you from aiming in first person
            and i ~= 395 -- is ped reloading IsReloading
            and i ~= 402 -- your whole ped will go faster. (run, shoot, etc)
            and i ~= 403 -- in first person can't see the pilot helmet vision thingy anymore
            and i ~= 408 -- in first person your weapon is looking higher then usual
            and i ~= 417 -- PRF_DisableMeleeWeaponSelection // Prvents you from selecting a melee weapon.
            and i ~= 439 -- PRF_InvertLookAroundControls // Inverts lookaround controls (right stick / mouse) for this player
        then
            NATIVES.PED.SET_PED_RESET_FLAG(playerPed, i, true)
        end
    end

    if delay_Feat.value ~= -1 then
        system.yield(delay_Feat.value)
    end
end)