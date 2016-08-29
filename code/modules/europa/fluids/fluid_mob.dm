/mob/living/handle_environment(var/atom/environment)
	. = ..()
	if(environment)
		if(environment.check_fluid_depth(30))
			var/total_depth = environment.get_fluid_depth()
			water_act(total_depth)
			for(var/obj/item/I in contents)
				I.water_act(total_depth)
