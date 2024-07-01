
enum MatchStatus {
    drawing,
    fail,
    success,
}

status = MatchStatus.drawing

points = []
is_drawing = false
current_shape = noone
current_shape_dist = 0
is_failed = false
colors = [ #7FBFFF, c_red, c_lime]

max_width = 12
min_width = 2
max_sp = 10
sp = 0
sp_gain = 0.2
accel = 1
max_shape_dist = 24

click_timer = MakeTimer(15)

xprev = 0
yprev = 0

result = ""

function click() {
	oCat.moveTo(mouse_x, mouse_y)
}

function resetPoints() {
    with oShapePoint {
        is_captured = false
        is_failed_one = false
    }
}

function allPointsCaptured() {
    var count = 0
    with oShapePoint {
        count += is_captured
    }
    // make cure at least half points is captured
    return count >= current_shape.shape_points_count * 0.5
}

function successSaticfied() {
    var dist_to_first = point_distance(mouse_x, mouse_y, points[0][0], points[0][1])
    return (dist_to_first < max_shape_dist) and allPointsCaptured()
}

function finishDrawing() {
	if !is_failed and successSaticfied() {
		result = "Success!"
		oCat.startHiding(current_shape)
        sfx_play(snd_validate, 0, false)
	} else {
		result = "Fail =("
        sfx_play(snd_cancel, 0, false)
	}
	resetPoints()
}
