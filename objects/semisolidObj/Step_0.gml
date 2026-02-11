if instance_exists(playerObj) {
	if playerObj.y <= y {
		solidState = true;
		depth = -100;
		sprite_index = muerteSpr;
	} else {
		solidState = false;
		depth = -97;
		sprite_index = onesidedSpr;
	}
}