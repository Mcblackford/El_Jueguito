draw_set_colour(c_black);
draw_set_alpha(fadelevel);
draw_rectangle(cameraObj.x - 1240, cameraObj.y -1240,cameraObj.x + 1240, cameraObj.y +1240, false);
draw_set_alpha(1);