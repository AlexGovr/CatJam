switch room {
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
}
