draw_set_alpha(alfasprite)

draw_sprite_ext(notifItemSpr, -1, 0, posicionYfinal, 2.135, 2.135, 0, c_white, alfasprite);

draw_set_font(Brief_x24)
draw_set_colour(c_white)
draw_text_ext(519, posicionYfinal + 49, name + sumstring + string(cant), 10, 800)

draw_set_font(short_story_x10)
draw_set_colour(c_white)
draw_text_ext(519, posicionYfinal + 85, desc, 23, 440)

draw_sprite_ext(sprite, -1, 405, posicionYfinal + 63, 2.5, 2.5, 0, c_white, alfasprite)