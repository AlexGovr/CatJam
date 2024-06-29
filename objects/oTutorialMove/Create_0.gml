event_inherited()

text_id = "tut_click_to_move"
next_tutorial = oTutorialNavigate
visible = false

function checkComplete() {
    if oCat.x < x {
        oCat.in_control = false
        return true
    }
    return false
}
