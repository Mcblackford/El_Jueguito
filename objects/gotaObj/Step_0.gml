image_xscale = 2.5;
image_yscale = 2.5;

image_alpha = alfaval;

if alfaval < 1 {
	alfaval += alfasum
}

vspeed = 5 + acceldown;

existingtimer++;

if sprite == 0 {
	sprite_index = lluviaSpr_1;
} else if sprite == 1 {
	sprite_index = lluviaSpr_2;
} else if sprite == 2 {
	sprite_index = lluviaSpr_3;
} else if sprite == 3 {
	sprite_index = lluviaSpr_4;
}

acceldown++;

if place_meeting(x,y, colisionObj) {
	instance_destroy()
}