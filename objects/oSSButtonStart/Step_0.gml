mouse_in_button = MouseInButton()

if mouse_in_button
{
	if mouse_check_button_pressed(mb_any){
		sfx_play(snd_success)
		SetAllButtonsInactive()
		oTransition.transition()
	}
}


ButtonSetScale(mouse_in_button)
