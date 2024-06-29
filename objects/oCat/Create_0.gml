
sp = 6
hiding_spot = noone
is_hiding = false

xto = x
yto = y

danger_level = 0
danger_fall_sp = 0.1
danger_ratio = danger_fall_sp + 0.6

function danger() {
    danger_level += 1 + danger_ratio
}

function moveTo(xx, yy) {
    stopHiding()
    xto = xx
    yto = yy
}

function move() {
    var dist = xto - x
    if abs(dist) > sp {
        image_xscale = sign(dist) * abs(image_xscale)
        x += sp * sign(dist)
    } else {
        x = xto
    }
}

function hide() {
	is_hiding = true
	visible = false
    x = hiding_spot.x
    hiding_spot.trigger()
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
}
