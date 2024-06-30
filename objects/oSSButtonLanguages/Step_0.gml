mouse_in_button = MouseInButton()

if mouse_in_button
{
	if mouse_check_button_pressed(mb_any){
		active = !active
		
		if (active == true)
		instance_activate_object(oLanguageButtonParent)
		
		if (active == false)
		instance_deactivate_object(oLanguageButtonParent)	
	}
		
}


ButtonSetScale(mouse_in_button)

