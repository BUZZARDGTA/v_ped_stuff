import json
import re

# Function to load the original JSON file
def load_original_json(file_path: str):
    with open(file_path, 'r') as file:
        return json.load(file)

# Function to parse the new data structure
def parse_new_data(new_data_string: str):
    pattern = re.compile(r'(\d+):\s*(.+)')
    new_data = {}
    for match in pattern.findall(new_data_string):
        bitflag = int(match[1])
        communityDescription2 = match[1].strip()
        new_data[key] = {
            "bitflag": bitflag,
            "communityDescription2": communityDescription2
        }
    return new_data

# Function to update the JSON with new data entries
def update_json(original_data: dict[str, int | str], new_data: dict[str, int | str]):
    for key, value in new_data.items():
        if key in original_data:
            if original_data[key]["bitflag"] != value["bitflag"]:
                raise ValueError(f"Bitflag values are not the same for key '{key}': {original_data[key]["bitflag"]} != {value["bitflag"]}")

            original_data[key]["bitflag"] = value["bitflag"]
            original_data[key]["communityDescription1"] = value["communityDescription1"]
        else:
            print(f'Created flag name: "{key}"')
            original_data[key] = {
                "bitflag": value["bitflag"],
                "PedFlagsMeta.psc": "",
                "commands_ped.sch": "",
                "communityDescription1": value["communityDescription1"],
                "communityDescription2": ""
            }


# Paths to files
original_json_path = "updated_output_data.json"
updated_json_path = "updated2_output_data.json"

# Sample new data structure string
new_data_string = '''
1: The weapon assets remain visible while local visibility is restricted.
2: The weapon wheel allows selection of a few knives, but firearms are not available.
18: In first-person view, the weapon camera is slightly shallower, accompanied by unusual camera movement restrictions.
19: Similar to 18, but without the unusual camera movement restrictions.
24: The weapon wheel is blocked from access.
33: Displays a crosshair similar to when aiming at a deceased NPC.
46: Prevents the character from jumping.
49: Enables firing two projectiles (bullets, grenades, etc.) with a single trigger pull for most firearms, excluding projectiles.
50: Increases the speed at which the character walks and shoots.
65: Forces the character to shoot automatically.
66: Adjusts the aim slightly to the left.
69: Alters aiming behavior when not in aim mode, particularly effective while moving with a C4 or minigun.
76: Simulates a sniper hit when aiming with a sniper rifle.
81: Causes the character to ragdoll immediately upon movement.
83: Limits sprinting speed, allowing for a sprint that is not the maximum speed.
98: Aims the camera shallower when aiming; must set the bitflag while already aiming for it to function.
99: Disables the weapon wheel, allowing only cycling through pistol weapons; alters the camera when aiming.
110: Locks the weapon and prevents firing; cannot change weapons or shoot.
113: Indicates the character is putting on a helmet. Do not set this; only query it. It does not prevent vehicle operation, contrary to initial findings.
119: Adjusts the weapon positioning to the left.
122: Produces a rappelling noise when the character falls and prevents ragdoll effects.
125: Similar to 98.
128: Prevents the character from firing a weapon.
134: Restricts hand movement while piloting a helicopter.
138: Similar to 49 but does not combine for firing four projectiles.
160: Significantly slows aiming and distorts movement.
156: Alters the feeling of aiming; results in peculiar behaviors, especially noticeable with homing launcher projectiles.
166: Scales the character's head down to 0.001.
177: Prevents the removal of a parachute pack.
182: Enables walking on air and noclip functionality.
199: Similar to 134.
201: Prevents shooting or throwing objects while in a vehicle.
202: While active, walking does not increase height.
203: Causes the character to stumble and recover.
208: In first-person view, disables weapon aiming.
243: Produces unusual effects in first-person view, causing the character to look downward.
246: Alters aiming behavior to be slow and erratic; refer to i != 364 for potential correlations.
260: Forces aiming in first-person view.
269: Restricts the character's arm and hand movements, particularly amusing while on a bike.
298: Causes glitches with the character and radar during movement; forces walking upon receiving movement input while aiming.
299: Results in hand glitches when a weapon is equipped; shooting and then stopping reveals a peculiar animation.
301: Initiates a 360-degree spinning loop in first-person view.
309: Prevents the character from performing vehicle actions such as closing doors, hotwiring, starting the engine, or putting on a helmet.
329: Forces the character to walk directly in front of the camera, creating amusing scenarios while aiming in first-person view.
332: Causes hand glitches in first-person view when aiming with a weapon.
339: Prevents quitting aiming mode, resulting in unusual behaviors.
360: Produces comical facial expressions, effective only with male characters.
361: Disables weapon wheel usage; in vehicles, limits selection to pistols only.
363: Indicates that the character is in the process of closing a vehicle door.
364: Similar to 246, resulting in slow and unusual aiming behavior.
365: Locks weapon wheel selection in a vehicle to the currently equipped weapon.
383: Causes peculiar behaviors while aiming.
372: Triggers panic animations when the character is in a vehicle.
374: Introduces strange effects on weapon handling in first-person view.
392 + 435: Together, these cause the character to punch the steering wheel in third-person view, and while in first-person, it may also produce horn sounds, resulting in camera shakes.
393 + 437: Together, these prevent aiming in first-person view.
395: Indicates that the character is in the process of reloading (IsReloading).
402: Increases overall character speed (running, shooting, etc.).
403: In first-person view, removes the pilot helmet vision overlay.
408: In first-person view, raises the weapon's positioning.
417: Prevents the selection of melee weapons.
439: Inverts look-around controls (right stick/mouse) for this player.
'''

# Load the original JSON data
original_data = load_original_json(original_json_path)

# Parse the new data structure
new_data = parse_new_data(new_data_string)

# Update the original JSON with the new data
update_json(original_data, new_data)

# Save the updated JSON to a new file
with open(updated_json_path, 'w') as file:
    json.dump(original_data, file, indent=4)
