function item1_emerging(){

sprite_index = itemAcont;

if !collision_rectangle(x-20,y,x+20,y+1,colisionObj,true,true) {
	itemgravedad++;
	y += itemgravedad;
	hspeed = randomhspd;
	vspeed = -20;
} else {
	y+= 0;
	vspeed = 0;
	hspeed = 0;
	var plataforma = collision_rectangle(x-20,y,x+20,y+1,colisionObj,true,true)
	if (plataforma) {
		y = plataforma.y;
		estadoitem = itemstate.transition;
	}
}

}