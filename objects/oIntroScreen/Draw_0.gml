intro_timer --

if !intro_timer and (keyboard_check_pressed(vk_anykey) or mouse_check_button_pressed(mb_any))
{
	instance_destroy()
	instance_create_layer(0, -16, "Instances", oIntroComic)
}

draw_sprite(thq_logo, 0, room_width * 0.5, room_height * 0.5)

if !intro_timer {
}