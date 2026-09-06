if (!hablando) && (alfasprite <= 0) {exit;}

draw_self();
draw_set_alpha(alfasprite);

if hablando == true {
	if alfasprite < 1 {
		alfasprite += alfasumaspr;
	} else {
		alfasprite = 1;
	}
}

else if hablando == false {
	if alfasprite > 0 {
		alfasprite -= alfasumaspr;
	} else {
		alfasprite = 0;
	}
}

if (hablando) {

    draw_set_color(c_black);
    draw_rectangle(10, 10, 500, 100, false);
    

    draw_set_color(c_white);
    

    draw_text(20, 20, mi_nombre + ":");
    draw_text(20, 50, mi_text);
}