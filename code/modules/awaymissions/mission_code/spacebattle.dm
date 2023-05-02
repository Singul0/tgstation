// Areas
/area/awaymission/spacebattle/asteroid
	name = "\improper Asteroid"
	icon = 'icons/area/areas_station.dmi'
	icon_state = "asteroid"
	has_gravity = STANDARD_GRAVITY
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
/area/awaymission/spacebattle/station
	name = "Commons Area"
	icon_state = "away"

/area/awaymission/spacebattle/station/medical
	name = "Medical Bay"

/area/awaymission/spacebattle/station/repairbay
	name = "Repair Bay"

/area/awaymission/spacebattle/station/engineering
	name = "Engineering Section"

/area/awaymission/spacebattle/station/hangar
	name = "Hangar"
	always_unpowered = TRUE

/area/awaymission/spacebattle/station/science
	name = "Waffle Corp Research Branch"

/area/awaymission/spacebattle/station/hallway
	name = "Primary Hallway"

/area/awaymission/spacebattle/station/vault
	name = "Vault"

/area/awaymission/spacebattle/station/security
	name = "Hostage Processing Centre"

// Syndicate Escort Boarder

/area/awaymission/spacebattle/escortboarder
	name = "Assault Pod Hangar"

/area/awaymission/spacebattle/escortboarder/engine
	name = "Engine Room"

/area/awaymission/spacebattle/escortboarder/medical
	name = "Trauma Care"

/area/awaymission/spacebattle/escortboarder/briefing
	name = "Briefing Room"

/area/awaymission/spacebattle/escortboarder/barrack
	name = "Barracks"

/area/awaymission/spacebattle/escortboarder/dockingbay
	name = "Docking Bay"

/area/awaymission/spacebattle/escortboarder/cic
	name = "Combat Information Center"

/area/awaymission/spacebattle/escortboarder/hallway
	name = "Primary Hallway"

//Items
/obj/machinery/suit_storage_unit/syndie_soft_suit
	suit_type = /obj/item/clothing/suit/space/syndicate/black/engie
	helmet_type = /obj/item/clothing/head/helmet/space/syndicate/black/engie
	mask_type = /obj/item/clothing/mask/gas/syndicate
	storage_type = /obj/item/tank/internals/emergency_oxygen/double
