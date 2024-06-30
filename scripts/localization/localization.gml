
#macro LANG_ENGLISH "English"
#macro LANG_RUSSIAN "Russian"
#macro LANG_DEUTCH "Deutch"

function Language(id, display_name=undefined, font=undefined) constructor {
    self.id = id
    self.font = font ?? fntDefault
    self.display_name = display_name ?? id
}

languages = [
    new Language("English", undefined,
			//font_add("StayPuft.ttf", 96, false, false, 32, 128)
			// font_add("OpenSans-Regular.ttf", 96, false, false, 32, 128)
			font_add("Ubuntu-R.ttf", 96, false, false, 32, 128)
            
    ),
    // new Language("Deutch"),
    // new Language("Russian", "Русский"),
]

selected_language = languages[0]

_localization = {
    English: {
        button_start: "Start",
		button_languages: "Languages",
		button_difficulty: "Difficulty",
		button_options: "Options",		
		victory: "You found your new home!\nPurrrrr.... Purrrr...",
		tut_outlining: "Outline a hidey spot\nwith your mouse",
        tut_click_to_move: "Click\nto move",
        tut_navigate: "Move mouse\nto look around",
		tut_lights: "Don't get spotted!",
    }
}

function Localize(string_id) {
	var test = global._localization
                        [$ global.selected_language.id]
                        [$ string_id]
	return global._localization
                        [$ global.selected_language.id]
                        [$ string_id]
}

function DrawTextLocalized(x, y, string_id) {
    draw_set_font(global.selected_language.font)
    draw_set_valign(fa_middle)
    draw_set_halign(fa_center)
	draw_set_color(#f2dfbb)
    draw_text(x, y, Localize(string_id))
	draw_set_color(c_white)
}

function DrawTextLocalizedExt(x, y, string_id, _halign = fa_center, _valign = fa_middle, 
	_xscale = 1, _yscale = 1, _col = #f2dfbb, _alpha = 1) {
    draw_set_font(global.selected_language.font)
    draw_set_valign(_halign)
    draw_set_halign(_valign)
    draw_text_transformed_color(x, y, Localize(string_id), _xscale, _yscale, 0, 
	_col, _col, _col, _col, _alpha)

	draw_set_color(c_white)
}
