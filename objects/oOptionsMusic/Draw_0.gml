event_inherited()

var _onoff = global.music_enabled ? "On" : "Off"

var _text = string("Music: " + _onoff)

draw_text_ext_transformed_color(x, y, _text, 100, 1000,
0.35, 0.35, 0, c_black, c_black, c_black, c_black, 0.8)

if MouseInButton() and mouse_check_button_pressed(mb_any)
{
	global.music_enabled = !global.music_enabled
	oMusic.MusicEnableDisable()
}


