switch room {
    case rmStartScreen:
        switch_music(noone)
    break
    case rmShelter:
        if !audio_is_playing(snd_ambshelter) {
            switch_music(snd_ambshelter)
        }
    break
    case rmStreets:
        if !audio_is_playing(snd_ambstreet) {
            switch_music(snd_ambstreet)
        }
    break
}
