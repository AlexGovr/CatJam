

// rotate auxiliary vectors
p1.rotate(rot_dir * _rot_speed)
p2.rotate(rot_dir * _rot_speed)
// update light cone coords so they
// are oriented by updated angle 
line1.setend(x + p1.x, y + p1.y)
line2.setend(x + p2.x, y + p2.y)
var ua1 = line_intersection(line1, floor_line, false)
var ua2 = line_intersection(line2, floor_line, false)
line1.mult(ua1)
line2.mult(ua2)

if !oCat.is_hiding && rectangle_in_triangle(
    oCat.bbox_left, oCat.bbox_top, oCat.bbox_right, oCat.bbox_bottom,
    x, y,
    line1.xend, line1.yend,
    line2.xend, line2.yend,
) {
    oTransition.restart()
}
