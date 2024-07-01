text_id = "tut_navigate"
next_tutorial = oTutorialLights
visible = false

function activate() {
    instance_create_layer(0, 0, "Instances", oCamera)
	show_debug_message("Camera created")
    visible = true
}

function checkComplete() {
    if !instance_exists(oCamera) {return false};
    if oCamera.x > (camw() * 0.5 + 200) {
        oCat.in_control = true
        return true
    }
    return false
}
