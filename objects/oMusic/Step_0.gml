if (global.music_enabled == false){
	audio_group_set_gain(audiogroup_bgm, 0, 0)
}
if (global.music_enabled == true){
	audio_group_set_gain(audiogroup_bgm, 1, 0)
}	
