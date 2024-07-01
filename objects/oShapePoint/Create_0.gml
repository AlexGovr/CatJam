hiding_spot = instance_place(x, y, oHideSpotParent)
if !hiding_spot {
	var test = true
}
hiding_spot.shape_points_count++
visible = DEBUG
is_captured = false

is_failed_one = false

function capture() {
    is_captured = true
}
