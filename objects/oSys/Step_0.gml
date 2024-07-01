
if keyboard_check_pressed(vk_f1) {
	show_debug_log(!is_debug_overlay_open())
}

if room == rmWinScreen and mouse_check_button_pressed(mb_any) {
	oTransition.transition()
}
