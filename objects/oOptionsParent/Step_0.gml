mouse_in_button = MouseInButton()

if mouse_in_button{
	image_xscale_max = 1.2
	image_yscale_max = 1.2
} else {
	image_xscale_max = 1
	image_yscale_max = 1
}

if image_xscale < image_xscale_max 
image_xscale = min(image_xscale + 0.2, image_xscale_max)

if image_yscale < image_yscale_max 
image_yscale = min(image_yscale + 0.2, image_yscale_max)

if image_xscale > image_xscale_max 
image_xscale = image_xscale_max

if image_yscale > image_yscale_max 
image_yscale = image_yscale_max


