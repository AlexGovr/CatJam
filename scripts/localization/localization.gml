
#macro LANG_ENGLISH "English"
#macro LANG_DEUTCH "Deutch"
#macro LANG_FRENCH "French"
#macro LANG_RUSSIAN "Russian"

fntMain = font_add("Ubuntu-R.ttf", 96, false, false, 32, 128)
selected_language = LANG_ENGLISH

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
    },
    Deutch: {
        button_start: undefined,
		button_languages: undefined,
		button_difficulty: undefined,
		button_options: undefined,
		victory: undefined,
		tut_outlining: undefined,
        tut_click_to_move: undefined,
        tut_navigate: undefined,
		tut_lights: undefined,
    },
    French: {
        button_start: undefined,
		button_languages: undefined,
		button_difficulty: undefined,
		button_options: undefined,
		victory: undefined,
		tut_outlining: undefined,
        tut_click_to_move: undefined,
        tut_navigate: undefined,
		tut_lights: undefined,
    },
    Russian: {
        button_start: "Начать",
		button_languages: "Язык",
		button_difficulty: "Сложность",
		button_options: "Настройки",
		victory: "Ты нашел свой новый дом! Мурррр...",
		tut_outlining: "Обведи мышью место,\nчтобы спрятаться",
        tut_click_to_move: "Кликни,\nчтобы\nпереместиться",
        tut_navigate: "Камеру можно\nдвигать мышью",
		tut_lights: "Берегись лучей света!",
    },
}

function Localize(string_id) {
    var result = global._localization
            [$ global.selected_language]
            [$ string_id]
    // use english as default
    if result == undefined {
        result = global._localization
            [$ LANG_ENGLISH]
            [$ string_id]
    }
	return result
}

function DrawTextLocalized(x, y, string_id) {
    draw_set_font(global.fntMain)
    draw_set_valign(fa_middle)
    draw_set_halign(fa_center)
	draw_set_color(#f2dfbb)
    draw_text(x, y, Localize(string_id))
	draw_set_color(c_white)
}

function DrawTextLocalizedExt(x, y, string_id, _halign = fa_center, _valign = fa_middle, 
	_xscale = 1, _yscale = 1, _col = #f2dfbb, _alpha = 1) {
    draw_set_font(global.fntMain)
    draw_set_valign(_halign)
    draw_set_halign(_valign)
    draw_text_transformed_color(x, y, Localize(string_id), _xscale, _yscale, 0, 
	_col, _col, _col, _col, _alpha)

	draw_set_color(c_white)
}
