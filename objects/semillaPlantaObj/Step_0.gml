if plantastate == planta.dried {
	
}

if place_meeting(x,y, gotaObj) {
	plantastate = planta.growing;
}

if plantastate == planta.growing {
	
	sprite_index = bloqueWindMovSpr;
	
	if createtimer > 0 {
		createtimer--;
	}
	
	if createtimer == 5 {
		var _spawner = instance_create_layer(x,y, "instances", plantaSpawnerObj)
		
		_spawner.Plantapointx_1 = Plantapointx_1;
		_spawner.Plantapointy_1 = Plantapointy_1;
		_spawner.Plantapointx_2 = Plantapointx_2;
		_spawner.Plantapointy_2 = Plantapointy_2;
		_spawner.Plantapointx_3 = Plantapointx_3;
		_spawner.Plantapointy_3 = Plantapointy_3;
		_spawner.Plantapointx_4 = Plantapointx_4;
		_spawner.Plantapointy_4 = Plantapointy_4;
		_spawner.Plantapointx_5 = Plantapointx_5;
		_spawner.Plantapointy_5 = Plantapointy_5;
		_spawner.Plantapointx_6 = Plantapointx_6;
		_spawner.Plantapointy_6 = Plantapointy_6;
	}
}

if plantastate == planta.iddle {
	
}