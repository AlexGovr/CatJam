hiding_spot = instance_nearest(x, y, oHideSpotParent)
hiding_spot.shape_points_count++
visible = DEBUG
is_captured = false

function capture() {
    is_captured = true
}
