
#macro LANG_ENGLISH "English"
#macro LANG_DEUTCH "Deutch"
#macro LANG_FRENCH "French"
#macro LANG_RUSSIAN "Russian"

fntMain = font_add("Ubuntu-R.ttf", 96, false, false, 32, 128)
fntSmall = font_add("Ubuntu-R.ttf", 28, false, false, 32, 128)
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
        diff_normal: "Normal",
        diff_hard: "Hard",
        end_screen: "A house is not a home without a pet; when opening your door and heart to a non-human family member, please remember that black pets do not have any disadvantages over their lighter compatriots. They are as cuddly, as friendly, as good company as any other coat colour. Your luck is your own, not your cat's. If you want to do your pet, and the shelter, a real solid, adopt an elder cat with fully formed manners and character, rather than a hyper kitten. Cats have long lives and will be perfectly adorable right to the very end."
    },
    Deutch: {
        button_start: "Start",
		button_languages: "Sprache",
		button_difficulty: "Schwierigkeit",
		button_options: "Einstellungen",
		victory: "Sie haben Ihr neues \nZuhause gefunden!",
		tut_outlining: "Umfahre ein\nVersteck mit \ner Maus",
        tut_click_to_move: "Klick um dich\nzu bewegen",
        tut_navigate: "Bewegen Sie\ndie Maus\num sich umzusehen",
		tut_lights: "Lass dich nicht\nerwischen!",
		diff_easy: "Leicht",
        diff_normal: "Normal",
        diff_hard: "Schwer",
		end_screen: "Ein Haus ist kein Zuhause ohne Haustier; wenn ihr Tür und Herz einem nicht-menschlichen Familienmitglied öffnet, denkt bitte dran dass schwarze Tiere keinerlei Nachteile gegenüber ihren helleren Kollegen haben. Sie sind genauso knuddelig, genauso lieb und genauso tolle Gefährten wie jedes bunte Tier auch. Eine schwarze Katze im Haus bringt Glück, kein Pech, egal in welche Richtung sie läuft. Wenn du deinem neuen Tierchen, und dem Tierheim, wirklich einen Gefallen tun willst, dann adoptiere doch eine ältere Katze. Die kommen nämlich tatsächlich schlechter unter als zappelige Kätzchen, obwohl sie abgerundete Charaktere und lebenslang trainierte Manieren haben. Katzen haben lange Leben und sind bis zum Ende superniedlich."
    },
    French: {
        button_start: "Démarrer",
		button_languages: "Langue",
		button_difficulty: "Difficulté",
		button_options: "Options",
		victory: "Vous avez trouvé votre \nnouvelle maison!",
		tut_outlining: "Dessinez le contour \nd'un endroit où se cacher",
        tut_click_to_move: "Cliquez pour\nvous déplacer",
        tut_navigate: "Déplacez la souris\npour regarder\nautour de vous",
		tut_lights: "Ne vous faites \npas repérer!",
		diff_easy: "Facile",
        diff_normal: "Normale",
        diff_hard: "Difficile",
		end_screen: "Une maison n’est pas un foyer sans un animal ; Si vous choisissez d’ouvrir votre porte et votre cœur à un compagnon à quatre pattes, n’oubliez pas que les animaux noirs n’ont rien à envier à leurs congénères un moins foncés. Ils sont tout aussi câlins, affectueux et dévoués que les autres. La chance n’a rien à voir avec les félins et n’appartient qu’à vous. Si vous voulez vraiment aider les animaux et les refuges, considérez aussi l’adoption d’un chat plus âgé, déjà éduqué et à la personnalité affirmée, plutôt qu’un jeune chaton. Les chats vivent une longue vie et savent se faire aimer jusqu’au bout."
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

function DrawTextLocalizeTransformed(x, y, string_id, _halign = fa_center, _valign = fa_middle, 
	_xscale = 1, _yscale = 1, _col = #f2dfbb, _alpha = 1) {
    draw_set_font(global.fntMain)
    draw_set_valign(_halign)
    draw_set_halign(_valign)
    draw_text_transformed_color(x, y, Localize(string_id), _xscale, _yscale, 0, 
	_col, _col, _col, _col, _alpha)

	draw_set_color(c_white)
}

function DrawEndingTextLocalized(x, y) {
    draw_set_font(global.fntSmall)
	draw_set_color(#f2dfbb)
    draw_set_valign(fa_top)
    draw_set_halign(fa_left)
	draw_text_ext(x, y, Localize("end_screen"), 48, 780)
}
