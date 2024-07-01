intro_timer --

if (intro_timer < 1)
{
	instance_destroy()
	instance_create_layer(0, -16, "Instances", oIntroComic)
}

draw_sprite(thq_logo, 0, room_width * 0.5, room_height * 0.5)


