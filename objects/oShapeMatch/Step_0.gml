
if !is_drawing {
	is_drawing = mouse_check_button_pressed(mb_left)
} else {
	var sp = point_distance(mouse_x, mouse_y, xprev, yprev)
	xprev = mouse_x
	yprev = mouse_y
	var w = max(max_width * (1 - sp / max_sp), min_width)
	array_push(points, [mouse_x, mouse_y, w])
	if !mouse_check_button(mb_left) {
		points = []
		is_drawing = false
	}
}
