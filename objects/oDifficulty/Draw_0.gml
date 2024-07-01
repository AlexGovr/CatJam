event_inherited()

DrawTextLocalizeTransformed(x, y, diff_array[global.difficulty], , ,0.35, 0.35, c_black, 0.8)

if MouseInButton() and mouse_check_button_pressed(mb_any)
{
	global.difficulty ++ 
	
	if global.difficulty > 2
	global.difficulty = 0
	
}

