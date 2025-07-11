/**
 * Mecha Equipment
 * All mech equippables are currently childs of this
 */
/obj/item/mecha_parts/mecha_equipment
	name = "mecha equipment"
	icon = 'icons/mecha/mecha_equipment.dmi'
	icon_state = "mecha_equip"
	force = 5
	max_integrity = 100
	/// Determines what "slot" this attachment will try to attach to on a mech
	var/equipment_slot = MECHA_WEAPON
	///Cooldown in ticks required between activations of the equipment
	var/equip_cooldown = 0
	///used for equipment that can be turned on/off, boolean
	var/activated = TRUE
	///Chassis power cell quantity used on activation
	var/energy_drain = 0
	///Reference to mecha that this equipment is currently attached to
	var/obj/vehicle/sealed/mecha/chassis
	///Bitflag. Determines the range of the equipment.
	var/range = MECHA_MELEE
	/// Bitflag. Used by exosuit fabricator to assign sub-categories based on which exosuits can equip this.
	var/mech_flags = ALL
	///boolean: FALSE if this equipment can not be removed/salvaged
	var/detachable = TRUE
	///Boolean: whether a pacifist can use this equipment
	var/harmful = FALSE
	///Sound file: Sound to play when this equipment is destroyed while still attached to the mech
	destroy_sound = 'sound/mecha/critdestr.ogg'
	///The weight that we contribute to the max limit, if this is equipped to a greyscale mech
	var/weight = 10
	///the key will will use for weapon cooldowns, usually the type, but can be a string
	var/cooldown_key

/obj/item/mecha_parts/mecha_equipment/Initialize(mapload)
	. = ..()
	if(!cooldown_key)
		cooldown_key = type

/obj/item/mecha_parts/mecha_equipment/Destroy()
	if(chassis)
		if(LAZYLEN(chassis.occupants))
			to_chat(chassis.occupants, "[icon2html(src, chassis.occupants)][span_danger("[src] is destroyed!")]")
			playsound(chassis, destroy_sound, 50)
		detach(get_turf(src))
		log_message("[src] is destroyed.", LOG_MECHA)
	return ..()

/obj/item/mecha_parts/mecha_equipment/try_attach_part(mob/user, obj/vehicle/sealed/mecha/M, attach_right = FALSE)
	if(can_attach(M, attach_right))
		if(!user.temporarilyRemoveItemFromInventory(src))
			return FALSE
		attach(M, attach_right)
		user.visible_message(span_notice("[user] attaches [src] to [M]."), span_notice("You attach [src] to [M]."))
		return TRUE
	to_chat(user, span_warning("You are unable to attach [src] to [M]!"))
	return FALSE

/obj/item/mecha_parts/mecha_equipment/ui_act(action, list/params, datum/tgui/ui, datum/ui_state/state)
	. = ..()
	switch(action)
		if("detach")
			detach(get_turf(src))
			return TRUE
		if("toggle")
			activated = !activated
			return TRUE
		if("repair")
			ui.close() // allow watching for baddies and the ingame effects
			chassis.balloon_alert(usr, "starting repair")
			while(do_after(usr, 1 SECONDS, chassis) && obj_integrity < max_integrity)
				repair_damage(30)
			if(obj_integrity == max_integrity)
				balloon_alert(usr, "repair complete")
			return FALSE

/**
 * Checks whether this mecha equipment can be activated
 * Returns a bool
 * Arguments:
 * * target: atom we are activating/clicked on
 */
/obj/item/mecha_parts/mecha_equipment/proc/action_checks(atom/target, ignore_cooldown = FALSE)
	if(!target)
		return FALSE
	if(!chassis)
		return FALSE
	if(!activated)
		return FALSE
	if(energy_drain && !chassis?.has_charge(energy_drain))
		return FALSE
	if(chassis.is_currently_ejecting)
		return FALSE
	if(chassis.equipment_disabled)
		to_chat(chassis.occupants, span_warning("Error -- Equipment control unit is unresponsive."))
		return FALSE
	if(obj_integrity <= 1)
		to_chat(chassis.occupants, span_warning("Error -- Equipment critically damaged."))
		return FALSE
	if(!ignore_cooldown && TIMER_COOLDOWN_CHECK(chassis, COOLDOWN_MECHA_EQUIPMENT(cooldown_key)))
		return FALSE
	if(!istype(chassis, /obj/vehicle/sealed/mecha/combat/greyscale))
		return TRUE
	var/obj/vehicle/sealed/mecha/combat/greyscale/grey = chassis
	var/datum/mech_limb/arm/holding
	if(grey.equip_by_category[MECHA_R_ARM] == src)
		holding = grey.limbs[MECH_GREY_R_ARM]
	else
		holding = grey.limbs[MECH_GREY_L_ARM]
	if(holding.disabled)
		return FALSE
	return TRUE

/obj/item/mecha_parts/mecha_equipment/proc/action(mob/source, atom/target, list/modifiers)
	TIMER_COOLDOWN_START(chassis, COOLDOWN_MECHA_EQUIPMENT(cooldown_key), equip_cooldown)//Cooldown is on the MECH so people dont bypass it by switching equipment
	chassis.use_power(energy_drain)
	return TRUE

/**
 * Cooldown proc variant for using do_afters between activations instead of timers
 * Example of usage is mech drills, rcds
 * arguments:
 * * target: targetted atom for action activation
 * * user: occupant to display do after for
 * * interaction_key: interaction key to pass to [/proc/do_after]
 */
/obj/item/mecha_parts/mecha_equipment/proc/do_after_cooldown(atom/target, mob/user, interaction_key)
	if(!chassis)
		return FALSE
	chassis.use_power(energy_drain)
	return do_after(user, equip_cooldown, target, extra_checks = CALLBACK(src, PROC_REF(do_after_checks), target))

///Do after wrapper for mecha equipment
/obj/item/mecha_parts/mecha_equipment/proc/do_after_mecha(atom/target, mob/user, delay)
	return do_after(user, delay, target, extra_checks = CALLBACK(src, PROC_REF(do_after_checks), target))

/// do after checks for the mecha equipment do afters
/obj/item/mecha_parts/mecha_equipment/proc/do_after_checks(atom/target)
	return chassis && (get_dir(chassis, target) & chassis.dir)

/obj/item/mecha_parts/mecha_equipment/proc/can_attach(obj/vehicle/sealed/mecha/M, attach_right = FALSE)
	return default_can_attach(M, attach_right)

/obj/item/mecha_parts/mecha_equipment/proc/default_can_attach(obj/vehicle/sealed/mecha/mech, attach_right = FALSE)
	if(!(mech_flags & mech.mech_type))
		return FALSE
	if(equipment_slot == MECHA_WEAPON)
		if(attach_right)
			if(mech.equip_by_category[MECHA_R_ARM])
				return FALSE
		else
			if(mech.equip_by_category[MECHA_L_ARM])
				return FALSE
		return TRUE
	///tgmc start
	if(equipment_slot == MECHA_BACK)
		if(attach_right)
			if(mech.equip_by_category[MECHA_R_BACK])
				return FALSE
		else
			if(mech.equip_by_category[MECHA_L_BACK])
				return FALSE
		return TRUE
	if(mech.mech_type & EXOSUIT_MODULE_GREYSCALE)
		var/obj/vehicle/sealed/mecha/combat/greyscale/greyscale = mech
		var/datum/mech_limb/legs/legs = greyscale.limbs[MECH_GREY_LEGS]
		if(!legs)
			return FALSE
		if((weight + greyscale.weight) > legs.max_weight)
			return FALSE
	/// tgmc end
	return length(mech.equip_by_category[equipment_slot]) < mech.max_equip_by_category[equipment_slot]

/obj/item/mecha_parts/mecha_equipment/proc/attach(obj/vehicle/sealed/mecha/M, attach_right = FALSE)
	LAZYADD(M.flat_equipment, src)
	var/to_equip_slot = equipment_slot
	if(equipment_slot == MECHA_WEAPON)
		if(attach_right)
			to_equip_slot = MECHA_R_ARM
		else
			to_equip_slot = MECHA_L_ARM
	else if(equipment_slot == MECHA_BACK)
		if(attach_right)
			to_equip_slot = MECHA_R_BACK
		else
			to_equip_slot = MECHA_L_BACK
	if(islist(M.equip_by_category[to_equip_slot]))
		M.equip_by_category[to_equip_slot] += src
	else
		M.equip_by_category[to_equip_slot] = src
	//tgmc changes start
	M.move_delay += slowdown
	M.update_icon()
	//tgmc changes end
	chassis = M
	forceMove(M)
	log_message("[src] initialized.", LOG_MECHA)

/**
 * called to detach this equipment
 * Args:
 * * moveto: optional target to move this equipment to
 */
/obj/item/mecha_parts/mecha_equipment/proc/detach(atom/moveto)
	moveto = moveto || get_turf(chassis)
	forceMove(moveto)
	LAZYREMOVE(chassis.flat_equipment, src)
	var/to_unequip_slot = equipment_slot
	if(equipment_slot == MECHA_WEAPON)
		if(chassis.equip_by_category[MECHA_R_ARM] == src)
			to_unequip_slot = MECHA_R_ARM
		else
			to_unequip_slot = MECHA_L_ARM
	else if(equipment_slot == MECHA_BACK)
		if(chassis.equip_by_category[MECHA_R_BACK] == src)
			to_unequip_slot = MECHA_R_BACK
		else
			to_unequip_slot = MECHA_L_BACK
	if(islist(chassis.equip_by_category[to_unequip_slot]))
		chassis.equip_by_category[to_unequip_slot] -= src
	else
		chassis.equip_by_category[to_unequip_slot] = null
	log_message("[src] removed from equipment.", LOG_MECHA)
	//tgmc changes start
	chassis.move_delay -= slowdown
	chassis.update_icon()
	//tgmc changes end
	chassis = null

/**
 * ## get_snowflake_data
 * handles the returning of snowflake data required by the UI of the mecha
 * not the prettiest of procs honeslty
 * returns:
 * * an assoc list
 * * must include an list("snowflake_id" = snowflake_id)
 */
/obj/item/mecha_parts/mecha_equipment/proc/get_snowflake_data()
	return list()

///Tries to rearm the module
/obj/item/mecha_parts/mecha_equipment/proc/attempt_rearm()
	return FALSE

///Rearms the module
/obj/item/mecha_parts/mecha_equipment/proc/rearm()
	return FALSE

///Checks if the module actually need rearming
/obj/item/mecha_parts/mecha_equipment/proc/needs_rearm()
	return FALSE
