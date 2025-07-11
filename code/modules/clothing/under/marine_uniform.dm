/*********MARINES***********/


/obj/item/clothing/under/marine
	name = "\improper ArcherCorp-brand combat uniform"
	desc = "A kevlar-weaved, hazmat-tested, EMF-augmented marine uniform made by ArcherCorp. Used by many factions around the world. You suspect it's not as robust-proof as advertised."
	siemens_coefficient = 0.9
	icon = 'icons/obj/clothing/uniforms/marine_uniforms.dmi'
	icon_state = "marine_jumpsuit"
	worn_icon_list = list(
		slot_w_uniform_str = 'icons/mob/clothing/uniforms/marine_uniforms.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	has_sensor = 2
	adjustment_variants = list(
		"Rolled Sleeves" = "_d",
		"No Sleeves" = "_h",
		"No Top" = "_r",
	)

/obj/item/clothing/under/marine/black_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/marine/brown_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/brown_vest)

/obj/item/clothing/under/marine/corpman_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/white_vest)

/obj/item/clothing/under/marine_skirt
	name = "\improper ArcherCorp-brand combat jumpskirt"
	desc = "A standard-issue, kevlar-weaved, hazmat-tested, EMF-augmented marine uniform- Wait, a fucking combat skirt?"
	siemens_coefficient = 0.9
	icon = 'icons/obj/clothing/uniforms/marine_uniforms.dmi'
	icon_state = "marine_jumpskirt"
	worn_icon_list =list(
		slot_w_uniform_str = 'icons/mob/clothing/uniforms/marine_uniforms.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	has_sensor = 2
	adjustment_variants = list(
		"Rolled Sleeves" = "_d",
		"No Sleeves" = "_h",
		"No Top" = "_r",
	)

/obj/item/clothing/under/marine/holster
	starting_attachments = list(/obj/item/armor_module/storage/uniform/holster)

/obj/item/clothing/under/marine/hyperscale
	name = "\improper 8E Chameleon ArcherCorp-Brand uniform"
	desc = "A standard-issue, kevlar-weaved, hazmat-tested, EMF-augmented marine uniform BUT colorable with a facepaint! You suspect it's not as robust-proof as advertised."
	icon_state = "hyperscale_marine_jumpsuit"
	worn_icon_state = "hyperscale_marine_jumpsuit"
	greyscale_colors = ARMOR_PALETTE_BLACK
	greyscale_config = /datum/greyscale_config/marine_uniform
	colorable_colors = ARMOR_PALETTES_LIST
	colorable_allowed = ICON_STATE_VARIANTS_ALLOWED|PRESET_COLORS_ALLOWED

/obj/item/clothing/under/marine/hyperscale_skirt
	name = "\improper 8E Chameleon ArcherCorp-brand jumpskirt"
	desc = "A standard-issue, kevlar-weaved, hazmat-tested, EMF-augmented marine uniform BUT colorable with facepaint! Comes in skirts now."
	icon_state = "hyperscale_marine_jumpskirt"
	worn_icon_state = "hyperscale_marine_jumpskirt"
	greyscale_colors = ARMOR_PALETTE_BLACK
	greyscale_config = /datum/greyscale_config/marine_uniform
	colorable_colors = ARMOR_PALETTES_LIST
	colorable_allowed = ICON_STATE_VARIANTS_ALLOWED|PRESET_COLORS_ALLOWED

/obj/item/clothing/under/marine/black_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/marine/brown_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/brown_vest)

//Squad colored turtlenecks
/obj/item/clothing/under/marine/squad/neck
	name = "\improper NTF Delta turtleneck"
	desc = "A standard issued NTF turtleneck colored blue."
	icon_state = "delta_merc"
	adjustment_variants = list(
		"Rolled Sleeves" = "_d",
	)

/obj/item/clothing/under/marine/squad/neck/delta
	name = "\improper NTF Delta turtleneck"
	desc = "A standard issued NTF turtleneck colored blue, with a slight hint of bravery."
	icon_state = "delta_merc"

/obj/item/clothing/under/marine/squad/neck/charlie
	name = "\improper NTF Charlie turtleneck"
	desc = "A standard issued NTF turtleneck colored purple, you're reminded of how proper squad cohesion can make or break a mission."
	icon_state = "charlie_merc"

/obj/item/clothing/under/marine/squad/neck/bravo
	name = "\improper NTF Bravo turtleneck"
	desc = "A standard issued NTF turtleneck colored yellow, you suddenly get thoughts of how to improve the FOB, if slightly."
	icon_state = "bravo_merc"

/obj/item/clothing/under/marine/squad/neck/alpha
	name = "\improper NTF Alpha turtleneck"
	desc = "A standard issued NTF turtleneck colored red, you feel as if you can face the world and all it has to bring against you."
	icon_state = "alpha_merc"

/obj/item/clothing/under/marine/squad/neck/alpha_skirt
	name = "\improper NTF Alpha skirtleneck"
	desc = "A standard issued NTF turtleneck colored red- OH COME ON"
	icon_state = "alpha_merc_skirt"
	worn_icon_list =list(
		slot_w_uniform_str = 'icons/mob/clothing/uniforms/marine_uniforms.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)

/obj/item/clothing/under/marine/squad/neck/delta_skirt
	name = "\improper NTF Delta skirtleneck"
	desc = "A standard issued NTF turtleneck colored blue- OH COME ON"
	icon_state = "delta_merc_skirt"
	worn_icon_list =list(
		slot_w_uniform_str = 'icons/mob/clothing/uniforms/marine_uniforms.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)

/obj/item/clothing/under/marine/squad/neck/charlie_skirt
	name = "\improper NTF Charlie skirtleneck"
	desc = "A standard issued NTF turtleneck colored purple- OH COME ON"
	icon_state = "charlie_merc_skirt"
	worn_icon_list =list(
		slot_w_uniform_str = 'icons/mob/clothing/uniforms/marine_uniforms.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)

/obj/item/clothing/under/marine/squad/neck/bravo_skirt
	name = "\improper NTF Bravo skirtleneck"
	desc = "A standard issued NTF turtleneck colored yellow- OH COME ON"
	icon_state = "bravo_merc_skirt"
	worn_icon_list =list(
		slot_w_uniform_str = 'icons/mob/clothing/uniforms/marine_uniforms.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)

// camo things stuff yeah!

/obj/item/clothing/under/marine/camo
	name = "\improper ArcherCorp-brand camo fatigues (jungle)"
	icon_state = "m_marine_jumpsuit"

/obj/item/clothing/under/marine/camo/snow
	name = "\improper ArcherCorp-brand camo fatigues (snow)"
	icon_state = "s_marine_jumpsuit"

/obj/item/clothing/under/marine/camo/desert
	name = "\improper ArcherCorp-brand camo fatigues (desert)"
	icon_state = "d_marine_jumpsuit"

/obj/item/clothing/under/marine/corpsman
	name = "\improper ArcherCorp-brand corpsman fatigues"
	desc = "A standard-issue, kevlar-weaved, hazmat-tested, EMF-augmented combat corpsman fatigues. You suspect it's not as robust-proof as advertised."
	icon_state = "marine_medic"

/obj/item/clothing/under/marine/corpsman/corpman_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/white_vest)

/obj/item/clothing/under/marine/engineer
	name = "\improper ArcherCorp-brand engineer fatigues"
	desc = "A standard-issue, kevlar-weaved, hazmat-tested, EMF-augmented combat engineer fatigues. You suspect it's not as robust-proof as advertised."
	icon_state = "marine_engineer"

/obj/item/clothing/under/marine/engineer/black_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/marine/jaeger
	name = "\improper NTF jaeger undersuit"
	desc = "A standard-issue, kevlar-weaved, hazmat-tested, EMF-augmented marine uniform. You suspect it's not as robust-proof as advertised."
	siemens_coefficient = 0.9
	icon_state = "marine_undersuit"
	adjustment_variants = list()
	has_sensor = 2
	item_map_variant_flags = null

/obj/item/clothing/under/marine/spec_operative
	name = "NTF Infiltration Uniform"
	desc = "An extremely expensive sneaking suit created by an Ninetails Corporation for high risk missions, made with several layers of a nano-fiber that, while light, molds to the wearer's body shape and hardens protecting them. Only provided rarely to most successful Senior Operatives or higher. This uniform allows you to crawl through vents with ALT-CLICK. Made by NTC."
	icon_state = "marine_undersuit"
	armor_protection_flags = CHEST|GROIN|LEGS|ARMS|HANDS|FEET
	soft_armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 10, BIO = 15, FIRE = 15, ACID = 15)
	cold_protection_flags = CHEST|GROIN|LEGS|ARMS|HANDS|FEET
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/under/marine/spec_operative/equipped(mob/user, i_clothing)
	. = ..()
	RegisterSignal(user, COMSIG_LIVING_ADD_VENTCRAWL)
	ADD_TRAIT(user, TRAIT_CAN_VENTCRAWL, ARMOR_TRAIT)

/obj/item/clothing/under/marine/spec_operative/unequipped(mob/unequipper, i_clothing)
	. = ..()
	UnregisterSignal(unequipper, COMSIG_LIVING_ADD_VENTCRAWL)
	REMOVE_TRAIT(unequipper, TRAIT_CAN_VENTCRAWL, ARMOR_TRAIT)

/obj/item/clothing/under/marine/mp
	name = "military police uniform"
	desc = "A standard-issue, kevlar-weaved, hazmat-tested, EMF-augmented military police uniform. You suspect it's not as robust-proof as advertised."
	icon_state = "MP_jumpsuit"
	adjustment_variants = list()

/obj/item/clothing/under/marine/orion_fatigue
	name = "\improper Orion fatigues"
	desc = "Originated from Orion Military Outpost. Designed for ship and urban environments, they're meant for recon, stealth, and evac operations. They come with a built in cassette player hearable only to the user to help pass time, during any possible long waits. They're the definition of over-funded ideas, least they look neat. It is very likely that a boot fresh from boot camp to buy this at the BX with his E-1 pay because of how tacticool it looks."
	icon_state = "orion_fatigues"
	worn_icon_state = "orion_fatigues"
	adjustment_variants = list(
		"Down" = "_d",
	)

/obj/item/clothing/under/marine/orion_fatigue/black_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/marine/red_fatigue
	name = "\improper Big Red fatigues"
	desc = "Originated from Big Red. Designed for dry, low humid, and Mars-eqse environments, they're meant for recon, stealth, and evac operations. They come with a built in cassette player hearable only to the user to help pass time, during any possible long waits. They make you feel like one with the desert, forged by the beating Sun. Rumors had it that it can recycle your sweat and urine for drinkable water!"
	icon_state = "red_fatigues"
	worn_icon_state = "red_fatigues"
	adjustment_variants = list(
		"Down" = "_d",
	)

/obj/item/clothing/under/marine/red_fatigue/black_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/marine/lv_fatigue
	name = "\improper LV-624 fatigues"
	desc = "Originated from LV-624. Designed for wet, high humid, and jungle environments, they're meant for recon, stealth, and evac operations. They come with a built in cassette player hearable only to the user to help pass time, during any possible long waits. Somewhere, someone is playing 'Fortunate Sons' in the background, and you can smell napalm and Agent Orange in the air..."
	icon_state = "lv_fatigues"
	worn_icon_state = "lv_fatigues"
	adjustment_variants = list(
		"Down" = "_d",
	)

/obj/item/clothing/under/marine/lv_fatigue/black_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/marine/striped
	name = "\improper Striped fatigues"
	desc = "A simple set of camo pants and a striped shirt. A tag on the back indicates that this is old VSD surplus."
	icon_state = "marine_striped"
	worn_icon_state = "marine_striped"
	adjustment_variants = list()

/obj/item/clothing/under/marine/striped/black_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/marine/black_suit
	name = "\improper marine black suit"
	desc = "A easy fitting black suit, somehow exactly your size."
	icon_state = "marine_suit"
	worn_icon_state = "marine_suit"
	adjustment_variants = list()
/obj/item/clothing/under/marine/officer
	name = "marine officer uniform"
	desc = "A kevlar-weaved, hazmat-tested, EMF-augmented, yet extra-soft and extra-light officer uniform. You suspect it's not as extra-fancy as advertised."
	icon_state = "officertanclothes"
	worn_icon_state = "officertanclothes"
	adjustment_variants = list()

/obj/item/clothing/under/marine/officer/warden
	name = "marine officer uniform"
	desc = "A kevlar-weaved, hazmat-tested, EMF-augmented, yet extra-soft and extra-light officer uniform. You suspect it's not as extra-fancy as advertised."
	icon_state = "wardentanclothes"
	worn_icon_state = "wardentanclothes"

/obj/item/clothing/under/marine/officer/hos
	name = "marine officer uniform"
	desc = "A kevlar-weaved, hazmat-tested, EMF-augmented, yet extra-soft and extra-light officer uniform. You suspect it's not as extra-fancy as advertised."
	icon_state = "hostanclothes"
	worn_icon_state = "hostanclothes"

/obj/item/clothing/under/marine/officer/warrant
	name = "Command Master at Arms uniform"
	desc = "A standard-issue, kevlar-weaved, hazmat-tested, EMF-augmented uniform worn by lawful-good warrant officers. You suspect it's not as robust-proof as advertised."
	icon_state = "WO_jumpsuit"
	worn_icon_state = "WO_jumpsuit"

/obj/item/clothing/under/marine/officer/logistics
	name = "marine officer uniform"
	desc = "A standard-issue, kevlar-weaved, hazmat-tested, EMF-augmented uniform worn by logistics officers of the NTC. Do the corps proud."
	icon_state = "BO_jumpsuit"
	item_map_variant_flags = (ITEM_JUNGLE_VARIANT|ITEM_ICE_VARIANT)

/obj/item/clothing/under/marine/officer/ro_suit
	name = "requisition officer suit"
	desc = "A nicely-fitting, kevlar-weaved, hazmat-tested, EMF-augmented requisition officer suit. You suspect it's not as robust-proof as advertised."
	icon_state = "RO_jumpsuit"
	adjustment_variants = list()

/obj/item/clothing/under/marine/officer/pilot
	name = "pilot officer flightsuit"
	desc = "A standard-issue, kevlar-weaved, hazmat-tested, EMF-augmented, survival-friendly pilot flightsuit. Fly the marines onwards to glory."
	icon_state = "pilot_flightsuit"
	cold_protection_flags = ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE
	item_map_variant_flags = null
	adjustment_variants = list(
		"Half" = "_h",
	)

/obj/item/clothing/under/marine/officer/mech
	name = "mech pilot uniform"
	desc = "A standard-issue, kevlar-weaved, hazmat-tested, EMF-augmented uniform worn by mech pilots. Not as impressive as a titanium robot but good enough."
	icon_state = "marine_mech_pilot"

/obj/item/clothing/under/marine/officer/assault_crewman
	name = "assault crewman uniform"
	desc = "A standard-issue, carbon fibre uniform optimised for operating heavy equipment. Feels like a hand-me-down from last decade."
	icon_state = "marine_assault_crewman"

/obj/item/clothing/under/marine/officer/transport_crewman
	name = "transport crewman uniform"
	desc = "A standard issue comfortable uniform designed for sitting all day."
	icon_state = "marine_transport_crewman"

/obj/item/clothing/under/marine/officer/bridge
	name = "staff officer uniform"
	desc = "A standard-issue, kevlar-weaved, hazmat-tested, EMF-augmented staff officer uniform. Do the navy proud."
	icon_state = "BO_jumpsuit"
	item_map_variant_flags = (ITEM_JUNGLE_VARIANT|ITEM_ICE_VARIANT)

/obj/item/clothing/under/marine/officer/exec
	name = "field commander uniform"
	desc = "A special-issue, kevlar-weaved, hazmat-tested, EMF-augmented worn by a field-grade officer of the NTC. You suspect it's not as robust-proof as advertised."
	icon_state = "XO_jumpsuit"
	item_map_variant_flags = (ITEM_JUNGLE_VARIANT|ITEM_ICE_VARIANT)

/obj/item/clothing/under/marine/officer/exec/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/marine/officer/command
	name = "commander uniform"
	desc = "A special-issue, well-ironed, kevlar-weaved, hazmat-tested, EMF-augmented uniform worth of a NTC Commander. Even looking at it the wrong way could result in being court-martialed."
	icon_state = "CO_jumpsuit"
	item_map_variant_flags = (ITEM_JUNGLE_VARIANT|ITEM_ICE_VARIANT)

/obj/item/clothing/under/marine/officer/admiral
	name = "admiral uniform"
	desc = "A uniform worn by a fleet admiral. It comes in a shade of deep black, and has a light shimmer to it. The weave looks strong enough to provide some light protections."
	worn_icon_state = "admiral_jumpsuit"

/obj/item/clothing/under/marine/officer/ce
	name = "chief ship engineer uniform"
	desc = "An engine-friendly, kevlar-weaved, hazmat-tested, EMF-augmented ship engineer uniform. You suspect it's not as robust-proof as advertised."
	icon_state = "EC_jumpsuit"
	adjustment_variants = list(
		"Half" = "_h",
	)

/obj/item/clothing/under/marine/officer/engi
	name = "engineer uniform"
	desc = "An engine-friendly, kevlar-weaved, hazmat-tested, EMF-augmented chief ship engineer uniform. You suspect it's not as robust-proof as advertised."
	icon_state = "E_jumpsuit"
	adjustment_variants = list(
		"Half" = "_h",
	)

/obj/item/clothing/under/marine/officer/researcher
	name = "researcher clothes"
	desc = "A set of formal, yet comfy, clothing worn by scholars and researchers alike."
	icon_state = "research_jumpsuit"

/obj/item/clothing/under/marine/whites
	name = "\improper NTF white dress uniform"
	desc = "A standard-issue NTF white dress uniform. The starch in the fabric chafes a small amount but it pales in comparison to the pride you feel when you first put it on during graduation from boot camp. Doesn't seem to fit perfectly around the waist though."
	siemens_coefficient = 0.9
	icon_state = "marine_whites" //with thanks to Manezinho
	worn_icon_state = "marine_whites" //with thanks to Manezinho
	adjustment_variants = list()

/obj/item/clothing/under/marine/service
	name = "\improper NTF service uniform"
	desc = "A standard-issue NTF dress uniform. Sometimes, you hate wearing this since you remember wearing this to Infantry School and have to wear this when meeting a commissioned officer. This is what you wear when you are not deployed and are working in an office. Doesn't seem to fit perfectly around the waist."
	siemens_coefficient = 0.9
	icon_state = "marine_service" //with thanks to Fitz 'Pancake' Sholl
	worn_icon_state = "marine_service" //with thanks to Fitz 'Pancake' Sholl

/*=========================RESPONDERS================================*/


/*=========================Imperium=================================*/

/obj/item/clothing/under/marine/imperial
	name = "\improper Imperial uniform"
	desc = "This uniform is given out to pretty much every soldier in the Imperium."
	adjustment_variants = list() // don't disrespect the EMPEROR!
	icon = 'icons/obj/clothing/uniforms/ert_uniforms.dmi'
	icon_state = "guardjumpsuit"
	worn_icon_list = list(
		slot_w_uniform_str = 'icons/mob/clothing/uniforms/ert_uniforms.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	worn_icon_state = "guardjumpsuit"
	soft_armor = list(MELEE = 10, BULLET = 10, LASER = 10, ENERGY = 10, BOMB = 10, BIO = 10, FIRE = 10, ACID = 10)

/obj/item/clothing/under/marine/imperial/commissar
	name = "\improper commissar uniform"
	desc = "A commissars noble uniform."
	adjustment_variants = list() // don't disrespect the EMPEROR!
	icon_state = "commissar_uniform"
	worn_icon_state = "commissar_uniform"
	soft_armor = list(MELEE = 10, BULLET = 10, LASER = 10, ENERGY = 10, BOMB = 10, BIO = 10, FIRE = 10, ACID = 10)

/obj/item/clothing/under/marine/veteran //none of these are actual used by marines
	icon = 'icons/obj/clothing/uniforms/ert_uniforms.dmi'
	worn_icon_list = list(
		slot_w_uniform_str = 'icons/mob/clothing/uniforms/ert_uniforms.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	adjustment_variants = list()

/obj/item/clothing/under/marine/veteran/pmc
	name = "\improper PMC fatigues"
	desc = "A white set of fatigues, designed for private security operators. The symbol of the Ninetails corporation is emblazed on the suit."
	icon_state = "pmc_jumpsuit"
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/under/marine/veteran/pmc/holster
	starting_attachments = list(/obj/item/armor_module/storage/uniform/holster)

/obj/item/clothing/under/marine/veteran/pmc/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)
/obj/item/clothing/under/marine/veteran/pmc/leader
	name = "\improper PMC command fatigues"
	desc = "A white set of fatigues, designed for private security operators. The symbol of the Ninetails corporation is emblazed on the suit. This particular suit looks like it belongs to a high-ranking officer."
	icon_state = "officer_jumpsuit"

/obj/item/clothing/under/marine/veteran/pmc/leader/holster
	starting_attachments = list(/obj/item/armor_module/storage/uniform/holster)

/obj/item/clothing/under/marine/veteran/pmc/commando
	name = "\improper PMC commando uniform"
	desc = "An armored uniform worn by Ninetails elite commandos. It is well protected while remaining light and comfortable."
	icon_state = "commando_jumpsuit"
	soft_armor = list(MELEE = 10, BULLET = 10, LASER = 10, ENERGY = 20, BOMB = 10, BIO = 10, FIRE = 20, ACID = 20)
	has_sensor = 0
	starting_attachments = list(/obj/item/armor_module/storage/uniform/holster/deathsquad)

/obj/item/clothing/under/marine/veteran/UPP
	name = "\improper USL fatigues"
	desc = "A well used set of USL fatigues, mass-produced for the pirates of the Lepidoptera."
	icon_state = "upp_uniform"
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE
	has_sensor = 0

/obj/item/clothing/under/marine/veteran/UPP/medic
	name = "\improper USL medic fatigues"
	icon_state = "upp_uniform_medic"

//Freelancers

/obj/item/clothing/under/marine/veteran/freelancer
	name = "freelancer fatigues"
	desc = "A set of loose fitting fatigues, perfect for an informal mercenary. Smells like gunpowder, apple pie, and covered in grease and sake stains."
	icon_state = "freelancer_uniform"
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE
	has_sensor = 0
	starting_attachments = list(/obj/item/armor_module/storage/uniform/holster/freelancer)

/obj/item/clothing/under/marine/veteran/freelancer/veteran
	starting_attachments = list(/obj/item/armor_module/storage/uniform/holster/vp)

/*===========================HELGHAST - MERCENARY================================*/

/obj/item/clothing/under/marine/veteran/mercenary
	name = "mercenary fatigues"
	desc = "A beige suit with a red armband. Sturdy and thick, simply imposing. A mysterious crest emblazons it."
	icon_state = "mercenary_heavy_uniform"
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE
	soft_armor = list(MELEE = 10, BULLET = 10, LASER = 0, ENERGY = 0, BOMB = 10, BIO = 1, FIRE = 0, ACID = 0)

/obj/item/clothing/under/marine/veteran/mercenary/miner
	name = "mercenary miner fatigues"
	desc = "A beige suit with a red armband. The silky thin weaves of its design almost fool its purposes. A mysterious crest emblazons it."
	icon_state = "mercenary_miner_uniform"

/obj/item/clothing/under/marine/veteran/mercenary/engineer
	name = "mercenary engineer fatigues"
	desc = "A blue suit with yellow accents. A work of tailoring hardly seen on combat fatigues. A mysterious crest emblazons it."
	icon_state = "mercenary_engineer_uniform"


////// Civilians /////////


/obj/item/clothing/under/pizza
	name = "pizza delivery uniform"
	desc = "An ill-fitting, slightly stained uniform for a pizza delivery pilot. Smells of cheese."
	icon_state = "redshirt2"
	worn_icon_state = "r_suit"
	has_sensor = 0

/obj/item/clothing/under/colonist
	name = "colonist uniform"
	desc = "A stylish grey-green jumpsuit - standard issue for colonists."
	icon_state = "colonist"
	has_sensor = 2

/obj/item/clothing/under/colonist/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/CM_uniform
	name = "colonial marshal uniform"
	desc = "A blue shirt and tan trousers - the official uniform for a Colonial Marshal."
	icon_state = "marshal"
	has_sensor = 2

/obj/item/clothing/under/liaison_suit
	name = "liaison's tan suit"
	desc = "A stiff, stylish tan suit commonly worn by businessmen from the Ninetails corporation. Expertly crafted to make you look like a prick."
	icon_state = "liaison_regular"

/obj/item/clothing/under/liaison_suit/outing
	name = "liaison's outfit"
	desc = "A casual outfit consisting of a collared shirt and a vest. Looks like something you might wear on the weekends, or on a visit to a derelict colony."
	icon_state = "liaison_outing"

/obj/item/clothing/under/liaison_suit/formal
	name = "liaison's white suit"
	desc = "A formal, white suit, something you'd wear to a funeral, a corporate dinner, or both. Stiff as a board, but makes you feel like rolling out of a Rolls-Royce."
	icon_state = "liaison_formal"

/obj/item/clothing/under/liaison_suit/suspenders
	name = "liaison's attire"
	desc = "A collared shirt, complimented by a pair of suspenders. Worn by Ninetails employees who ask the tough questions. Smells faintly of cigars and bad acting."
	icon_state = "liaison_suspenders"

/obj/item/clothing/under/liaison_suit/galaxy_blue
	name = "\improper De Void of Soul"
	desc = "A suit of stars and high-V gas. One that screams the cosmos and unfathomnable vastness. Earned by only the best of the best."
	icon_state = "liaison_galaxy_blue" // Thanks to Manezinho

/obj/item/clothing/under/liaison_suit/galaxy_red
	name = "\improper Pulsar gonne"
	desc = "A suit of stars and high-V gas. One that screams stellar fusion and re-entry burn. Earned by only the best of the best."
	icon_state = "liaison_galaxy_red" // Thanks to Manezinho

/obj/item/clothing/under/rank/chef/exec
	name = "\improper NineTails suit"
	desc = "A formal white undersuit."
	adjustment_variants = list()

/obj/item/clothing/under/rank/synthetic
	name = "\improper NTC Support Uniform"
	desc = "A simple uniform made for Synthetic crewmembers."
	icon_state = "rdalt"
	adjustment_variants = list()

/obj/item/clothing/under/som
	name = "\improper SOM uniform"
	desc = "The standard uniform of SOM military personnel. Its design shows a clear lineage from mining uniforms used in the old mining colonies."
	icon = 'icons/obj/clothing/uniforms/ert_uniforms.dmi'
	icon_state = "som_uniform"
	worn_icon_list = list(
		slot_w_uniform_str = 'icons/mob/clothing/uniforms/ert_uniforms.dmi',
		slot_l_hand_str = 'icons/mob/inhands/clothing/uniforms_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/clothing/uniforms_right.dmi',
	)
	worn_icon_state = "som_uniform"
	has_sensor = FALSE

/obj/item/clothing/under/som/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/brown_vest)


/obj/item/clothing/under/som/medic
	name = "\improper SOM medical uniform"
	desc = "The standard uniform of SOM military personnel. Its design shows a clear lineage from mining uniforms used in the old mining colonies. This one has medical markings."
	icon_state = "som_uniform_medic"
	worn_icon_state = "som_uniform_medic"

/obj/item/clothing/under/som/medic/vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/white_vest)

/obj/item/clothing/under/som/veteran
	name = "\improper SOM veteran uniform"
	desc = "The standard uniform of SOM military personnel. Its design shows a clear lineage from mining uniforms used in the old mining colonies. This one has markings indicating specialist status."
	icon_state = "som_uniform_veteran"
	worn_icon_state = "som_uniform_veteran"

/obj/item/clothing/under/som/veteran/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/brown_vest)

/obj/item/clothing/under/som/leader
	name = "\improper SOM leader uniform"
	desc = "The standard uniform of SOM military personnel. Its design shows a clear lineage from mining uniforms used in the old mining colonies. This one has leadership markings."
	icon_state = "som_uniform_leader"
	worn_icon_state = "som_uniform_leader"

/obj/item/clothing/under/som/leader/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/brown_vest)

/obj/item/clothing/under/som/officer
	name = "\improper SOM officer uniform"
	desc = "The distinct black uniform of a SOM officer. Usually worn by junior officers."
	icon_state = "som_officer_uniform"
	worn_icon_state = "som_officer_uniform"
	adjustment_variants = list()

/obj/item/clothing/under/som/officer/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/som/officer/senior
	name = "\improper SOM officer uniform"
	desc = "The distinct jacketed black uniform of a SOM officer. Usually worn by senior officers."
	icon_state = "som_senior_officer_uniform"
	worn_icon_state = "som_senior_officer_uniform"

/obj/item/clothing/under/icc
	name = "\improper Modelle/30 uniform"
	desc = "The standard uniform of ICC military personnel. The design is clearly dual purpose, meant to be both a combat uniform and one fit for daily tasks abord ships."
	icon = 'icons/obj/clothing/uniforms/ert_uniforms.dmi'
	icon_state = "icc"
	worn_icon_list = list(
		slot_w_uniform_str = 'icons/mob/clothing/uniforms/ert_uniforms.dmi',
		slot_l_hand_str = 'icons/mob/inhands/items/items_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/items/items_right.dmi',
	)
	worn_icon_state = "icc"
	has_sensor = FALSE

/obj/item/clothing/under/icc/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/brown_vest)

/obj/item/clothing/under/icc/medic
	starting_attachments = list(/obj/item/armor_module/storage/uniform/white_vest)

/obj/item/clothing/under/sectoid
	name = "psionic field"
	desc = "A field of invisible energy, it protects the wearer but prevents any clothing from being worn."
	icon = 'icons/effects/effects.dmi'
	icon_state = "shield-blue"
	item_flags = DELONDROP

/obj/item/clothing/under/sectoid/Initialize(mapload)
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, SECTOID_TRAIT)

/obj/item/clothing/under/marine/robotic
	name = "robotic armor suit mount"
	desc = "Additional structural armor plate used for mounting equipment on a combat robot."
	worn_icon_state = "chest_rig"
	icon_state = "chest_rig"
	adjustment_variants = list()
	species_exception = list(/datum/species/robot)

/obj/item/clothing/under/marine/robotic/mob_can_equip(mob/user, slot, warning = TRUE, override_nodrop = FALSE, bitslot = FALSE)
	. = ..()
	if(!isrobot(user))
		to_chat(user, span_warning("You can't equip this as it requires mounting screws on your body!"))
		return FALSE

/obj/item/clothing/under/marine/robotic/black_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/marine/robotic/brown_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/brown_vest)

/obj/item/clothing/under/marine/robotic/corpman_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/white_vest)

/obj/item/clothing/under/marine/robotic/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/webbing)

/obj/item/clothing/under/marine/robotic/holster
	starting_attachments = list(/obj/item/armor_module/storage/uniform/holster)

/obj/item/clothing/under/marine/specops
	name = "Tactical turtleneck"
	desc = "A turtleneck issued to special operation units"
	icon = 'icons/mob/clothing/uniforms/ert_uniforms.dmi'
	icon_state = "specops_uniform"
	worn_icon_list = list(
		slot_w_uniform_str = 'icons/mob/clothing/uniforms/ert_uniforms.dmi',
	)
	starting_attachments = list(/obj/item/armor_module/storage/uniform/holster)
	worn_icon_state = "specops_uniform"
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE
	has_sensor = 0

/obj/item/clothing/under/vsd
	name = "\improper VSD jumpsuit"
	desc = "The standard uniform for the Vyacheslav Security Detail, weaved with kevlar and marked with blood."
	icon = 'icons/mob/clothing/uniforms/ert_uniforms.dmi'
	icon_state = "vsd_uniform_main"
	worn_icon_state = "vsd_uniform_main"
	worn_icon_list = list(
		slot_w_uniform_str = 'icons/mob/clothing/uniforms/ert_uniforms.dmi',
	)
	has_sensor = FALSE

/obj/item/clothing/under/vsd/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/vsd/medic
	starting_attachments = list(/obj/item/armor_module/storage/uniform/white_vest)

/obj/item/clothing/under/vsd/alt
	icon_state = "vsd_uniform_alt"
	worn_icon_state = "vsd_uniform_alt"

/obj/item/clothing/under/vsd/alt/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/vsd/alt/white_webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/white_vest)

/obj/item/clothing/under/vsd/officer
	name = "VSD officer jumpsuit"
	desc = "The standard uniform for officers in the Vyacheslav Security Detail, weaved with kevlar and marked with blood."
	icon_state = "vsd_uniform_officer"
	worn_icon_state = "vsd_uniform_officer"

/obj/item/clothing/under/vsd/officer/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/vsd/secondary
	name = "VSD 'mixed' jumpsuit"
	icon_state = "vsd_uniform_secondary"
	worn_icon_state = "vsd_uniform_secondary"

/obj/item/clothing/under/vsd/secondary/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/vsd/upp
	name = "VSD 'USL' jumpsuit"
	desc = "A standard uniform for a division in the Vyacheslav Security Detail, it's colors feel reminiscent."
	icon_state = "upp_retired"
	worn_icon_state = "upp_retired"

/obj/item/clothing/under/vsd/upp/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/vsd/upp/alt
	icon_state = "upp_secondary"
	worn_icon_state = "upp_secondary"

/obj/item/clothing/under/vsd/upp/alt/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/vsd/upp/alt/white_webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/white_vest)

/obj/item/clothing/under/vsd/upp/officer
	name = "VSD 'USL' officer jumpsuit"
	desc = "A standard uniform for a officer in a division of the Vyacheslav Security Detail, it's colors feel reminiscent."
	icon_state = "upp_retired_officer"
	worn_icon_state = "upp_retired_officer"

/obj/item/clothing/under/vsd/upp/officer/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/vsd/shirt
	name = "VSD shirt"
	icon_state = "vsd_shirt"
	worn_icon_state = "vsd_shirt"

/obj/item/clothing/under/vsd/shirt/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/vsd/sleeveless
	name = "VSD sleeveless shirt"
	icon_state = "vsd_shirt_sleeveless"
	worn_icon_state = "vsd_shirt_sleeveless"

/obj/item/clothing/under/vsd/juggernaut
	name = "VSD overalls"
	icon_state = "vsd_alt_juggernaut"
	worn_icon_state = "vsd_alt_juggernaut"

/obj/item/clothing/under/vsd/juggernaut/webbing
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

//TDF
/obj/item/clothing/under/tdf
	name = "\improper TDF uniform"
	desc = "The standard uniform of TDF military personnel. A very easy to recognize design with its distinct blues to represent the TDF."
	icon = 'icons/obj/clothing/uniforms/ert_uniforms.dmi'
	icon_state = "tdf_uniform"
	worn_icon_list = list(
		slot_w_uniform_str = 'icons/mob/clothing/uniforms/ert_uniforms.dmi',
		slot_l_hand_str = 'icons/mob/inhands/clothing/uniforms_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/clothing/uniforms_right.dmi',
	)
	worn_icon_state = "tdf_uniform"
	siemens_coefficient = 0.9
	has_sensor = 2

/obj/item/clothing/under/tdf/black_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/black_vest)

/obj/item/clothing/under/tdf/brown_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/brown_vest)

/obj/item/clothing/under/tdf/corpman_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/white_vest)

/obj/item/clothing/under/tdf/holster
	starting_attachments = list(/obj/item/armor_module/storage/uniform/holster)

/obj/item/clothing/under/tdf/medic
	icon_state = "tdf_uniform_medic"
	worn_icon_state = "tdf_uniform_medic"

/obj/item/clothing/under/tdf/medic/corpman_vest
	starting_attachments = list(/obj/item/armor_module/storage/uniform/white_vest)
