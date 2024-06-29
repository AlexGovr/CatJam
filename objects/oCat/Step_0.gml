
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

if (room_width - x) < 300 {
    oTransition.transition()
}
