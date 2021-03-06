/obj/item/weapon/gun/projectile/automatic/sts35
	name = "STS-35"
	desc = "The rugged STS-35 is a durable automatic weapon, popular on frontier worlds. Uses 7.62mm rounds. This one is unmarked."
	icon_state = "arifle"
	item_state = null
	w_class = ITEM_SIZE_LARGE
	force = 10
	caliber = "a762"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ILLEGAL = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/c762
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 12)
	price_tag = 3500
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound 	= 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound 	= 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound 	= 'sound/weapons/guns/interact/ltrifle_cock.ogg'

	firemodes = list(
		FULL_AUTO_400,
		SEMI_AUTO_NODELAY,
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=6,    dispersion=list(0.0, 0.6, 0.6), icon="burst"),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=6,    dispersion=list(0.6, 1.0, 1.0, 1.0, 1.2), icon="burst"),
		)

/obj/item/weapon/gun/projectile/automatic/sts35/update_icon(var/ignore_inhands)
	..()
	icon_state = (ammo_magazine)? "arifle" : "arifle-empty"
	if(!ignore_inhands)
		update_wear_icon()
