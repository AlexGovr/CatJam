
p1.rotate(rot_dir * rot_speed)
p2.rotate(rot_dir * rot_speed)
p3.rotate(rot_dir * rot_speed)

draw_triangle(
    x + p1.x, y + p1.y,
    x + p2.x, y + p2.y,
    x + p3.x, y + p3.y,
    false
)
