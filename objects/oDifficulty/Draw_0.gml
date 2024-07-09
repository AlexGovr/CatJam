draw_self()

var active = instance_exists(oSSButtonDifficulty) ? oSSButtonDifficulty.active : 0

if active {
	DrawTextLocalizeTransformed(x, y, diff_array[global.difficulty], , ,0.35, 0.35, c_black, 0.8)
}

if MouseInButton() and mouse_check_button_pressed(mb_any)
{
	sfx_play(snd_success)
	global.difficulty ++ 
	
	if global.difficulty > 2
	global.difficulty = 0
	
	switch global.difficulty
	{
		case 0:
			global.max_shape_dist = 45
			global.light_speed_factor = 0.8
			break
		case 1:
			global.max_shape_dist = 32
			global.light_speed_factor = 1
			break
		case 2:
			global.max_shape_dist = 20
			global.light_speed_factor = 1.2
			break
}
				
	
}

mouse_in_button = MouseInButton()

if mouse_in_button{
	image_xscale_max = 1.2
	image_yscale_max = 1.2
} else {
	image_xscale_max = 1
	image_yscale_max = 1
}

image_xscale = Approach(image_xscale, image_xscale_max * active, 0.2)
image_yscale = image_xscale
