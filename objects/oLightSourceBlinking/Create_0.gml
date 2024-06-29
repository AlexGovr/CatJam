

p1 = new Vec2(1, angle + cone_angle * 0.5, true)
p2 = new Vec2(1, angle - cone_angle * 0.5, true)
line1 = new Line(x, y, p1.x, p1.y)
line2 = new Line(x, y, p2.x, p2.y)
var ua1 = line_intersection(line1, floor_line, false)
var ua2 = line_intersection(line2, floor_line, false)
line1.mult(ua1)
line2.mult(ua2)


floor_line = new Line(-10000, room_height - 100,
                      10000, room_height - 100)


