draw_self()

if danger_level > 0 {
    var w = sprite_get_width(sAlert)
    var h = sprite_get_height(sAlert)
    var xx = camx_cent() - w * 0.5, yy = camy_cent() - h
	draw_sprite_part(sAlert, 0, 0, 0, w, h, xx, yy)
    var top = h * (1 - danger_level / 100)
	draw_sprite_part(sAlert, 1, 0, top, w, h, xx, yy + top)
}
