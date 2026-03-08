function music_active(){

if playerObj.currenthab == habs.armonia {
	currentmelody = cursorObj.cursorstate + 1;
} else if playerObj.currenthab == habs.armoniamayor {
	currentmelody = cursorObj.cursorstate + 5;
} else if playerObj.currenthab == habs.armoniamenor {
	currentmelody = cursorObj.cursorstate + 9;
}

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
						if habilidad && note7 == 0 {
							note7 = currentmelody;
						} else if note7 != 0 {
							note1 = currentmelody;
							note2 = 0;
							note3 = 0;
							note4 = 0;
							note5 = 0;
							note6 = 0;
							note7 = 0;
						}
					}
				}
			}
		}
	}
}

}