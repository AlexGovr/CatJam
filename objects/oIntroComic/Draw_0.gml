
draw_sprite_ext(sStartScene, scene_current, 0, 0, 1, 1, 0, c_white, alpha)

//Activate fade on mouse click
if (mouse_check_button_pressed(mb_any))
{
	fade_out = true
	fade_in = false
}


//FADE OUT THEN IN
// Once fade-out is completed, increment scene_current
// If scene_current > 4, transition room

if (fade_out == true)
{
	alpha -= fade_amount
	
	if alpha < 0.01
	{
		fade_out = false
		fade_in = true
		
		scene_current++
		
		if scene_current > 4
		{
			fade_in = false
			scene_current = 4
			oTransition.transition()
		}		
		
	}
}
	
if (fade_in == true)
{
	alpha += fade_amount
	
	if alpha > 0.99
	{
		fade_in = false
	}
}

