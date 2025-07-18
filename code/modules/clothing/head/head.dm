/obj/item/clothing/head
	name = "head"
	icon = 'icons/obj/clothing/headwear/hats.dmi'
	worn_icon_list = list(
		slot_l_hand_str = 'icons/mob/inhands/clothing/hats_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/clothing/hats_right.dmi',
	)
	armor_protection_flags = HEAD
	equip_slot_flags = ITEM_SLOT_HEAD
	w_class = WEIGHT_CLASS_SMALL
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)
	blood_sprite_state = "helmetblood"
	attachments_by_slot = list(ATTACHMENT_SLOT_BADGE)
	attachments_allowed = list(/obj/item/armor_module/armor/badge)
	armor_features_flags = ARMOR_NO_DECAP
	var/anti_hug = 0

/obj/item/clothing/head/update_clothing_icon()
	if (ismob(loc))
		var/mob/M = loc
		M.update_inv_head()

/obj/item/clothing/head/update_greyscale(list/colors, update)
	. = ..()
	if(!greyscale_config)
		return
	worn_icon_list = list(slot_head_str = icon)

/obj/item/clothing/head/beanie
	name = "\improper NTC beanie"
	desc = "A standard military beanie, often worn by non-combat military personnel and support crews, though the occasional one finds its way to the front line. Popular due to being comfortable and snug."
	icon = 'icons/obj/clothing/headwear/marine_hats.dmi'
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/marine_hats.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	icon_state = "beanie_cargo"
	inv_hide_flags = HIDETOPHAIR
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)
/obj/item/clothing/head/tgmcberet
	name = "\improper Dark gray beret"
	desc = "A hat typically worn by the field-officers of the NTC. Occasionally they find their way down the ranks into the hands of squad-leaders and decorated grunts."
	icon = 'icons/obj/clothing/headwear/marine_hats.dmi'
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/marine_hats.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	icon_state = "beret"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)
	item_map_variant_flags = NONE
	armor_features_flags = ARMOR_NO_DECAP

/obj/item/clothing/head/tgmcberet/tan
	name = "\improper Tan beret"
	icon_state = "berettan"
	item_map_variant_flags = (ITEM_JUNGLE_VARIANT|ITEM_ICE_VARIANT)
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/tgmcberet/red
	name = "\improper Red badged beret"
	icon_state = "beretred"
	item_map_variant_flags = NONE
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/tgmcberet/red2
	name = "\improper Red beret"
	icon_state = "beretred2"
	item_map_variant_flags = NONE
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/tgmcberet/red2/erp
	name = "\improper ERP Red Beret"
	desc = "An ERP-approved improved design of the red beret, how this small piece of cloth has such good padding is a closely guarded ERP-secret."
	soft_armor = MARINE_ARMOR_MEDIUM

/obj/item/clothing/head/tgmcberet/red2/erp/masterprankster
	desc = "An ERP-approved improved design of the red beret, how this small piece of cloth has such good padding is a closely guarded ERP-secret. This one is held by Master Pranksters only!"
	icon_state = "beretred"

/obj/item/clothing/head/tgmcberet/bloodred
	name = "\improper Blood red beret"
	icon_state = "bloodred_beret"
	item_map_variant_flags = NONE
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/tgmcberet/blueberet
	name = "\improper Blue beret"
	icon_state = "blue_beret"
	item_map_variant_flags = NONE
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/tgmcberet/darkgreen
	name = "\improper Dark green beret"
	icon_state = "darkgreen_beret"
	item_map_variant_flags = NONE
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/tgmcberet/green
	name = "\improper Green beret"
	icon_state = "beretgreen"
	item_map_variant_flags = NONE
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/tgmcberet/snow
	name = "\improper White beret"
	icon_state = "beretsnow"
	item_map_variant_flags = NONE
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/tgmcberet/wo
	name = "\improper Command Master at Arms beret"
	desc = "A beret with the lieutenant insignia emblazoned on it. It shines with the glow of corrupt authority and a smudge of doughnut."
	icon_state = "beretwo"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)
	item_map_variant_flags = NONE

/obj/item/clothing/head/tgmcberet/fc
	name = "\improper Field Commander beret"
	desc = "A beret with the field commander insignia emblazoned on it. It commands loyalty and bravery in all who gaze upon it."
	icon_state = "beretfc"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)
	item_map_variant_flags = NONE


/obj/item/clothing/head/tgmccap
	name = "\improper NTC cap"
	desc = "A casual cap occasionally worn by Squad-leaders and Combat-Engineers. While it has limited combat functionality, some prefer to wear it instead of the standard issue helmet."
	icon_state = "cap"
	icon = 'icons/obj/clothing/headwear/marine_hats.dmi'
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/marine_hats.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)
	var/flipped_cap = FALSE
	var/base_cap_icon
	item_map_variant_flags = (ITEM_ICE_VARIANT)


/obj/item/clothing/head/tgmccap/verb/fliphat()
	set name = "Flip hat"
	set category = "Object"
	set src in usr
	if(!isliving(usr))
		return
	if(usr.incapacitated())
		return

	flipped_cap = !flipped_cap
	if(flipped_cap)
		to_chat(usr, "You spin the hat backwards! You look like a tool.")
		icon_state = base_cap_icon + "_b"
	else
		to_chat(usr, "You spin the hat back forwards. That's better.")
		icon_state = base_cap_icon

	update_clothing_icon()


/obj/item/clothing/head/tgmccap/ro
	name = "\improper NTC officer cap"
	desc = "A hat usually worn by officers in the NTC. While it has limited combat functionality, some prefer to wear it instead of the standard issue helmet."
	icon_state = "rocap"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/tgmccap/ro/navy
	name = "\improper NTC navy officer cap"
	desc = "A hat usually worn by officers in the NTC. This time in a nice shade of navy blue."
	icon_state = "navycap"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/tgmccap/req
	name = "\improper NTC requisition cap"
	desc = "It's a fancy hat for a not-so-fancy military supply clerk."
	icon_state = "cargocap"
	item_map_variant_flags = null
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)


/obj/item/clothing/head/boonie
	name = "Boonie Hat"
	desc = "The pinnacle of tacticool technology."
	icon_state = "booniehat"
	worn_icon_state = "booniehat"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/ornamented_cap
	name = "\improper ornamented cap"
	desc = "An ornamented cap with a visor. This one seems to be torn at the back."
	icon_state = "ornamented_cap"
	icon = 'icons/obj/clothing/headwear/marine_hats.dmi'
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/marine_hats.dmi'
		)
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)
	armor_features_flags = ARMOR_NO_DECAP

/obj/item/clothing/head/slouch
	name = "\improper NTC slouch hat"
	desc = "A nice slouch hat worn by some NTC troopers while on planets with hot weather, or just for style. While it has limited combat functionality, some prefer to wear it instead of the standard issue helmet."
	icon_state = "slouch_hat"
	icon = 'icons/obj/clothing/headwear/marine_hats.dmi'
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/marine_hats.dmi',
	)
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/headband
	name = "\improper Cyan headband"
	desc = "A rag typically worn by the less-orthodox weapons operators in the NTC. While it offers no protection, it is certainly comfortable to wear compared to the standard helmet. Comes in two stylish colors."
	icon = 'icons/obj/clothing/headwear/marine_hats.dmi'
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/marine_hats.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	icon_state = "headband"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/headband/red
	name = "\improper Red headband"
	icon_state = "headbandred"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/headband/rambo
	name = "\improper Vivid red headband"
	desc = "It flutters in the face of the wind, defiant and unrestrained, like the man who wears it."
	icon_state = "headband_rambo"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/headband/snake
	name = "\improper Black headband"
	desc = "A replica of the headband of a legendary soldier. Sadly it doesn't offer infinite ammo. Yet."
	icon_state = "headband_snake"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)


/obj/item/clothing/head/headset
	name = "\improper NTC headset"
	desc = "A headset typically found in use by radio-operators and officers. This one appears to be malfunctioning."
	icon_state = "headset"
	icon = 'icons/obj/clothing/headwear/marine_hats.dmi'
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/marine_hats.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)

/obj/item/clothing/head/cmo
	name = "\improper Chief Medical hat"
	desc = "A somewhat fancy hat, typically worn by those who wish to command medical respect."
	icon_state = "cmohat"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/securitycap
	name = "Security Cap"
	desc = "A hat often worn by security officers, it is comfortable and lightly armored."
	icon_state = "security_cap"
	icon = 'icons/obj/clothing/hats.dmi'
	soft_armor = list(MELEE = 15, BULLET = 25, LASER = 20, ENERGY = 20, BOMB = 5, BIO = 5, FIRE = 15, ACID = 5)

/*============================BERETS=================================*/
//Berets have armor, so they have their own category. PMC caps are helmets, so they're in helmets.dm.

/obj/item/clothing/head/beret/marine
	name = "Operative officer beret"
	desc = "A beret with the NTC insignia emblazoned on it. It radiates respect and authority."
	icon_state = "hosberet"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)
	inventory_flags = BLOCKSHARPOBJ

/obj/item/clothing/head/beret/marine/captain
	name = "Commander's beret"
	desc = "A beret with the Commander insignia emblazoned on it. Wearer may suffer the heavy weight of responsibility upon his head and shoulders."
	icon_state = "centcomcaptain"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/beret/marine/chiefofficer
	name = "chief officer beret"
	desc = "A beret with the lieutenant-commander insignia emblazoned on it. It emits a dark aura and may corrupt the soul."
	icon_state = "hosberet"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/beret/marine/chiefofficer/sa
	name = "spatial agent's beret"
	desc = "A beret with the Spatial Agent insignia on it."
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/beret/marine/techofficer
	name = "technical officer beret"
	desc = "A beret with the lieutenant insignia emblazoned on it. There's something inexplicably efficient about it..."
	icon_state = "e_beret_badge"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/beret/marine/logisticsofficer
	name = "logistics officer beret"
	desc = "A beret with the lieutenant insignia emblazoned on it. It inspires a feeling of respect."
	icon_state = "hosberet"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/*=========================PROTECTIVE===============================
=======================================================================*/

/obj/item/clothing/head/ushanka
	name = "ushanka"
	desc = "Perfect for winter in Siberia, da?"
	icon_state = "ushankadown"
	worn_icon_state = "ushankadown"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)
	cold_protection_flags = HEAD
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE
	inventory_flags = BLOCKSHARPOBJ
	inv_hide_flags = HIDEEARS|HIDETOPHAIR
	anti_hug = 1

/obj/item/clothing/head/ushanka/attack_self(mob/user as mob)
	. = ..()
	if(icon_state == "ushankadown")
		icon_state = "ushankaup"
		worn_icon_state = "ushankaup"
		to_chat(user, "You raise the ear flaps on the ushanka.")
	else
		icon_state = "ushankadown"
		worn_icon_state = "ushankadown"
		to_chat(user, "You lower the ear flaps on the ushanka.")


/obj/item/clothing/head/bearpelt
	name = "bear pelt hat"
	desc = "Fuzzy."
	icon_state = "bearpelt"
	siemens_coefficient = 2
	anti_hug = 4
	armor_protection_flags = HEAD|CHEST|ARMS
	soft_armor = list(MELEE = 90, BULLET = 70, LASER = 45, ENERGY = 55, BOMB = 45, BIO = 10, FIRE = 55, ACID = 55)
	cold_protection_flags = HEAD|CHEST|ARMS
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE
	inventory_flags = BLOCKSHARPOBJ
	inv_hide_flags = HIDEEARS|HIDETOPHAIR


/obj/item/clothing/head/uppcap
	name = "\improper armored USL cap"
	desc = "Standard USL head gear for covert operations and low-ranking pirates alike."
	icon = 'icons/obj/clothing/headwear/ert_headwear.dmi'
	icon_state = "upp_cap"
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/ert_headwear.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	siemens_coefficient = 2
	//anti_hug = 2
	armor_protection_flags = HEAD
	soft_armor = list(MELEE = 50, BULLET = 50, LASER = 50, ENERGY = 55, BOMB = 50, BIO = 50, FIRE = 55, ACID = 55)
	cold_protection_flags = HEAD
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE
	inventory_flags = BLOCKSHARPOBJ
	inv_hide_flags = HIDEEARS
	armor_features_flags = ARMOR_NO_DECAP

/obj/item/clothing/head/uppcap/beret
	name = "\improper armored USL beret"
	icon_state = "upp_beret"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/frelancer
	name = "\improper armored Freelancer helmet"
	desc = "A sturdy freelancer's helmet."
	icon = 'icons/obj/clothing/headwear/ert_headwear.dmi'
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/ert_headwear.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	icon_state = "freelancer_helmet"
	siemens_coefficient = 2
	armor_protection_flags = HEAD
	soft_armor = list(MELEE = 50, BULLET = 50, LASER = 50, ENERGY = 55, BOMB = 50, BIO = 50, FIRE = 55, ACID = 55)
	cold_protection_flags = HEAD
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE
	inventory_flags = BLOCKSHARPOBJ
	inv_hide_flags = HIDEEARS
	armor_features_flags = ARMOR_NO_DECAP
	attachments_by_slot = list(
		ATTACHMENT_SLOT_STORAGE,
		ATTACHMENT_SLOT_HEAD_MODULE,
	)
	attachments_allowed = list(
		/obj/item/armor_module/module/binoculars,
		/obj/item/armor_module/storage/helmet,
	)
	starting_attachments = list(
		/obj/item/armor_module/module/binoculars,
		/obj/item/armor_module/storage/helmet,
	)

/obj/item/clothing/head/frelancer/beret
	name = "\improper armored Freelancer beret"
	icon_state = "freelancer_beret"
	attachments_allowed = list(
		/obj/item/armor_module/storage/helmet,
	)
	starting_attachments = list(
		/obj/item/armor_module/storage/helmet,
	)
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/militia
	name = "\improper armored militia cowl"
	desc = "A large hood in service with some militias, meant for obscurity on the frontier. Offers some head protection due to the study fibers utilized in production."
	icon = 'icons/obj/clothing/headwear/ert_headwear.dmi'
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/ert_headwear.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	icon_state = "rebel_hood"
	siemens_coefficient = 2
	armor_protection_flags = HEAD|CHEST
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)
	cold_protection_flags = HEAD
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE
	inventory_flags = BLOCKSHARPOBJ
	inv_hide_flags = HIDEEARS|HIDETOPHAIR
	armor_features_flags = ARMOR_NO_DECAP

/obj/item/clothing/head/admiral
	name = "\improper armored admiral cap"
	desc = "A sturdy admiral's cap. More protective than it seems. Please don't ditch this for a helmet like a punk."
	icon_state = "admiral_helmet"
	siemens_coefficient = 2
	armor_protection_flags = HEAD
	soft_armor = list(MELEE = 60, BULLET = 60, LASER = 45, ENERGY = 55, BOMB = 55, BIO = 10, FIRE = 55, ACID = 55)
	cold_protection_flags = HEAD
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE
	inventory_flags = BLOCKSHARPOBJ
	inv_hide_flags = HIDEEARS

/obj/item/clothing/head/commissar
	name = "\improper commissar cap"
	desc = "A cap worn by commissars of the Imperial Army. This one seems to radiate authority."
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/ert_headwear.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	icon = 'icons/obj/clothing/headwear/ert_headwear.dmi'
	icon_state = "commissar_cap"
	soft_armor = list(MELEE = 30, BULLET = 30, LASER = 30, ENERGY = 30, BOMB = 15, BIO = 10, FIRE = 20, ACID = 20)
	armor_features_flags = ARMOR_NO_DECAP

/obj/item/clothing/head/strawhat
	name = "\improper straw hat"
	desc = "A hat lined with durathread on the outside, has the usual iconic look of a straw hat. A common hat across the bubble."
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/ert_headwear.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	icon = 'icons/obj/clothing/headwear/ert_headwear.dmi'
	icon_state = "straw_hat"
	soft_armor = list(MELEE = 50, BULLET = 70, LASER = 70, ENERGY = 60, BOMB = 55, BIO = 55, FIRE = 55, ACID = 60)

/obj/item/clothing/head/vsd
	name = "\improper Crasher MT/45 armored cap"
	desc = "CrashCore sponsored caps with kevlar fabric, comes with a headset."
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/ert_headwear.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	icon = 'icons/mob/clothing/headwear/ert_headwear.dmi'
	icon_state = "vsd_cap"
	worn_icon_state = "vsd_cap"
	soft_armor = list(MELEE = 50, BULLET = 50, LASER = 50, ENERGY = 55, BOMB = 50, BIO = 50, FIRE = 55, ACID = 55)
	armor_features_flags = ARMOR_NO_DECAP

/obj/item/clothing/head/vsd/beret
	name = "\improper Crasher MT/45 Vyacheslav armored beret"
	desc = "CrashCore sponsored beret with kevlar fabric, seen on Vyacheslav Squad Leaders and Officers."
	icon_state = "vsd_beret"
	worn_icon_state = "vsd_beret"
	icon = 'icons/mob/clothing/headwear/ert_headwear.dmi'
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/ert_headwear.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)

/obj/item/clothing/head/vsd/beret_alt
	name = "\improper Crasher MT/45 Vyacheslav armored beret"
	desc = "CrashCore sponsored beret with kevlar fabric, seen on Vyacheslav Squad Leaders and Officers."
	icon_state = "usl_beret"
	worn_icon_state = "usl_beret"
	icon = 'icons/mob/clothing/headwear/ert_headwear.dmi'
	worn_icon_list = list(
		slot_head_str = 'icons/mob/clothing/headwear/ert_headwear.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)