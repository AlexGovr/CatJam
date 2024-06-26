
#macro LANG_ENGLISH "English"
#macro LANG_RUSSIAN "Russian"
#macro LANG_DEUTCH "Deutch"

function Language(id, display_name=undefined, font=undefined) constructor {
    self.id = id
    self.font = font ?? fntDefault
    self.display_name = display_name ?? id
}

languages = [
    new Language("English"),
    // new Language("Deutch"),
    // new Language("Russian", "Русский"),
]

selected_language = languages[0]

_localization = {
    English: {
        start_button: "Start"
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
