
prev_light_on = light_on
light_on = (on_timer.timer && !blink_timer.timer)
               || ((off_timer.timer && blink_timer.timer))


if light_on {
    draw_set_alpha(0.3)
    draw_triangle(
        x, y,
        line1.xend, line1.yend,
        line2.xend, line2.yend,
        false
    )
    draw_set_alpha(1)
} else if prev_light_on {
	var dist = abs(camx_cent() - x)
	var gain = min(1 / dist * 60, 1)
	audio_play_sound(snd_lightbulb, 0, false, gain)
}
