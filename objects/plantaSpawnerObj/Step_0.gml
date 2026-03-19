speed = 5;

if followpoint == 0 {
	
	if Plantapointx_1 > 0 {
		direction = point_direction(x,y,Plantapointx_1, Plantapointy_1)
	} else {
		instance_destroy()
	}
	
	if place_meeting(x,y, plantaPoint_1) && followpoint == 0 {
		followpoint = 1;
	}
	
} else if followpoint == 1 {
	
	if Plantapointx_2 > 0 {
		direction = point_direction(x,y,Plantapointx_2, Plantapointy_2)
	} else {
		instance_destroy()
	}
	
	if place_meeting(x,y, plantaPoint_2) {
		followpoint = 2;
	}
	
} else if followpoint == 2 {
	
	if Plantapointx_3 > 0 {
		direction = point_direction(x,y,Plantapointx_3, Plantapointy_3)
	} else {
		instance_destroy()
	}
	
	if place_meeting(x,y, plantaPoint_3) {
		followpoint = 3;
	}
	
} else if followpoint == 3 {
	
	if Plantapointx_4 > 0 {
		direction = point_direction(x,y,Plantapointx_4, Plantapointy_4)
	} else {
		instance_destroy()
	}
	
	if place_meeting(x,y, plantaPoint_4) {
		followpoint = 4;
	}
	
} else if followpoint == 4 {
	
	if Plantapointx_5 > 0 {
		direction = point_direction(x,y,Plantapointx_5, Plantapointy_5)
	} else {
		instance_destroy()
	}
	
	if place_meeting(x,y, plantaPoint_5) {
		followpoint = 5;
	}
	
} else if followpoint == 5 {
	
	if Plantapointx_6 > 0 {
		direction = point_direction(x,y,Plantapointx_6, Plantapointy_6)
	} else {
		instance_destroy()
	}
	
	if place_meeting(x,y, plantaPoint_6) {
		instance_destroy()
	}
	
}