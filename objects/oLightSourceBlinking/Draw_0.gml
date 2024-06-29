
var light_on = (on_timer.timer && !blink_timer.timer)
               || ((off_timer.timer && blink_timer.timer))

if blink_timer.timer
	var test = true

if light_on {
    draw_set_alpha(0.3)
    draw_triangle(
        x, y,
        line1.xend, line1.yend,
        line2.xend, line2.yend,
        false
    )
    draw_set_alpha(1)
}
