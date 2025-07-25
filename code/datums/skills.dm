#define SKILLSID "skills-[unarmed]-[melee_weapons]\
-[combat]-[pistols]-[shotguns]-[rifles]-[smgs]-[heavy_weapons]-[smartgun]\
-[engineer]-[construction]-[leadership]-[medical]-[surgery]-[pilot]-[police]-[powerloader]-[large_vehicle]-[mech]-[stamina]"

#define SKILLSIDSRC(S) "skills-[S.unarmed]-[S.melee_weapons]\
-[S.combat]-[S.pistols]-[S.shotguns]-[S.rifles]-[S.smgs]-[S.heavy_weapons]-[S.smartgun]\
-[S.engineer]-[S.construction]-[S.leadership]-[S.medical]-[S.surgery]-[S.pilot]-[S.police]-[S.powerloader]-[S.large_vehicle]-[S.mech]-[S.stamina]"

/proc/getSkills(unarmed = 0, melee_weapons = 0,\
combat = 0, pistols = 0, shotguns = 0, rifles = 0, smgs = 0, heavy_weapons = 0, smartgun = 0,\
engineer = 0, construction = 0, leadership = 0, medical = 0, surgery = 0, pilot = 0, police = 0, powerloader = 0, large_vehicle = 0, mech = 0, stamina = 0)
	. = locate(SKILLSID)
	if(!.)
		. = new /datum/skills(unarmed, melee_weapons,\
			combat, pistols, shotguns, rifles, smgs, heavy_weapons, smartgun,\
			engineer, construction, leadership, medical, surgery, pilot, police, powerloader, large_vehicle, mech, stamina)

/proc/getSkillsType(skills_type = /datum/skills)
	var/datum/skills/new_skill = skills_type
	var/unarmed = initial(new_skill.unarmed)
	var/melee_weapons = initial(new_skill.melee_weapons)
	var/combat = initial(new_skill.combat)
	var/pistols = initial(new_skill.pistols)
	var/shotguns = initial(new_skill.shotguns)
	var/rifles = initial(new_skill.rifles)
	var/smgs = initial(new_skill.smgs)
	var/heavy_weapons = initial(new_skill.heavy_weapons)
	var/smartgun = initial(new_skill.smartgun)
	var/engineer = initial(new_skill.engineer)
	var/construction = initial(new_skill.construction)
	var/leadership = initial(new_skill.leadership)
	var/medical = initial(new_skill.medical)
	var/surgery = initial(new_skill.surgery)
	var/pilot = initial(new_skill.pilot)
	var/police = initial(new_skill.police)
	var/powerloader = initial(new_skill.powerloader)
	var/large_vehicle = initial(new_skill.large_vehicle)
	var/stamina = initial(new_skill.stamina)
	var/mech = initial(new_skill.mech)
	. = locate(SKILLSID)
	if(!.)
		. = new skills_type

/datum/skills
	datum_flags = DF_USE_TAG
	var/name = "Default/Custom"
	var/unarmed = SKILL_UNARMED_DEFAULT
	var/melee_weapons = SKILL_MELEE_DEFAULT

	var/combat = SKILL_COMBAT_DEFAULT
	var/pistols = SKILL_PISTOLS_DEFAULT
	var/shotguns = SKILL_SHOTGUNS_DEFAULT
	var/rifles = SKILL_RIFLES_DEFAULT
	var/smgs = SKILL_SMGS_DEFAULT
	var/heavy_weapons = SKILL_HEAVY_WEAPONS_DEFAULT
	var/smartgun = SKILL_SMART_DEFAULT

	var/engineer = SKILL_ENGINEER_DEFAULT
	var/construction = SKILL_CONSTRUCTION_DEFAULT
	var/leadership = SKILL_LEAD_NOVICE
	var/medical = SKILL_MEDICAL_UNTRAINED
	var/surgery = SKILL_SURGERY_DEFAULT
	var/pilot = SKILL_PILOT_DEFAULT
	var/police = SKILL_POLICE_DEFAULT
	var/powerloader = SKILL_POWERLOADER_DEFAULT
	var/large_vehicle = SKILL_LARGE_VEHICLE_DEFAULT
	///whether we can use greyscale mechs or not
	var/mech = SKILL_MECH_DEFAULT
	///Effects stamina regen rate and regen delay
	var/stamina = SKILL_STAMINA_DEFAULT


/datum/skills/New(unarmed, melee_weapons,\
combat, pistols, shotguns, rifles, smgs, heavy_weapons, smartgun,\
engineer, construction, leadership, medical, surgery, pilot, police, powerloader, large_vehicle, mech, stamina)
	if(!isnull(unarmed))
		src.unarmed = unarmed
	if(!isnull(melee_weapons))
		src.melee_weapons = melee_weapons
	if(!isnull(combat))
		src.combat = combat
	if(!isnull(pistols))
		src.pistols = pistols
	if(!isnull(shotguns))
		src.shotguns = shotguns
	if(!isnull(rifles))
		src.rifles = rifles
	if(!isnull(smgs))
		src.smgs = smgs
	if(!isnull(heavy_weapons))
		src.heavy_weapons = heavy_weapons
	if(!isnull(smartgun))
		src.smartgun = smartgun
	if(!isnull(engineer))
		src.engineer = engineer
	if(!isnull(construction))
		src.construction = construction
	if(!isnull(leadership))
		src.leadership = leadership
	if(!isnull(medical))
		src.medical = medical
	if(!isnull(surgery))
		src.surgery = surgery
	if(!isnull(pilot))
		src.pilot = pilot
	if(!isnull(police))
		src.police = police
	if(!isnull(powerloader))
		src.powerloader = powerloader
	if(!isnull(large_vehicle))
		src.large_vehicle = large_vehicle
	if(!isnull(mech))
		src.mech = mech
	if(!isnull(stamina))
		src.stamina = stamina
	tag = SKILLSIDSRC(src)

/// returns/gets a new skills datum with values changed according to the args passed
/datum/skills/proc/modifyRating(unarmed, melee_weapons,\
combat, pistols, shotguns, rifles, smgs, heavy_weapons, smartgun,\
engineer, construction, leadership, medical, surgery, pilot, police, powerloader, large_vehicle, mech, stamina)
	return getSkills(src.unarmed+unarmed,\
	src.melee_weapons+melee_weapons,\
	src.combat+combat,\
	src.pistols+pistols,\
	src.shotguns+shotguns,\
	src.rifles+rifles,\
	src.smgs+smgs,\
	src.heavy_weapons+heavy_weapons,\
	src.smartgun+smartgun,\
	src.engineer+engineer,\
	src.construction+construction,\
	src.leadership+leadership,\
	src.medical+medical,\
	src.surgery+surgery,\
	src.pilot+pilot,\
	src.police+police,\
	src.powerloader+powerloader,\
	src.large_vehicle+large_vehicle,\
	src.mech+mech,\
	src.stamina+stamina)

/// acts as [/proc/modifyRating] but instead modifies all values rather than several specific ones
/datum/skills/proc/modifyAllRatings(difference)
	return getSkills(src.unarmed+difference,\
	src.melee_weapons+difference,\
	src.combat+difference,\
	src.pistols+difference,\
	src.shotguns+difference,\
	src.rifles+difference,\
	src.smgs+difference,\
	src.heavy_weapons+difference,\
	src.smartgun+difference,\
	src.engineer+difference,\
	src.construction+difference,\
	src.leadership+difference,\
	src.medical+difference,\
	src.surgery+difference,\
	src.pilot+difference,\
	src.police+difference,\
	src.powerloader+difference,\
	src.large_vehicle+difference,\
	src.mech+difference,\
	src.stamina+difference)

/// acts as [/proc/modifyRating] but sets the rating directly rather than modify it
/datum/skills/proc/setRating(unarmed, melee_weapons,\
combat, pistols, shotguns, rifles, smgs, heavy_weapons, smartgun,\
engineer, construction, leadership, medical, surgery, pilot, police, powerloader, large_vehicle, mech, stamina)
	return getSkills((isnull(unarmed) ? src.unarmed : unarmed),\
		(isnull(melee_weapons) ? src.melee_weapons : melee_weapons),\
		(isnull(combat) ? src.combat : combat),\
		(isnull(pistols) ? src.pistols : pistols),\
		(isnull(shotguns) ? src.shotguns : shotguns),\
		(isnull(rifles) ? src.rifles : rifles),\
		(isnull(smgs) ? src.smgs : smgs),\
		(isnull(heavy_weapons) ? src.heavy_weapons : heavy_weapons),\
		(isnull(smartgun) ? src.smartgun : smartgun),\
		(isnull(engineer) ? src.engineer : engineer),\
		(isnull(construction) ? src.construction : construction),\
		(isnull(leadership) ? src.leadership : leadership),\
		(isnull(medical) ? src.medical : medical),\
		(isnull(surgery) ? src.surgery : surgery),\
		(isnull(pilot) ? src.pilot : pilot),\
		(isnull(police) ? src.police : police),\
		(isnull(powerloader) ? src.powerloader : powerloader),\
		(isnull(large_vehicle) ? src.large_vehicle : large_vehicle),\
		(isnull(mech) ? src.mech : mech),\
		(isnull(stamina) ? src.stamina : stamina))

/datum/skills/vv_edit_var(var_name, var_value)
	if(var_name == NAMEOF(src, tag))
		return FALSE
	. = ..()
	tag = SKILLSID

#undef SKILLSID

///returns how many % of skills the user has of max_rating. rating should be a SKILL_X define
/datum/skills/proc/getPercent(rating, max_rating)
	return CLAMP01(max(vars[rating], 0) * 100 / max_rating * 0.01)

/// returns number value of the skill rating. rating should be a SKILL_X define
/datum/skills/proc/getRating(rating)
	return vars[rating]

/// returns an assoc list (SKILL_X = VALUE) of all skills for this skill datum
/datum/skills/proc/getList()
	return list(
		SKILL_UNARMED = unarmed,
		SKILL_MELEE_WEAPONS = melee_weapons,
		SKILL_COMBAT = combat,
		SKILL_PISTOLS = pistols,
		SKILL_SHOTGUNS = shotguns,
		SKILL_RIFLES = rifles,
		SKILL_SMGS = smgs,
		SKILL_HEAVY_WEAPONS = heavy_weapons,
		SKILL_SMARTGUN = smartgun,
		SKILL_ENGINEER = engineer,
		SKILL_CONSTRUCTION = construction,
		SKILL_LEADERSHIP = leadership,
		SKILL_MEDICAL = medical,
		SKILL_SURGERY = surgery,
		SKILL_PILOT = pilot,
		SKILL_POLICE = police,
		SKILL_POWERLOADER = powerloader,
		SKILL_LARGE_VEHICLE = large_vehicle,
		SKILL_MECH = mech,
		SKILL_STAMINA = stamina,
	)

/datum/skills/slut
	name = SQUAD_SLUT
	medical = SKILL_MEDICAL_NOVICE //gotta keep that puss tended
	combat = SKILL_COMBAT_DEFAULT //can still use guns
	construction = SKILL_CONSTRUCTION_METAL //build a cum shack
	stamina = SKILL_STAMINA_TRAINED //fucking is hard work

/datum/skills/civilian
	name = "Civilian"
	unarmed = SKILL_UNARMED_WEAK
	combat = SKILL_COMBAT_UNTRAINED
	melee_weapons = SKILL_MELEE_WEAK

/datum/skills/civilian/survivor
	name = "Survivor"
	engineer = SKILL_ENGINEER_ENGI //to hack airlocks so they're never stuck in a room.
	combat = SKILL_COMBAT_DEFAULT
	construction = SKILL_CONSTRUCTION_METAL
	medical = SKILL_MEDICAL_NOVICE

/datum/skills/civilian/worker
	name = "Survivor"
	combat = SKILL_COMBAT_UNTRAINED
	pistols = SKILL_PISTOLS_TRAINED
	medical = SKILL_MEDICAL_COMPETENT
	construction = SKILL_CONSTRUCTION_MASTER
	engineer = SKILL_ENGINEER_ENGI
	powerloader = SKILL_POWERLOADER_MASTER

/datum/skills/civilian/survivor/master
	name = "Survivor"
	combat = SKILL_COMBAT_DEFAULT
	medical = SKILL_MEDICAL_PRACTICED
	construction = SKILL_CONSTRUCTION_ADVANCED
	engineer = SKILL_ENGINEER_ENGI
	powerloader = SKILL_POWERLOADER_MASTER
	rifles = SKILL_RIFLES_TRAINED
	melee_weapons = SKILL_MELEE_TRAINED
	stamina = SKILL_STAMINA_TRAINED

/datum/skills/civilian/survivor/doctor
	name = "Survivor Doctor"
	medical = SKILL_MEDICAL_COMPETENT
	surgery = SKILL_SURGERY_EXPERT
	combat = SKILL_COMBAT_UNTRAINED

/datum/skills/civilian/survivor/scientist
	name = "Survivor Scientist"
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_PROFESSIONAL
	combat = SKILL_COMBAT_UNTRAINED

/datum/skills/civilian/survivor/chef
	name = "Survivor Chef"
	melee_weapons = SKILL_MELEE_TRAINED
	combat = SKILL_COMBAT_UNTRAINED

/datum/skills/civilian/survivor/miner
	name = "Survivor Miner"
	powerloader = SKILL_POWERLOADER_TRAINED
	melee_weapons = SKILL_MELEE_TRAINED

/datum/skills/civilian/survivor/atmos
	name = "Survivor Atmos Tech"
	engineer = SKILL_ENGINEER_EXPERT
	construction = SKILL_CONSTRUCTION_EXPERT

/datum/skills/civilian/survivor/marshal
	name = "Survivor Marshal"
	unarmed = SKILL_UNARMED_MP
	combat = SKILL_COMBAT_DEFAULT
	melee_weapons = SKILL_MELEE_DEFAULT
	pistols = SKILL_PISTOLS_TRAINED
	police = SKILL_POLICE_MP

/datum/skills/combat_engineer
	name = SQUAD_ENGINEER
	engineer = SKILL_ENGINEER_ENGI
	construction = SKILL_CONSTRUCTION_ADVANCED
	leadership = SKILL_LEAD_BEGINNER
	powerloader = SKILL_POWERLOADER_DABBLING

/datum/skills/combat_engineer/pmc
	name = "PMC Engineer"
	unarmed = SKILL_UNARMED_TRAINED
	medical = SKILL_MEDICAL_NOVICE
	stamina = SKILL_STAMINA_TRAINED

/datum/skills/combat_medic
	name = SQUAD_CORPSMAN
	leadership = SKILL_LEAD_BEGINNER
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_TRAINED

/datum/skills/combat_medic/crafty
	name = "Crafty Combat Medic"
	construction = SKILL_CONSTRUCTION_METAL
	engineer = SKILL_ENGINEER_METAL
	surgery = SKILL_SURGERY_PROFESSIONAL

/datum/skills/combat_medic/pmc
	name = "PMC Medic"
	unarmed = SKILL_UNARMED_TRAINED
	engineer = SKILL_ENGINEER_METAL
	construction = SKILL_ENGINEER_METAL
	stamina = SKILL_STAMINA_TRAINED
	medical = SKILL_MEDICAL_EXPERT

/datum/skills/combat_medic/special_forces
	name = "Special Operations Medic"
	construction = SKILL_CONSTRUCTION_METAL
	engineer = SKILL_ENGINEER_METAL
	smgs = SKILL_SMGS_TRAINED

/datum/skills/doctor
	name = "Doctor"
	unarmed = SKILL_UNARMED_WEAK
	combat = SKILL_COMBAT_UNTRAINED
	medical = SKILL_MEDICAL_EXPERT
	surgery = SKILL_SURGERY_EXPERT
	melee_weapons = SKILL_MELEE_WEAK

/datum/skills/researcher
	name = "Researcher"
	unarmed = SKILL_UNARMED_WEAK
	combat = SKILL_COMBAT_UNTRAINED
	medical = SKILL_MEDICAL_EXPERT
	surgery = SKILL_SURGERY_PROFESSIONAL
	melee_weapons = SKILL_MELEE_WEAK

/datum/skills/cmo
	name = "CMO"
	unarmed = SKILL_UNARMED_WEAK
	combat = SKILL_COMBAT_UNTRAINED
	leadership = SKILL_LEAD_TRAINED
	medical = SKILL_MEDICAL_MASTER
	surgery = SKILL_SURGERY_MASTER
	melee_weapons = SKILL_MELEE_WEAK
	police = SKILL_POLICE_MP

/datum/skills/ai
	name = "AI"
	engineer = SKILL_ENGINEER_EXPERT
	construction = SKILL_CONSTRUCTION_EXPERT
	combat = SKILL_COMBAT_UNTRAINED
	medical = SKILL_MEDICAL_EXPERT
	leadership = SKILL_LEAD_MASTER
	surgery = SKILL_SURGERY_EXPERT
	pilot = SKILL_PILOT_TRAINED
	police = SKILL_POLICE_MP
	powerloader = SKILL_POWERLOADER_MASTER

/datum/skills/synthetic
	name = SYNTHETIC
	engineer = SKILL_ENGINEER_EXPERT
	construction = SKILL_CONSTRUCTION_EXPERT
	combat = SKILL_COMBAT_DEFAULT
	medical = SKILL_MEDICAL_EXPERT
	unarmed = SKILL_UNARMED_MASTER
	surgery = SKILL_SURGERY_EXPERT
	pilot = SKILL_PILOT_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	police = SKILL_POLICE_MP
	powerloader = SKILL_POWERLOADER_MASTER

/datum/skills/early_synthetic
	name = "Early Synthetic"
	engineer = SKILL_ENGINEER_MASTER
	construction = SKILL_CONSTRUCTION_MASTER
	combat = SKILL_COMBAT_UNTRAINED
	medical = SKILL_MEDICAL_COMPETENT
	unarmed = SKILL_UNARMED_MASTER
	surgery = SKILL_SURGERY_PROFESSIONAL
	pilot = SKILL_PILOT_TRAINED
	melee_weapons = SKILL_MELEE_WEAK
	pistols = SKILL_PISTOLS_TRAINED
	police = SKILL_POLICE_MP
	powerloader = SKILL_POWERLOADER_MASTER

/datum/skills/captain
	name = CAPTAIN
	leadership = SKILL_LEAD_MASTER
	police = SKILL_POLICE_MP
	medical = SKILL_MEDICAL_COMPETENT
	surgery = SKILL_SURGERY_AMATEUR
	engineer = SKILL_ENGINEER_ENGI
	construction = SKILL_CONSTRUCTION_ADVANCED
	powerloader = SKILL_POWERLOADER_MASTER
	combat = SKILL_COMBAT_TRAINED
	smartgun = SKILL_SMART_TRAINED

/datum/skills/ceo
	name = CHIEF_EXECUTIVE_OFFICER
	leadership = SKILL_LEAD_MASTER
	police = SKILL_POLICE_MP
	medical = SKILL_MEDICAL_MASTER
	surgery = SKILL_SURGERY_MASTER
	engineer = SKILL_ENGINEER_ENGI
	construction = SKILL_CONSTRUCTION_ADVANCED
	powerloader = SKILL_POWERLOADER_MASTER
	unarmed = SKILL_UNARMED_MASTER
	melee_weapons = SKILL_MELEE_SUPER
	combat = SKILL_COMBAT_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	smgs = SKILL_SMGS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED
	smartgun = SKILL_SMART_TRAINED

/datum/skills/fo
	name = FIELD_COMMANDER
	engineer = SKILL_ENGINEER_ENGI //to fix CIC apc.
	construction = SKILL_CONSTRUCTION_PLASTEEL
	leadership = SKILL_LEAD_MASTER
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_TRAINED
	melee_weapons = SKILL_MELEE_SUPER
	combat = SKILL_COMBAT_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	smgs = SKILL_SMGS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED
	police = SKILL_POLICE_MP
	powerloader = SKILL_POWERLOADER_TRAINED
	unarmed = SKILL_UNARMED_MASTER
	smartgun = SKILL_SMART_TRAINED

/datum/skills/veteran
	name = "TGMC Retired Veteran"
	engineer = SKILL_ENGINEER_ENGI //to fix CIC apc.
	construction = SKILL_CONSTRUCTION_PLASTEEL
	leadership = SKILL_LEAD_MASTER
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_AMATEUR
	police = SKILL_POLICE_MP
	powerloader = SKILL_POWERLOADER_TRAINED
	unarmed = SKILL_UNARMED_TRAINED
	combat = SKILL_COMBAT_TRAINED
	rifles = SKILL_RIFLES_TRAINED

/datum/skills/veteran_captain
	name = "TGMC Retired Veteran Expedition Leader"
	leadership = SKILL_LEAD_MASTER
	police = SKILL_POLICE_MP
	medical = SKILL_MEDICAL_COMPETENT
	surgery = SKILL_SURGERY_AMATEUR
	engineer = SKILL_ENGINEER_ENGI
	construction = SKILL_CONSTRUCTION_ADVANCED
	powerloader = SKILL_POWERLOADER_MASTER
	combat = SKILL_COMBAT_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	smartgun = SKILL_SMART_TRAINED

/datum/skills/so
	name = STAFF_OFFICER
	engineer = SKILL_ENGINEER_ENGI
	construction = SKILL_CONSTRUCTION_PLASTEEL
	engineer = SKILL_ENGINEER_PLASTEEL
	leadership = SKILL_LEAD_EXPERT
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_AMATEUR
	powerloader = SKILL_POWERLOADER_TRAINED
	police = SKILL_POLICE_MP
	smartgun = SKILL_SMART_TRAINED

/datum/skills/pilot
	name = PILOT_OFFICER
	pilot = SKILL_PILOT_TRAINED
	powerloader = SKILL_POWERLOADER_PRO
	leadership = SKILL_LEAD_TRAINED
	engineer = SKILL_ENGINEER_PLASTEEL
	construction = SKILL_CONSTRUCTION_PLASTEEL

/datum/skills/transportofficer
	name = TRANSPORT_OFFICER
	construction = SKILL_CONSTRUCTION_ADVANCED
	powerloader = SKILL_POWERLOADER_PRO
	engineer = SKILL_ENGINEER_ENGI
	leadership = SKILL_LEAD_TRAINED

/datum/skills/mech_pilot
	name = MECH_PILOT
	engineer = SKILL_ENGINEER_ENGI
	construction = SKILL_CONSTRUCTION_ADVANCED
	powerloader = SKILL_POWERLOADER_PRO
	mech = SKILL_MECH_TRAINED

/datum/skills/assault_crewman
	name = ASSAULT_CREWMAN
	engineer = SKILL_ENGINEER_METAL
	construction = SKILL_CONSTRUCTION_METAL
	powerloader = SKILL_POWERLOADER_PRO
	large_vehicle = SKILL_LARGE_VEHICLE_VETERAN
	mech = SKILL_MECH_TRAINED

/datum/skills/transport_crewman
	name = TRANSPORT_CREWMAN
	engineer = SKILL_ENGINEER_METAL
	construction = SKILL_CONSTRUCTION_METAL
	powerloader = SKILL_POWERLOADER_PRO
	large_vehicle = SKILL_LARGE_VEHICLE_EXPERIENCED

/datum/skills/ce
	name = CHIEF_SHIP_ENGINEER
	engineer = SKILL_ENGINEER_MASTER
	construction = SKILL_CONSTRUCTION_MASTER
	leadership = SKILL_LEAD_TRAINED
	police = SKILL_POLICE_MP
	powerloader = SKILL_POWERLOADER_MASTER

/datum/skills/ro
	name = "Requisition Officer"
	construction = SKILL_CONSTRUCTION_PLASTEEL
	leadership = SKILL_LEAD_TRAINED
	powerloader = SKILL_POWERLOADER_MASTER
	police = SKILL_POLICE_MP

/datum/skills/st
	name = SHIP_TECH
	engineer = SKILL_ENGINEER_EXPERT
	construction = SKILL_CONSTRUCTION_EXPERT
	powerloader = SKILL_POWERLOADER_MASTER

/datum/skills/pmc
	name = "PMC Private"
	construction = SKILL_CONSTRUCTION_METAL
	engineer = SKILL_ENGINEER_METAL
	unarmed = SKILL_UNARMED_TRAINED
	melee_weapons = SKILL_MELEE_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	smgs = SKILL_SMGS_TRAINED
	leadership = SKILL_LEAD_BEGINNER
	medical = SKILL_MEDICAL_NOVICE

/datum/skills/crafty
	name = "Crafty Private"
	construction = SKILL_CONSTRUCTION_METAL
	engineer = SKILL_ENGINEER_METAL

/datum/skills/craftier
	name = "Craftier Private"
	construction = SKILL_CONSTRUCTION_PLASTEEL
	engineer = SKILL_ENGINEER_ENGI

/datum/skills/special_forces_standard
	name = "Special Response Force Standard"
	construction = SKILL_CONSTRUCTION_METAL
	engineer = SKILL_ENGINEER_METAL
	police = SKILL_POLICE_MP
	smgs = SKILL_SMGS_TRAINED

/datum/skills/sl
	name = SQUAD_LEADER
	unarmed = SKILL_UNARMED_TRAINED
	construction = SKILL_CONSTRUCTION_PLASTEEL
	engineer = SKILL_ENGINEER_PLASTEEL
	leadership = SKILL_LEAD_EXPERT
	medical = SKILL_MEDICAL_NOVICE
	surgery = SKILL_SURGERY_AMATEUR

/datum/skills/sl/clf
	name = "CLF leader"
	construction = SKILL_CONSTRUCTION_METAL
	engineer = SKILL_ENGINEER_METAL
	leadership = SKILL_LEAD_TRAINED

/datum/skills/sl/upp
	name = "UPP Leader"
	combat = SKILL_COMBAT_TRAINED
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_AMATEUR
	pistols = SKILL_PISTOLS_TRAINED
	smgs = SKILL_SMGS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED

/datum/skills/sl/pmc
	name = "PMC Leader"
	unarmed = SKILL_UNARMED_MP
	melee_weapons = SKILL_MELEE_TRAINED
	medical = SKILL_MEDICAL_PRACTICED
	police = SKILL_POLICE_MP
	combat = SKILL_COMBAT_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	smgs = SKILL_SMGS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED
	stamina = SKILL_STAMINA_TRAINED

/datum/skills/sl/pmc/special_forces
	name = "Special Force Leader"
	police = SKILL_POLICE_MP
	smgs = SKILL_SMGS_TRAINED

/datum/skills/sl/icc
	name = "ICC Leader"
	combat = SKILL_COMBAT_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED
	construction = SKILL_CONSTRUCTION_PLASTEEL
	engineer = SKILL_ENGINEER_ENGI
	stamina = SKILL_STAMINA_TRAINED

/datum/skills/specialist
	name = SQUAD_SPECIALIST
	unarmed = SKILL_UNARMED_MASTER //Snake, remember some of the basics of CQC.
	construction = SKILL_CONSTRUCTION_METAL
	engineer = SKILL_ENGINEER_METAL //to use c4 in scout set.
	medical = SKILL_MEDICAL_NOVICE
	smartgun = SKILL_SMART_TRAINED
	leadership = SKILL_LEAD_BEGINNER

/datum/skills/specialist/vanguard
	name = VANGUARD
	unarmed = SKILL_UNARMED_MASTER
	construction = SKILL_CONSTRUCTION_DEFAULT
	engineer = SKILL_ENGINEER_DEFAULT
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_TRAINED
	leadership = SKILL_LEAD_EXPERT
	police = SKILL_POLICE_MP
	smartgun = SKILL_SMART_TRAINED

/datum/skills/specialist/pmc
	name = "PMC Specialist"
	combat = SKILL_COMBAT_TRAINED
	melee_weapons = SKILL_MELEE_SUPER
	pistols = SKILL_PISTOLS_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	smgs = SKILL_SMGS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED
	engineer = SKILL_ENGINEER_PLASTEEL
	construction = SKILL_CONSTRUCTION_PLASTEEL
	surgery = SKILL_SURGERY_TRAINED
	stamina = SKILL_STAMINA_TRAINED

/datum/skills/specialist/upp
	name = "UPP Specialist"
	combat = SKILL_COMBAT_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	smgs = SKILL_SMGS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED

/datum/skills/smartgunner
	name = SQUAD_SMARTGUNNER
	smartgun = SKILL_SMART_TRAINED
	leadership = SKILL_LEAD_BEGINNER

/datum/skills/smartgunner/pmc
	name = "PMC Smartgunner"
	unarmed = SKILL_UNARMED_MP
	engineer = SKILL_ENGINEER_METAL
	construction = SKILL_CONSTRUCTION_METAL
	combat = SKILL_COMBAT_TRAINED
	smartgun = SKILL_SMART_TRAINED
	leadership = SKILL_LEAD_BEGINNER
	medical = SKILL_MEDICAL_NOVICE
	melee_weapons = SKILL_MELEE_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	smgs = SKILL_SMGS_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED

/datum/skills/commando
	name = "Commando"
	unarmed = 3
	engineer = SKILL_ENGINEER_ENGI
	construction = SKILL_CONSTRUCTION_PLASTEEL
	combat = SKILL_COMBAT_TRAINED
	leadership = SKILL_LEAD_BEGINNER
	medical = SKILL_MEDICAL_NOVICE
	surgery = SKILL_SURGERY_AMATEUR
	melee_weapons = SKILL_MELEE_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	smgs = SKILL_SMGS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED

/datum/skills/commando/medic
	name = "Commando Medic"
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_TRAINED

/datum/skills/commando/leader
	name ="Commando Leader"
	leadership = SKILL_LEAD_TRAINED

/datum/skills/mercenary
	name = "Mercenary"
	unarmed = SKILL_UNARMED_MP
	engineer = SKILL_ENGINEER_ENGI
	construction = SKILL_CONSTRUCTION_PLASTEEL
	combat = SKILL_COMBAT_TRAINED
	leadership = SKILL_LEAD_BEGINNER
	medical = SKILL_MEDICAL_NOVICE
	surgery = SKILL_SURGERY_AMATEUR
	melee_weapons = SKILL_MELEE_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	smgs = SKILL_SMGS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED

/datum/skills/admiral
	name = "Admiral"
	construction = SKILL_CONSTRUCTION_PLASTEEL
	leadership = SKILL_LEAD_MASTER
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_AMATEUR
	police = SKILL_POLICE_FLASH
	powerloader = SKILL_POWERLOADER_TRAINED

/datum/skills/spatial_agent
	name = "Spatial Agent"
	engineer = SKILL_ENGINEER_MASTER
	construction = SKILL_CONSTRUCTION_MASTER
	combat = SKILL_COMBAT_TRAINED
	smartgun = SKILL_SMART_TRAINED
	medical = SKILL_MEDICAL_MASTER
	unarmed = SKILL_UNARMED_MASTER
	surgery = SKILL_SURGERY_EXPERT
	melee_weapons = SKILL_MELEE_SUPER
	leadership = SKILL_LEAD_MASTER
	pilot = SKILL_PILOT_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	smgs = SKILL_SMGS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED
	police = SKILL_POLICE_MP
	powerloader = SKILL_POWERLOADER_MASTER
	large_vehicle = SKILL_LARGE_VEHICLE_VETERAN
	mech = SKILL_MECH_TRAINED

/* Deathsquad */
/datum/skills/deathsquad
	name = "Deathsquad Elite"
	unarmed = SKILL_UNARMED_TRAINED
	construction = SKILL_CONSTRUCTION_METAL
	combat = SKILL_COMBAT_TRAINED
	smartgun = SKILL_SMART_TRAINED
	leadership = SKILL_LEAD_BEGINNER
	melee_weapons = SKILL_MELEE_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	smgs = SKILL_SMGS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_TRAINED

/datum/skills/smartgunner/deathsquad
	name = "Deathsquad Elite Gunner"
	unarmed = SKILL_UNARMED_TRAINED
	construction = SKILL_CONSTRUCTION_METAL
	combat = SKILL_COMBAT_TRAINED
	smartgun = SKILL_SMART_MASTER
	leadership = SKILL_LEAD_BEGINNER
	melee_weapons = SKILL_MELEE_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	smgs = SKILL_SMGS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_TRAINED

/datum/skills/sl/deathsquad
	name = "Deathsquad Elite Captain"
	unarmed = SKILL_UNARMED_TRAINED
	construction = SKILL_CONSTRUCTION_METAL
	combat = SKILL_COMBAT_TRAINED
	smartgun = SKILL_SMART_TRAINED
	leadership = SKILL_LEAD_MASTER
	melee_weapons = SKILL_MELEE_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	smgs = SKILL_SMGS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_TRAINED

/*======  I.o.M.  ======*/

/datum/skills/imperial
	name = "Guardsman"
	unarmed = SKILL_UNARMED_TRAINED
	melee_weapons = SKILL_MELEE_TRAINED

	combat = SKILL_COMBAT_TRAINED
	rifles = SKILL_RIFLES_TRAINED

/datum/skills/imperial/sl
	name = "Guardsman Sergeant" // veteran guardsman, practically better in all

	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED
	smartgun = SKILL_SMART_USE // can use smartgun

	// higher SL skills
	engineer = SKILL_ENGINEER_ENGI
	construction = SKILL_CONSTRUCTION_ADVANCED
	leadership = SKILL_LEAD_EXPERT
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_TRAINED

/datum/skills/imperial/medicae
	name = "Guardsman Medicae" // medic
	leadership = SKILL_LEAD_BEGINNER // normal medics have it
	medical = SKILL_MEDICAL_COMPETENT
	surgery = SKILL_SURGERY_PROFESSIONAL

/datum/skills/imperial/astartes
	name = "Space Marine"
	unarmed = SKILL_UNARMED_MASTER
	melee_weapons = SKILL_MELEE_SUPER

	combat = SKILL_COMBAT_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	smgs = SKILL_SMGS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED
	smartgun = SKILL_SMART_TRAINED

	//endurance = 0 - does nothing
	engineer = SKILL_ENGINEER_PLASTEEL
	construction = SKILL_CONSTRUCTION_PLASTEEL
	leadership = SKILL_LEAD_TRAINED
	medical = SKILL_MEDICAL_NOVICE
	surgery = SKILL_SURGERY_AMATEUR
	powerloader = SKILL_POWERLOADER_DABBLING

/datum/skills/imperial/astartes/apothecary
	name = "Space Marine Apothecary" // a slightly less stronger space marine with medical skills
	unarmed = 4 // below SKILL_UNARMED_MASTER, no define for it
	melee_weapons = SKILL_MELEE_TRAINED

	medical = SKILL_MEDICAL_EXPERT
	surgery = SKILL_SURGERY_EXPERT

/* Vat growns */
/datum/skills/vatgrown
	name = "Vat Grown"
	// default skills

/datum/skills/vatgrown/early
	name = "Vat Grown"
	unarmed = SKILL_UNARMED_WEAK
	combat = SKILL_COMBAT_UNTRAINED
	melee_weapons = SKILL_MELEE_WEAK

/datum/skills/sectoid
	name = "Sectoid"

	unarmed = SKILL_UNARMED_WEAK
	engineer = SKILL_ENGINEER_ENGI
	construction = SKILL_CONSTRUCTION_PLASTEEL
	combat = SKILL_COMBAT_TRAINED
	medical = SKILL_MEDICAL_COMPETENT
	surgery = SKILL_SURGERY_EXPERT//how else will they probe marines?
	melee_weapons = SKILL_MELEE_WEAK
	pistols = SKILL_PISTOLS_TRAINED
	smgs = SKILL_SMGS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED

/datum/skills/skeleton
	name = "Skeleton"
	unarmed = SKILL_UNARMED_TRAINED
	melee_weapons = SKILL_MELEE_TRAINED

/datum/skills/security_officer
	name = SECURITY_OFFICER

	unarmed = SKILL_UNARMED_MP
	combat = SKILL_COMBAT_DEFAULT
	smgs = SKILL_SMGS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	melee_weapons = SKILL_MELEE_DEFAULT
	pistols = SKILL_PISTOLS_TRAINED
	police = SKILL_POLICE_MP

//SOM veterans
/datum/skills/som_veteran
	name = "SOM Veteran"
	leadership = SKILL_LEAD_BEGINNER
	unarmed = SKILL_UNARMED_TRAINED
	melee_weapons = SKILL_MELEE_TRAINED
	construction = SKILL_CONSTRUCTION_METAL
	engineer = SKILL_ENGINEER_METAL
	combat = SKILL_COMBAT_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	smgs = SKILL_SMGS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED
	medical = SKILL_MEDICAL_NOVICE
	surgery = SKILL_SURGERY_AMATEUR
	stamina = SKILL_STAMINA_TRAINED

/datum/skills/som_veteran/sl
	name = "SOM Leader"
	construction = SKILL_CONSTRUCTION_PLASTEEL
	engineer = SKILL_ENGINEER_PLASTEEL
	leadership = SKILL_LEAD_EXPERT

/datum/skills/som_veteran/medic
	name = "SOM Medic"
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_TRAINED

//ERP Pranksters
/datum/skills/prankster
	name = "ERP Prankster"
	unarmed = SKILL_UNARMED_TRAINED
	melee_weapons = SKILL_MELEE_TRAINED
	combat = SKILL_COMBAT_TRAINED
	pistols = SKILL_PISTOLS_TRAINED
	shotguns = SKILL_SHOTGUNS_TRAINED
	rifles = SKILL_RIFLES_TRAINED
	smgs = SKILL_SMGS_TRAINED
	heavy_weapons = SKILL_HEAVY_WEAPONS_DEFAULT
	smartgun = SKILL_SMART_DEFAULT

/datum/skills/prankster/boobookisser
	name = "ERP Boo-boo Kisser"
	medical = SKILL_MEDICAL_PRACTICED
	surgery = SKILL_SURGERY_TRAINED

/datum/skills/prankster/piethrower
	name = "ERP Pie thrower"
	heavy_weapons = SKILL_HEAVY_WEAPONS_TRAINED

/datum/skills/prankster/masterprankster
	name = "ERP Master Prankster"
	construction = SKILL_CONSTRUCTION_PLASTEEL
	engineer = SKILL_ENGINEER_PLASTEEL
	leadership = SKILL_LEAD_EXPERT
