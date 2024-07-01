
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
        diff_easy: "Easy",
        diff_normal: "Nomal",
        diff_hard: "Hard",
        end_screen: "A house is not a home without a pet; when opening your door and heart to a non-human family member, please remember that black pets do not have any disadvantages over their lighter compatriots. They are as cuddly, as friendly, as good company as any other coat colour. Your luck is your own, not your cat's. If you want to do your pet, and the shelter, a real solid, adopt an elder cat with fully formed manners and character, rather than a hyper kitten. Cats have long lives and will be perfectly adorable right to the very end."
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
        diff_easy: undefined,
        diff_normal: undefined,
        diff_hard:  undefined,
        end_screen: undefined,
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
        diff_easy: undefined,
        diff_normal: undefined,
        diff_hard:  undefined,
        end_screen: undefined,
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
        diff_easy: "Легкий",
        diff_normal: "Нормальный",
        diff_hard:  "Сложный",
        end_screen: "Дом не дом без питомца. Открывая свою дверь и сердце новому члену семьи, пожалуйста, помните, что черные питомцы не имеют никаких недостатков перед своими более светлыми сородичами. Они такие же приятные и дружелюбные. И уж точно ваша удача не зависит от цвета шерсти вашей кошки. Помните, что вы окажете наибольшую помощь, если приютите взрослого сформировавшегося питомца. Кошки живут долго и будут радовать вас до самого конца!",
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
