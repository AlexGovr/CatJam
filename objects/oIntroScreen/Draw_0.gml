


draw_sprite_ext(sStartScene, scene_current, 0, 0, 1, 1, 0, c_white, alpha)

if (mouse_check_button_pressed(mb_any))
{
	scene_current++
	
	if scene_current > 4
	{
		scene_current = 4
		oTransition.transition()
	}		
}

