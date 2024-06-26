
sp = 5
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
        image_xscale = sign(dist)
        x += sp * image_xscale
    } else {
        x = xto
    }
}

function hide() {
	is_hiding = true
	visible = false
}

function startHiding(spot) {
	stopHiding()
	hiding_spot = spot
}

function stopHiding() {
	is_hiding = false
	visible = true
	hiding_spot = noone
}
