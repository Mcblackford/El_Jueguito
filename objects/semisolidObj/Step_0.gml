if instance_exists(playerObj) {
	if place_meeting(x, y - 1, playerObj) {
		solidState = true;
		sprite_index = muerteSpr;
	} else {
		solidState = false;
		sprite_index = onesidedSpr;
	}
}
depth = -100