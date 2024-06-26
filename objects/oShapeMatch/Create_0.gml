
//shape = [
//	[300, 100],
//	[200, 10],
//	[100, 100],
//	[100, 300],
//	[300, 300],
//	[300, 100],
//]

points = []
is_drawing = false
current_shape = noone
current_shape_dist = 0
is_failed = false

max_width = 12
min_width = 2
max_sp = 10
sp = 0
sp_gain = 0.2
accel = 1
max_shape_dist = 40

click_timer = MakeTimer(15)

xprev = 0
yprev = 0

result = ""

function distanceToShape(lines_array, point) {
    var px = point[0];
    var py = point[1];
    var min_distance = infinity;
	
	var len = array_length(lines_array)
    for (var j = 0; j < len; j++) {
        var x1 = lines_array[j][0];
        var y1 = lines_array[j][1];
        var x2 = lines_array[j+1][0];
        var y2 = lines_array[j+1][1];

        var dist = distance_point_to_line(px, py, x1, y1, x2, y2);
        if (dist < min_distance) {
            min_distance = dist;
        }
    }
    var x1 = lines_array[0][0];
    var y1 = lines_array[0][1];
    var x2 = lines_array[len-1][0];
    var y2 = lines_array[len-1][1];
    var dist = distance_point_to_line(px, py, x1, y1, x2, y2);
    if (dist < min_distance) {
        min_distance = dist;
    }

    total_distance += min_distance;
}

function distance_point_to_line(x, y, x1, y1, x2, y2) {
    // Calculate the distance from a point (x, y) to a line segment (x1, y1) to (x2, y2)
    var A = x - x1;
    var B = y - y1;
    var C = x2 - x1;
    var D = y2 - y1;

    var dot = A * C + B * D;
    var len_sq = C * C + D * D;
    var param = (len_sq != 0) ? dot / len_sq : -1;

    var xx, yy;

    if (param < 0) {
        xx = x1;
        yy = y1;
    } else if (param > 1) {
        xx = x2;
        yy = y2;
    } else {
        xx = x1 + param * C;
        yy = y1 + param * D;
    }

    var dx = x - xx;
    var dy = y - yy;
    return sqrt(dx * dx + dy * dy);
}

function measure_shape_difference(lines_array, points_array) {
    var total_distance = 0;
    var point_count = array_length(points_array);
    
    for (var i = 0; i < point_count; i++) {
        var px = points_array[i][0];
        var py = points_array[i][1];
        var min_distance = infinity;  // A large number
        
        for (var j = 0; j < array_length(lines_array); j++) {
            var x1 = lines_array[j][0][0];
            var y1 = lines_array[j][0][1];
            var x2 = lines_array[j][1][0];
            var y2 = lines_array[j][1][1];
            
            var dist = distance_point_to_line(px, py, x1, y1, x2, y2);
            if (dist < min_distance) {
                min_distance = dist;
            }
        }
        
        total_distance += min_distance;
    }
    
    // Normalize the total distance
    var normalized_distance = total_distance / point_count;
    
    return normalized_distance;
}

function click() {
	oCat.moveTo(mouse_x, mouse_y)
}

function allPointsCaptured() {
    var count = 0
    with oShapePoint {
        count += is_captured
        is_captured = false
    }
    // make cure at least half points is captured
    return count >= current_shape.shape_points_count * 0.5
}

function finishDrawing() {
	var dist_to_first = point_distance(mouse_x, mouse_y, points[0][0], points[0][1])
	if !is_failed and (dist_to_first < max_shape_dist) and allPointsCaptured() {
		result = "Success!"
		oCat.startHiding(current_shape)
	} else {
		result = "Fail =("	
	}
}
