
if !is_hiding {
	if hiding_spot {
		var dist = hiding_spot.x - x
		image_xscale = sign(dist) * abs(image_xscale)
		image_xscale = image_xscale != 0 ? image_xscale : image_xscale_initial
		x += sp * sign(dist)
		var dst =InstDist(hiding_spot)
		if abs(dist) < 200 {
			hide()
		}
	} else {
        self.move()
    }
}

danger_level -= danger_fall_sp
danger_level = clamp(danger_level, 0, 100)

if danger_level >= 100 and !failed {
    oTransition.restart()
    sfx_play(snd_fail, 0, false)
    failed = true
}

// debug teleporting
if DEV and mouse_check_button_pressed(mb_right) {
    xto = mouse_x
    x = mouse_x
    var spot = collision_point(mouse_x, mouse_y, oHideSpotParent, false, false)
    if spot {
        hiding_spot = spot
        hide()
    }
}

if (room_width - x) < 300 {
    oTransition.transition()
    sfx_play(snd_success, 0, false)
}
