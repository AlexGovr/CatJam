
var dist = xto - x
if abs(dist) > 1 {
    x += min(dist * sp_gain, sp_max * sign(dist))
} else {
    x = xto
}

x = clamp(x, camw() * 0.5, room_width - camw() * 0.5)

camera_set_pos(x, room_height * 0.5)
