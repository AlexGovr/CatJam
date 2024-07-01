
var col = c_white
if oShapeMatch.is_drawing {
	col = is_captured ? c_blue : c_red
}
if is_failed_one {
    col = c_black
}

draw_set_color(col)
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, col, 1)
draw_set_color(c_white)
