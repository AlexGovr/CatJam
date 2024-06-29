
var col = colors[status]
for (var i = 0; i < array_length(points) - 1; ++i) {
	var p = points[i]
	var pp = points[i + 1]
    var wstart = p[2]
    var wend = pp[2]
    var step_len = min_width
    var len = point_distance(p[0], p[1], pp[0], pp[1])
    var lenx = pp[0] - p[0]
    var leny = pp[1] - p[1]
    step = 0
    steps = len div step_len
	if steps > 0 {
		var test = true	
	}
    for (var j = 0; j < steps; ++j) {
        var fract = j / steps
        var xx = p[0] + lenx * fract
        var yy = p[1] + leny * fract
        var ww = lerp(wstart, wend, fract)
        draw_circle_color(xx, yy, ww, col, col, false)
    }

	// draw_line_width_color(p[0], p[1], pp[0], pp[1], pp[2], col, col)
}


//geom_draw_multiline3(points, col)


//geom_draw_multiline2(shape, 3, c_aqua)
