text_id = "tut_lights"
next_tutorial = noone
visible = false

lamp = instance_nearest(x, y, oLightSource)
instance_deactivate_object(lamp)

function activate() {
    instance_activate_object(lamp)
    visible = true
}

destroy_timer = MakeTimer(240)

function checkComplete() {
    if !destroy_timer.update() {
        global.tutorial_done = true
        return true
    }
    return false
}
