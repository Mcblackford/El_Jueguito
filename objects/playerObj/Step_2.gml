var plataforma = collision_rectangle(x-6,y,x+6,y+1,colisionMovObj,true,true)
if (plataforma) {
	x += plataforma.hspeed
}