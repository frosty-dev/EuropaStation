/obj/item/gun_component/chamber
	name = "firing mechanism"
	component_type = COMPONENT_MECHANISM
	projectile_type = GUN_TYPE_BALLISTIC
	weapon_type = GUN_PISTOL
	pixel_y = -3

	var/list/firemodes = list()
	var/max_shots = 0
	var/fire_delay = 5
	var/ammo_indicator_states        // Range of variant states.
	var/ammo_indicator_state         // Base ammo overlay state.
	var/image/ammo_overlay           // Holder for the ammo overlay image.

/obj/item/gun_component/chamber/New()
	..()
	update_ammo_overlay()

/obj/item/gun_component/chamber/proc/modify_shot(var/obj/item/projectile/proj)
	return proj

/obj/item/gun_component/chamber/proc/update_ammo_overlay()
	if(ammo_indicator_state)
		var/shots_left = get_shots_remaining()
		var/use_state = ammo_indicator_state
		if(shots_left)
			if(model && model.ammo_use_state)
				use_state = model.ammo_use_state
				if(model.ammo_indicator_states)
					if(shots_left == max_shots)
						use_state += "[model.ammo_indicator_states]"
					else
						use_state += "[n_ceil((shots_left/max_shots)*model.ammo_indicator_states)]"
			else
				if(ammo_indicator_states)
					use_state += "[n_round((shots_left/max_shots)*ammo_indicator_states)]"
		else
			use_state = ""
		if(!ammo_overlay)
			if(model && model.ammo_indicator_icon)
				ammo_overlay = image(icon = model.ammo_indicator_icon)
			else
				ammo_overlay = image(icon = 'icons/obj/gun_components/unbranded_load_overlays.dmi')
		ammo_overlay.icon_state = use_state

/obj/item/gun_component/chamber/proc/recieve_charge(var/amt)
	return

/obj/item/gun_component/chamber/proc/handle_post_fire()
	update_ammo_overlay()
	return

/obj/item/gun_component/chamber/proc/handle_click_empty()
	return

/obj/item/gun_component/chamber/proc/load_ammo(var/mob/user)
	return

/obj/item/gun_component/chamber/proc/unload_ammo(var/mob/user)
	return

/obj/item/gun_component/chamber/proc/reset_max_shots()
	max_shots = initial(max_shots)

/obj/item/gun_component/chamber/proc/apply_shot_mod(var/val)
	max_shots = n_round(max_shots * val)

/obj/item/gun_component/chamber/proc/get_shots_remaining()
	return 0

/obj/item/gun_component/chamber/proc/check_can_load(var/obj/item/thing, var/mob/user)
	return 0

/obj/item/gun_component/chamber/proc/get_external_power_supply()
	return

/obj/item/gun_component/chamber/proc/consume_next_projectile()
	return
