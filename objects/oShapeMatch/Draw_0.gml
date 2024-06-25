
var col = is_failed ? c_red : c_lime
for (var i = 0; i < array_length(points) - 1; ++i) {
	var p = points[i]
	var pp = points[i + 1]
	draw_line_width_color(p[0], p[1], pp[0], pp[1], pp[2], col, col)
	draw_circle_color(p[0], p[1], p[2], col, col, false)
}


//geom_draw_multiline3(points, col)


//geom_draw_multiline2(shape, 3, c_aqua)
