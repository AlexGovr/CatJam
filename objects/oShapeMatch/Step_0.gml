
if !is_drawing {
	is_drawing = mouse_check_button_pressed(mb_left)
	if is_drawing {
		array_push(points, [mouse_x, mouse_y, min_width])
		current_shape = instance_nearest(mouse_x, mouse_y, oShapePoint).hiding_spot
		is_failed = false
	}
} else {
	var sp = point_distance(mouse_x, mouse_y, xprev, yprev)
	xprev = mouse_x
	yprev = mouse_y
	var w = max(max_width * (1 - sp / max_sp), min_width)
	array_push(points, [mouse_x, mouse_y, w])
	if !mouse_check_button(mb_left) {
		is_drawing = false
		var dist_to_first = point_distance(mouse_x, mouse_y, points[0][0], points[0][1])
		if !is_failed or (dist_to_first < max_shape_dist) {
			result = "Success!"
		} else {
			result = "Fail =("	
		}
		points = []
	}
	if !is_failed {
		var point = instance_nearest(mouse_x, mouse_y, oShapePoint)
		current_shape_dist = point_distance(mouse_x, mouse_y, point.x, point.y)
		if current_shape_dist > max_shape_dist or point.hiding_spot != current_shape {
			is_failed = true	
		}
	}
}
