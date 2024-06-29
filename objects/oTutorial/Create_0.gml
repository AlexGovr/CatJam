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
