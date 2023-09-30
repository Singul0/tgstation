/datum/lazy_template/virtual_domain/pipedream
	name = "Syndicate Waystation Assault"
	cost = BITRUNNER_COST_HIGH
	desc = "An clandestine waystation point for syndicate raids tucked away in the asteroid field of a non-descript gas giant. Can you raid it for all it's worth?"
	difficulty = BITRUNNER_DIFFICULTY_HIGH
	extra_loot = list(/obj/item/folder/syndicate/red)
	forced_outfit = /datum/outfit/virtual_marine
	help_text = "A Highly defended clandestine waystation for supporting syndicate raids deep into nanotrasen territory, \
	You are the marines entrusted to raid it and to deny the syndicate this precious asset. Ensure to take everything the base has and destroy it. \
	Or defy your orders, desserting and establishing the waystation as your base of operations for your new pirate crew. Your choice."
	key = "syndicate_waystation_assault"
	map_name = "syndicate_waystation_assault"
	reward_points = BITRUNNER_REWARD_EXTREME
	safehouse_path = /datum/map_template/safehouse/syndicate_waystation_assault

// ID Trims
/datum/id_trim/syndicate_waystation
	assignment = "Syndicate Waystation Technician"
	trim_state = "trim_syndicate"
	department_color = COLOR_SYNDIE_RED
	subdepartment_color = COLOR_ENGINEERING_ORANGE
	sechud_icon_state = SECHUD_SYNDICATE
	access = list(
		ACCESS_AWAY_GENERAL,
		ACCESS_AWAY_ENGINEERING
		)

/datum/id_trim/syndicate_waystation/commander
	assignment = "Syndicate Waystation Commander"
	trim_state = "trim_captain"
	department_color = COLOR_SYNDIE_RED_HEAD
	subdepartment_color = COLOR_SYNDIE_RED_HEAD
	department_state = "departmenthead"
	access = list(
		ACCESS_AWAY_GENERAL,
		ACCESS_AWAY_COMMAND
		)

/datum/id_trim/syndicate_waystation/marine
	assignment = "Marine Trooper"
	trim_state = "trim_deathsquad"
	department_color = COLOR_CENTCOM_BLUE
	subdepartment_color = COLOR_CENTCOM_BLUE
	access = list(
		ACCESS_AWAY_GENERAL,
		ACCESS_AWAY_SEC
		)
// ID Cards
/obj/item/card/id/advanced/factory
	name = "factory worker ID"
	trim = /datum/id_trim/factory

/obj/item/card/id/advanced/factory/qm
	name = "factory quartermaster ID"
	trim = /datum/id_trim/factory/qm

//Outfits
/datum/outfit/virtual_marine
	name = "Virtual Domain Marine"
	uniform = /obj/item/clothing/under/rank/centcom/military
	gloves = /obj/item/clothing/gloves/combat
	shoes = /obj/item/clothing/shoes/combat

/datum/outfit/syndicate_waystation
	name = "Syndicate Waystation Technician"
	id_trim = /datum/id_trim/factory
	id = /obj/item/card/id/advanced/
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/hazardvest
	belt = /obj/item/storage/belt/utility/full
	gloves = /obj/item/clothing/gloves/color/yellow
	head = /obj/item/clothing/head/utility/welding
	shoes = /obj/item/clothing/shoes/combat
	glasses = /obj/item/clothing/glasses/cold
	l_pocket = /obj/item/ammo_box/magazine/m9mm
	ears = /obj/item/clothing/ears/earmuffs

/datum/outfit/factory/guard
	name = "Factory Guard"

	uniform = /obj/item/clothing/under/rank/security/officer/grey
	suit = /obj/item/clothing/suit/armor/vest/alt
	belt = /obj/item/radio
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/soft/sec
	shoes = /obj/item/clothing/shoes/jackboots/sec
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld

/datum/outfit/factory/qm
	name = "Factory Quatermaster"

	id_trim = /datum/id_trim/factory/qm
	id = /obj/item/card/id/advanced/silver
	uniform = /obj/item/clothing/under/rank/cargo/qm
	belt = /obj/item/radio
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/soft/yellow
	shoes = /obj/item/clothing/shoes/jackboots/sec
	l_pocket = /obj/item/melee/baton/telescopic
	r_pocket = /obj/item/stamp/head/qm

// Corpses
/obj/effect/mob_spawn/corpse/human/factory
	name = "Factory Worker"
	outfit = /datum/outfit/factory
	icon_state = "corpsecargotech"

/obj/effect/mob_spawn/corpse/human/factory/guard
	name = "Factory Guard"
	outfit = /datum/outfit/factory/guard
	icon_state = "corpsecargotech"

/obj/effect/mob_spawn/corpse/human/factory/qm
	name = "Factory Quartermaster"
	outfit = /datum/outfit/factory/qm
	icon_state = "corpsecargotech"

// Areas
/area/virtual_domain/syndicate_waystation
	icon_state = "bit_ruin"

/area/virtual_domain/syndicate_waystation/asteroid
	name = "\improper Asteroid"
	sound_environment = SOUND_AREA_ASTEROID
	ambient_buzz = 'sound/ambience/ambiatmos.ogg'
	outdoors = TRUE
	always_unpowered = TRUE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	requires_power = TRUE
	ambience_index = AMBIENCE_MINING



// Main Syndicate Station Area
/area/virtual_domain/syndicate_waystation/station
	icon_state = "bit_ruin"
	name = "Commons Area"

/area/virtual_domain/syndicate_waystation/station/medical
	name = "Medical Bay"

/area/virtual_domain/syndicate_waystation/station/repairbay
	name = "Repair Bay"

/area/virtual_domain/syndicate_waystation/station/engineering
	name = "Engineering Section"

/area/virtual_domain/syndicate_waystation/station/hangar
	name = "Hangar"
	always_unpowered = TRUE

/area/virtual_domain/syndicate_waystation/station/science
	name = "Waffle Corp Research Branch"

/area/virtual_domain/syndicate_waystation/station/hallway
	name = "Primary Hallway"

/area/virtual_domain/syndicate_waystation/station/vault
	name = "Vault"

/area/virtual_domain/syndicate_waystation/station/security
	name = "Hostage Processing Centre"

/area/virtual_domain/syndicate_waystation/station/mining
	name = "Mining & Refining Bay"

//Keycards

/obj/machinery/door/puzzle/keycard/syndicate_waystation
	name = "LOCKDOWN"
	desc = "Locked down, You would need a keycard from the commander to override the security lockdown."
	puzzle_id = "syndicate_waystation"

/obj/item/keycard/syndicate_waystation
	name = "Commander's Keycard"
	desc = "A red keycard with enough system privilage to override the security lockdown."
	color = "#9c0e26"
	puzzle_id = "syndicate_waystation"

//Mobs

//Shuttles
/obj/machinery/computer/shuttle/syndicate_drop_pod
	name = "drop-pod shuttle console"
	shuttleId = "syndie_drop_pod"
	icon_screen = "syndishuttle"
	icon_keyboard = "syndie_key"
	light_color = COLOR_SOFT_RED
	possible_destinations = "syndie_waystation_safehouse;;syndie_waystation_hangar"

/area/shuttle/syndicate_drop_pod
	name = "Syndicate Drop-pod"
	requires_power = FALSE
