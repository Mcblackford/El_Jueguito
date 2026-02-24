function magnetblock_movement(){///

if place_meeting(x,y,ColisionDer) || place_meeting(x,y,ColisionIzq) {
	hspeed = 0;
}
else if place_meeting(x,y,ColisionArriba) || place_meeting(x,y,ColisionAbajo) {
	vspeed = 0;
}

if instance_exists(magnetObj) {
	var _target = instance_nearest(x,y,magnetObj);
	var _distance = 700;
	var _dist = point_distance(x,y,_target.x,_target.y);
	
	techo = (collision_rectangle(x+5,y-sprite_height-10,x+sprite_width-5,y-sprite_height, colisionObj,true,true) && (_target.y < (y-(sprite_height*0.5))));
	paredizq = (collision_rectangle(x-10,y-sprite_height+5,x,y-5, colisionObj,true,true) && (_target.x < (x+(sprite_width*0.5))));
	paredder = (collision_rectangle(x+sprite_width,y-sprite_height+5,x+sprite_width+10,y-5, colisionObj,true,true) && (_target.x > (x+(sprite_width*0.5))));
	suelo = (collision_rectangle(x+5,y,x+sprite_width-5,y+10,colisionObj,true,true) && (_target.y > (y-(sprite_height*0.5))));
	
	if _dist <= _distance {
		if techo {
			direction = point_direction (x+(sprite_width*0.5), y, _target.x, y-(sprite_height*0.5));
		} else if suelo {
			direction = point_direction (x+(sprite_width*0.5), y, _target.x, y-(sprite_height*0.5));
		} else if paredder {
			direction = point_direction (x, y-(sprite_height*0.5), x-(sprite_width*0.5), _target.y);
		} else if paredizq {
			direction = point_direction (x, y-(sprite_height*0.5), x+(sprite_width*0.5), _target.y);
		} else {
			direction = point_direction (x+(sprite_width*0.5), y-(sprite_height*0.5), _target.x, _target.y);
		}
		magnetaccel += magnetaccelval;
		magnetobloquegrav = 0;
		if !collision_rectangle(x+(sprite_width*0.5)-10,y-(sprite_height*0.5)-10,x+(sprite_width*0.5)+10,y-(sprite_height*0.5)+10,magnetObj,true,true) {
			if suelo {
				speed = 4 + magnetaccel;
				vspeed = 0;
			}
			else if techo {
				speed = 4 + magnetaccel;
				vspeed = 0;
			}
			else if paredizq {
				speed = 4 + magnetaccel;
				hspeed = 0;
			}
			else if paredder {
				speed = 4 + magnetaccel;
				hspeed = 0;
			}
			else {
				speed = 2 + magnetaccel;
			}
		} else {
			speed = 0;
		}
	} else {
		magnetaccel = 0;
		magnetobloquegrav += magnetograval;
		vspeed = 0;
		
		if !collision_rectangle(x,y,x+sprite_width,y+1,colisionObj,true,true) {
			y += magnetobloquegrav;
		} else {
			y+= 0;
			var plataforma = collision_rectangle(x,y,x+sprite_width,y+1,colisionObj,true,true)
			if (plataforma) {
				y = plataforma.y;
				cajagravedad = 0;
			}
		}
	}
} else {
	magnetaccel = 0;
	magnetobloquegrav += magnetograval;
	vspeed = 0;	
	if !collision_rectangle(x,y,x+sprite_width,y+1,colisionObj,true,true) {
		y += magnetobloquegrav;
	} else {
		y+= 0;
		var plataforma = collision_rectangle(x,y,x+sprite_width,y+1,colisionObj,true,true)
		if (plataforma) {
			y = plataforma.y;
			cajagravedad = 0;
		}
	}
}

if place_meeting(x,y,ColisionDer) {
	x += -1;
} else if place_meeting(x,y,ColisionIzq) {
	x += 1;
} else if place_meeting(x,y,ColisionAbajo) {
	y += -1;
} else if place_meeting(x,y,ColisionArriba) {
	y += 1;
} else {
	x += 0;
}

}///