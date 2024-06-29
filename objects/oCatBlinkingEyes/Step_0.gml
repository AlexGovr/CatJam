
if !pause_timer.update() {
	image_speed = 1
	if IsAnimationEnd() {
		pause_timer.reset()	
	}
} else {
	image_speed = 0
}