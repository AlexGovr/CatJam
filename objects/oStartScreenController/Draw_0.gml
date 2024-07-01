// Countdown
if (intro_timer > 0) and audio_group_is_loaded(audiogroup_bgm){
	intro_timer--
} 
if !intro_timer {
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
} else if (keyboard_check_pressed(vk_anykey) or mouse_check_button_pressed(mb_any)) {
    pressed_a_button = true
}


// 1 | Draw Logo
draw_sprite_ext(sTHQLogo, 0, room_width * 0.5, room_height * 0.5, scale, scale, 0, c_white, 1)

// some browsers won't let auido play before user interacts with page
if intro_timer <= logo_start and !pressed_a_button {
    intro_timer = max(intro_timer, final_zoom)
	draw_set_font(global.fntSmall)
	draw_text(camw() * 0.5, camh()*0.85, "Press any key")
    oMusic.alarm[1] = 30
}

if pressed_a_button and (intro_timer < final_zoom)
    scale *= 1.2
