hiding_spot = instance_nearest(x, y, oHideSpot)
hiding_spot.shape_points_count++
visible = true
is_captured = false

function capture() {
    is_captured = true
}
