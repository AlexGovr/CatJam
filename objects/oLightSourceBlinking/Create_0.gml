

floor_line = new Line(-10000, room_height - 100,
                      10000, room_height - 100)

p1 = new Vec2(1, angle + cone_angle * 0.5, true)
p2 = new Vec2(1, angle - cone_angle * 0.5, true)
line1 = new Line(x, y, x + p1.x, y + p1.y)
line2 = new Line(x, y, x + p2.x, y + p2.y)
var ua1 = line_intersection(line1, floor_line, false)
var ua2 = line_intersection(line2, floor_line, false)
line1.mult(ua1)
line2.mult(ua2)


prev_light_on = true
light_on = true
on_timer = MakeTimer(on_time)
off_timer = MakeTimer(off_time, 0)
blink_timer = MakeTimer(10, 0)

blink_frames = [
    90, 65, 50, 30, 15
]

function isBlinkFrame(timer) {
    for (var i = 0; i < array_length(blink_frames); i += 1) {
        if timer == blink_frames[i] {
            return true
        }
    }
    return false
}
