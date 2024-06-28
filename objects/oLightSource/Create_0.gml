
var height = 1080
var width = 100
angle = min_angle
p2 = new Vec2(height, angle + 15, true)
p3 = new Vec2(height, angle - 15, true)

rot_dir = 1

if max_angle < min_angle {
    throw "bad variable definitions: max_angle < min_anlge"
}
