mouse_in_button = MouseInButton()

if mouse_in_button
{
	if mouse_check_button_pressed(mb_any){
		sfx_play(snd_click)
		
		SetAllButtonsInactive()
		active = !active
		
		if (active == true)
		{
			//instance_activate_object(oDifficulty)
			with oDifficulty
			{
				image_xscale = 0
				image_yscale = 0
			}
		}
		
		//if (active == false)
		//instance_deactivate_object(oDifficulty)	
	}
		
}


ButtonSetScale(mouse_in_button)
