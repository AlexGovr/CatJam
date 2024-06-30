
sp = 6
hiding_spot = noone
is_hiding = false

xto = x
yto = y
in_control = true

danger_level = 0
danger_fall_sp = 0.1
danger_ratio = danger_fall_sp + 0.6
failed = false

var scale = 0.75
image_xscale = scale
image_yscale = scale
image_speed = 0

function danger() {
    danger_level += 1 + danger_ratio
}

function moveTo(xx, yy) {
    if !in_control {
        return
    }
    stopHiding()
    xto = xx
    yto = yy
}

function move() {
    var dist = xto - x
    if abs(dist) > sp {
        image_xscale = sign(dist) * abs(image_xscale)
        x += sp * sign(dist)
		image_speed = 1
    } else {
        x = xto
		image_speed = 0
    }
}

function hide() {
	is_hiding = true
	visible = false
    x = hiding_spot.x
	instance_create_layer(hiding_spot.x, hiding_spot.y, "Cat", oCatBlinkingEyes)
}

function startHiding(spot) {
    if spot == hiding_spot {
        return
    }
	stopHiding()
	hiding_spot = spot
}

function stopHiding() {
	is_hiding = false
	visible = true
	hiding_spot = noone
	instance_destroy(oCatBlinkingEyes)
}
