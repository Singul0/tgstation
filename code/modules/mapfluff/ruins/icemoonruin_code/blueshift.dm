/// Outfits
/datum/outfit/hotelstaff/security/blueshift
	name = "Blueshift Security Guard"
	belt = /obj/item/storage/belt/holster
	back = null
	id =  /obj/item/card/id/advanced
	id_trim = /datum/id_trim/away/blueshift
	neck = /obj/item/clothing/neck/tie/black/tied

/datum/outfit/hotelstaff/blueshift
	name  = "Blueshift Science Team"
	id = /obj/item/card/id/advanced
	id_trim = /datum/id_trim/away/blueshift/scientist
	uniform = /obj/item/clothing/under/rank/rnd/blueshift
	suit = /obj/item/clothing/suit/toggle/labcoat
	neck = /obj/item/clothing/neck/tie/red/tied
	shoes = /obj/item/clothing/shoes/laceup

/// Corpse Spawners
/obj/effect/mob_spawn/corpse/human/blueshift
	name = "Blueshift Security Guard"
	outfit = /datum/outfit/hotelstaff/security/blueshift

/obj/effect/mob_spawn/corpse/human/blueshift/scientist
	name = "Blueshift Science Team"
	outfit = /datum/outfit/hotelstaff/blueshift

/obj/effect/mob_spawn/corpse/blankbody
	mob_type = /mob/living/basic/blankbody

/obj/effect/mob_spawn/corpse/migo
	mob_type = /mob/living/basic/migo

/// H.E.V Suit (just a recoloured H.E.C.K Suit which is just a recoloured H.E.V Suit, Weird I know!)
/obj/item/clothing/head/hooded/hev_suit
	name = "H.E.V. helmet"
	desc = "Hostile Environment Helmet: A helmet designed to withstand the wide variety of hazards from all kinds of practical science experiments. It wasn't enough for its last owner."
	resistance_flags = FIRE_PROOF|ACID_PROOF
	icon = 'icons/obj/clothing/head/helmet.dmi'
	worn_icon = 'icons/mob/clothing/head/helmet.dmi'
	icon_state = "hostile_env"
	w_class = WEIGHT_CLASS_NORMAL
	armor_type = /datum/armor/hev_suit
	cold_protection = HEAD
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	flags_cover = HEADCOVERSMOUTH
	actions_types = list()
	greyscale_colors = "#777777#ffae11#ff7b00"
	greyscale_config = /datum/greyscale_config/heck_helmet
	greyscale_config_worn = /datum/greyscale_config/heck_helmet/worn
	flags_1 = IS_PLAYER_COLORABLE_1

/obj/item/clothing/suit/hooded/hev_suit
	name = "H.E.V. suit"
	desc = "Hostile Environment Suit: A suit designed to withstand the wide variety of hazards from all kinds of practical science experiments. Just looking at it makes you want to bash someone's skull in with a crowbar."
	icon_state = "hostile_env"
	hoodtype = /obj/item/clothing/head/hooded/hev_suit
	armor_type = /datum/armor/hev_suit
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	clothing_flags = THICKMATERIAL
	resistance_flags = FIRE_PROOF|ACID_PROOF
	transparent_protection = HIDESUITSTORAGE|HIDEJUMPSUIT
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/resonator, /obj/item/mining_scanner, /obj/item/t_scanner/adv_mining_scanner, /obj/item/gun/energy/recharge/kinetic_accelerator, /obj/item/pickaxe)
	greyscale_colors = "#ff7b00#222222"
	greyscale_config = /datum/greyscale_config/heck_suit
	greyscale_config_worn = /datum/greyscale_config/heck_suit/worn
	flags_1 = IS_PLAYER_COLORABLE_1

/datum/armor/hev_suit
	melee = 40
	bullet = 10
	laser = 20
	energy = 20
	bomb = 60
	fire = 60
	acid = 80
