
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
            // Font2
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
        start_button: "Start",
		victory: "You found your new home!\nPurrrrr.... Purrrr...",
		tutorial_outlining: "Outline\na place\nto hide",
		tutorial_lights: "Keep away from lights!"
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
    draw_text(x, y, Localize(string_id))
}
