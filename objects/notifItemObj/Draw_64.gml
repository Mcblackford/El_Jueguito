draw_set_alpha(alfasprite)

draw_sprite_ext(notifItemSpr, -1, 0, posicionYfinal, 2.135, 2.135, 0, c_white, alfasprite);

draw_set_font(Brief_x24)
draw_set_colour(c_white)
draw_text_ext(520, posicionYfinal + 46, name + sumstring + cant, 10, 200)

draw_set_font(short_story_x10)
draw_set_colour(c_white)
draw_text_ext(519, posicionYfinal + 80, "Esto es una descripción muy descripciosa, muy descripciosa es esta descripción, otra, otra más papá", 24, 440)

draw_sprite_ext(pocionSpr, -1, 410, posicionYfinal + 66, 2.135, 2.135, 0, c_white, alfasprite)