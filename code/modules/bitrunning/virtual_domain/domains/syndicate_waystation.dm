/datum/lazy_template/virtual_domain/syndicate_waystation_assault
	name = "Syndicate Waystation Assault"
	cost = BITRUNNER_COST_HIGH
	desc = "An clandestine waystation point for syndicate raids tucked away in a asteroid field of a non-descript gas giant. Can you raid it for all it's worth?"
	difficulty = BITRUNNER_DIFFICULTY_HIGH
	extra_loot = list(/obj/item/folder/syndicate/red = 1)
	forced_outfit = /datum/outfit/virtual_marine
	help_text = "A Highly defended clandestine waystation for supporting syndicate raids deep into nanotrasen territory, \
	You are the marines entrusted to raid it and to deny the syndicate this precious asset. Ensure to take everything the base has and destroy it. \
	Or defy your orders, desserting and establishing the waystation as your base of operations for your new pirate crew. Your choice."
	key = "syndicate_waystation_assault"
	map_name = "syndicate_waystation_assault"
	reward_points = BITRUNNER_REWARD_HIGH
	safehouse_path = /datum/map_template/safehouse/syndicate_waystation_assault

// ID Trims
/datum/id_trim/syndicate_waystation
	assignment = "Waystation Technician"
	trim_state = "trim_syndicate"
	department_color = COLOR_SYNDIE_RED
	subdepartment_color = COLOR_ENGINEERING_ORANGE
	sechud_icon_state = SECHUD_SYNDICATE
	access = list(
		ACCESS_AWAY_GENERAL,
		ACCESS_AWAY_ENGINEERING
		)

//Outfits
/datum/outfit/virtual_marine
	name = "Virtual Domain Marine"
	id = /obj/item/card/id/advanced/centcom
	uniform = /obj/item/clothing/under/rank/centcom/military
	gloves = /obj/item/clothing/gloves/combat
	shoes = /obj/item/clothing/shoes/combat
	back = /obj/item/storage/backpack/ert/pmc

/datum/outfit/syndicate_waystation
	name = "Syndicate Waystation Technician"
	id_trim = /datum/id_trim/syndicate_waystation
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

// Corpses
/obj/effect/mob_spawn/corpse/human/syndicate_waystation_technician
	name = "Waystation Technician"
	outfit = /datum/outfit/syndicate_waystation
	icon_state = "corpsecargotech"

// Mobs
/mob/living/basic/syndicate/ranged/syndicate_waystation_technician
	loot = list(/obj/effect/mob_spawn/corpse/human/syndicate_waystation_technician, /obj/item/gun/ballistic/automatic/pistol)
	r_hand = /obj/item/gun/ballistic/automatic/pistol

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

//Ghost Roles (Reflavoured Cybersun Syndicate)

/obj/effect/mob_spawn/ghost_role/human/syndicatespace/waystation
	name = "Syndicate Waystation Crewmember"
	prompt_name = "syndicate waystation crew"
	you_are_text = "You are a syndicate operative on an clandestine waystation, deep in hostile space."
	flavour_text = "You hear a loud thud, then a boom. You awaken to the on-board automatic announcement system blaring alarms, You are under attack. Make your way to the vault to the most right of the station, Equip yourself in the armoury of the vault and repel the invaders. follow the commander's orders and you might make it out alive.."
	important_text = "Obey orders given by your commander. DO NOT let the waystation fall into enemy hands."

/obj/effect/mob_spawn/ghost_role/human/syndicatespace/waystation/commander
	name = "Syndicate Waystation Commander"
	prompt_name = "a waystation commander"
	you_are_text = "You are the commander of clandestine waystation, deep in hostile space."
	flavour_text = "You hear a loud thud, then a boom. You awaken to the on-board automatic announcement system blaring alarms, You are under attack. Make your way to the vault to the most right of the station, Equip yourself and your troops in the armoury of the vault and repel the invaders. Command well and you and your crew might make it out alive.."
	important_text = "Protect the waystation and the cache in the vault with your own life."
	outfit = /datum/outfit/syndicatespace/syndicaptain
