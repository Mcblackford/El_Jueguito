endtimer++;

if place_meeting (x,y,windcolision) && (windcolision.sprite_index == windleftcolSpr) {
	hspeed = -5;
}

if place_meeting (x,y,windcolision) && (windcolision.sprite_index == windrightcolSpr) {
	hspeed = 5;
}

if place_meeting (x,y,windcolision) && (windcolision.sprite_index == windupcolSpr) {
	vspeed = -5;
}

if place_meeting (x,y,windcolision) && (windcolision.sprite_index == winddowncolSpr) {
	vspeed = 5;
}

if endtimer > 340 {
	instance_destroy()
}

depth = -98;