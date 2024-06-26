
angle += rot_dir * rot_speed
if angle >= 180 or angle <= 0 {
	rot_dir *= -1
}

p1.rotate(rot_dir * -rot_speed)
p2.rotate(rot_dir * -rot_speed)
p3.rotate(rot_dir * -rot_speed)

if !oCat.is_hiding && rectangle_in_triangle(
    oCat.bbox_left, oCat.bbox_top, oCat.bbox_right, oCat.bbox_bottom,
    x + p1.x, y + p1.y,
    x + p2.x, y + p2.y,
    x + p3.x, y + p3.y
) {
    oTransition.restart()
}
