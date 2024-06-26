
EnsureSingleton()

var fade_out_time_sec = 0.4
fade_out_speed = 1 / (fps_max * fade_out_time_sec)
alpha = 0
is_transition = false
is_fade_out = false
is_restart = false

function transition() {
	is_transition = true
	is_fade_out = true
}

function restart() {
	is_transition = true
	is_restart = true
	is_fade_out = true
}

