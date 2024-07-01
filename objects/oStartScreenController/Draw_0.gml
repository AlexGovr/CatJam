// Countdown
if (intro_timer > 0){
	intro_timer --
} else {
	instance_destroy()
	instance_activate_object(oSSButtonParent)
	instance_activate_object(oCredits)
}


// 0 | Draw Black Rectangle 
if (intro_timer > logo_start)
{
	var _alpha = 1
	
	if (intro_timer < logo_fadein)
	var _alpha = 1 - ((logo_fadein - intro_timer) / logo_fadein_time)
	
	draw_set_alpha(_alpha)
	draw_set_color(c_black)
	draw_rectangle(0, 0, room_width, room_height, false)
	draw_set_color(c_white)
	draw_set_alpha(1)
}

// 1 | Draw Logo
draw_sprite_ext(sTHQLogo, 0, room_width * 0.5, room_height * 0.5, scale, scale, 0, c_white, 1)

if (intro_timer < final_zoom)
scale *= 1.2
