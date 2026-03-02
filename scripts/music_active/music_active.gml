function music_active(){

habilidad = mouse_check_button_pressed(mb_left);

if habilidad && note1 == 0 {
	note1 = currentmelody;
} else if note1 != 0 {
	if habilidad && note2 == 0 {
		note2 = currentmelody;
	} else if note2 != 0 {
		if habilidad && note3 == 0 {
			note3 = currentmelody;
		} else if note3 != 0 {
			if habilidad && note4 == 0 {
				note4 = currentmelody;
			} else if note4 != 0 {
				if habilidad && note5 == 0 {
					note5 = currentmelody;
				} else if note5 != 0 {
					if habilidad && note6 == 0 {
						note6 = currentmelody;
					} else if note6 != 0 {
						note1 = currentmelody;
						note2 = 0;
						note3 = 0;
						note4 = 0;
						note5 = 0;
						note6 = 0;
					}
				}
			}
		}
	}
}

}