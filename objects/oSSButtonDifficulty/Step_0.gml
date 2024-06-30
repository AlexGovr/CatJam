mouse_in_button = MouseInButton()

if mouse_in_button
{
	if mouse_check_button_pressed(mb_any){
		SetAllButtonsInactive()
		active = true
	}	
}

ButtonSetScale(mouse_in_button)
