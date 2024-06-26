
if !is_drawing {
	is_drawing = mouse_check_button_pressed(mb_left)
	if is_drawing {
		click_timer.reset()
		array_push(points, [mouse_x, mouse_y, min_width])
		current_shape = instance_nearest(mouse_x, mouse_y, oShapePoint).hiding_spot
		is_failed = false
	}
} else {
	click_timer.update()
	var sp_to = point_distance(mouse_x, mouse_y, xprev, yprev)
	//sp = (sp_to - sp) * sp_gain
	sp = Approach(sp, sp_to, accel)
	xprev = mouse_x
	yprev = mouse_y
	var w = max(max_width * (1 - sp / max_sp), min_width)
	array_push(points, [mouse_x, mouse_y, w])
	if !mouse_check_button(mb_left) {
		is_drawing = false
		if click_timer.timer {
			click()
		} else {
			finishDrawing()
		}
		points = []
	}
	if !is_failed {
		var point = instance_nearest(mouse_x, mouse_y, oShapePoint)
		current_shape_dist = point_distance(mouse_x, mouse_y, point.x, point.y)
		if current_shape_dist > max_shape_dist 
                or point.hiding_spot != current_shape {
			is_failed = true	
		} else {
            point.capture()
        }
	}
}
