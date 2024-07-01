// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MouseInButton(){
	
	if point_in_rectangle(mouse_x, mouse_y,
	bbox_left, bbox_top, bbox_right, bbox_bottom)
	
	return true
	
	else
	
	return false
	
}


function ButtonSetScale(_mouse_in_button){
//Make the button bigger on mouse hover

	if _mouse_in_button
	{
		image_xscale = 1.1
		image_yscale = 1.1
		image_angle = 3
		text_scale = image_xscale/3
	}

	if !_mouse_in_button
	{
		image_xscale = 1
		image_yscale = 1
		image_angle = 0
		text_scale = image_xscale/3
	}
	
}

function SetAllButtonsInactive() {
	var _myactive = active

	with oSSButtonParent
	active = false

	active = _myactive
	
	SetLanguageButtonsInactive()
	SetOptionsButtonsInactive()
}

function SetLanguageButtonsInactive(){
	instance_deactivate_object(oLanguageButtonParent)
}

function SetOptionsButtonsInactive(){
	instance_deactivate_object(oOptionsParent)
}
	

