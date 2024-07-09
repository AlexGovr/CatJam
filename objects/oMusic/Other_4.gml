switch room {
	case rmIntroScreen:
        if !audio_is_playing(music_opening) {
            switch_music(music_opening)
        }
    case rmStartScreen:
        alarm[1] = 30
    break
    case rmShelter:
        if !audio_is_playing(music_shelter) {
            switch_music(music_shelter)
        }
    break
    case rmStreets:
        if !audio_is_playing(music_street) {
            switch_music(music_street)
        }
    break
    case rmHome:
        if !audio_is_playing(music_house) {
            switch_music(music_house)
        }
    break
    case rmEndScreen:
        if !audio_is_playing(music_ending) {
            switch_music(music_ending)
        }
    break
}
