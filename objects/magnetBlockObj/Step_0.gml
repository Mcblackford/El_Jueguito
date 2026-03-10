if ciclotimermag <= 0 {
	ciclotimermag = 10;
} else {
	ciclotimermag--;
}

randomnumberx = random_range(sprite_width*0.5*(-1),sprite_width*0.5);
randomnumbery = random_range(sprite_height*0.5*(-1),sprite_height*0.5);

if magnetoestado == magnetstate.delectrified {
	magnetblock_regular()
}

else if magnetoestado == magnetstate.electrified {
	magnetblock_electrified()
}