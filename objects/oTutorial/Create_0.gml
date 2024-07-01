text_id = "tut_outlining"
next_tutorial = oTutorialMove

function activate() {
    visible = true
}

function checkComplete() {
    if oCat.is_hiding {
        oHSBox.image_index = 0
        oHSBox.image_speed = 0
        return true
    }
    return false
}

if instance_exists(oCamera) {
    instance_destroy(oCamera)
}

if global.tutorial_done {
	instance_activate_all()
	with oTutorial {
		activate()	
	}
	instance_destroy(oTutorial)
	if !instance_exists(oCamera) {
		instance_create_layer(0, 0, "Instances", oCamera)	
	}
}
