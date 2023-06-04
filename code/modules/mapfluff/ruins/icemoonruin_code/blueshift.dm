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

