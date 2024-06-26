

if is_transition {
	if is_fade_out {
		alpha += fade_out_speed
		if alpha >= 1 {
			is_fade_out = false
			alpha = 1
			if is_restart {
				room_restart()
				is_restart = false
			} else {
                if room == room_last {
                    room_goto(room_first)
                } else {
                    room_goto_next()
                }
			}
		}
	} else {
		alpha -= fade_out_speed
		if alpha <= 0 {
			alpha = 0
		}
	}
}

