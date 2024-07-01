event_inherited()

var _onoff = global.sfx_enabled ? "On" : "Off"

var _text = string("SFX: " + _onoff)

draw_text_ext_transformed_color(x, y, _text, 10, 1000,
1, 1, 0, c_black, c_black, c_black, c_black, 0.8)

if MouseInButton() and mouse_check_button_pressed(mb_any)
{
	sfx_play(snd_click)
	global.sfx_enabled = !global.sfx_enabled
}

