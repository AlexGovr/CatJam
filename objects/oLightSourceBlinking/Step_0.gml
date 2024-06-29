// pick current timer
var timer = on_timer.timer ? on_timer : off_timer

// switch timers
if !timer.update() {
    timer = timer == on_timer ? off_timer : on_timer
    timer.reset()
}

if isBlinkFrame(timer.timer) {
    blink_timer.reset()
}

blink_timer.update()


if on_timer.timer && !oCat.is_hiding && rectangle_in_triangle(
    oCat.bbox_left, oCat.bbox_top, oCat.bbox_right, oCat.bbox_bottom,
    x, y,
    line1.xend, line1.yend,
    line2.xend, line2.yend,
) {
    oCat.danger()
}
