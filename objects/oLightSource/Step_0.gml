
angle += rot_dir * rot_speed
if angle >= max_angle or angle <= min_angle {
	rot_dir *= -1
}

p2.rotate(rot_dir * rot_speed)
p3.rotate(rot_dir * rot_speed)

if !oCat.is_hiding && rectangle_in_triangle(
    oCat.bbox_left, oCat.bbox_top, oCat.bbox_right, oCat.bbox_bottom,
    x, y,
    x + p2.x, y + p2.y,
    x + p3.x, y + p3.y
) {
    oTransition.restart()
}
