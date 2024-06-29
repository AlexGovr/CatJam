
sp = 6
hiding_spot = noone
is_hiding = false

xto = x
yto = y

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
