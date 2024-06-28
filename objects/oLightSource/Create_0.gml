
var height = 1080
var width = 100
angle = min_angle
p1 = new Vec2(height, angle + cone_angle * 0.5, true)
p2 = new Vec2(height, angle - cone_angle * 0.5, true)
line1 = new Line(x, y, p1.x, p1.y)
line2 = new Line(x, y, p2.x, p2.y)

wait_timer = MakeTimer(0)

floor_line = new Line(-10000, room_height - 100,
                      10000, room_height - 100)

rot_dir = 1

if max_angle < min_angle {
    throw "bad variable definitions: max_angle < min_anlge"
}
