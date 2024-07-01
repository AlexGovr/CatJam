
if  (visible and checkComplete()) {
    if instance_exists(next_tutorial) {
        next_tutorial.activate()
    }
    instance_destroy()
}
