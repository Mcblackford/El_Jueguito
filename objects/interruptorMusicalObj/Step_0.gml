depth = -100;

if instance_exists(musicObj) {

	if place_meeting(x, y-10, playerObj) && (note1block == musicObj.note1)
	&& (note2block == musicObj.note2)
	&& (note3block == musicObj.note3)
	&& (note4block == musicObj.note4)
	&& (note5block == musicObj.note5)
	&& (note6block == musicObj.note6)
	
	{
		active = true;
			with (puertaSumObj) {
			if boton == other.boton {
				if (other.active){
					botoncount += 1;
				} else {botoncount -=1}
			}
		}
	}
}

if active == true {
	sprite_index = bloqueMusActSpr;
}