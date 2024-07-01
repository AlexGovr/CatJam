// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sfx_play(_sfx, _priority = 1, _loop = false, _gain = 1){
	
	if (global.sfx_enabled == false)
	_gain = 0
	
	audio_play_sound(_sfx, 0, _loops, _gain)

}
	