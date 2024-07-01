intro_timer --

if (intro_timer < 1)
{
	instance_destroy()
	instance_create_layer(0, -16, "Instances", oIntroComic)
}


var _alpha = 0
if (intro_timer < logo_fadein) 
_alpha = (intro_timer - logo_start) / logo_fadein_time
if (intro_timer < logo_fadeout)
_alpha = (logo_end - intro_timer) / logo_fadeout_time

draw_set_alpha(_alpha)
draw_sprite(thq_logo, 0, room_width * 0.5, room_height * 0.7)
draw_set_alpha(1)

