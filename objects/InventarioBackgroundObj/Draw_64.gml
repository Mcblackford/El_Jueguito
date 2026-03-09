draw_self()

if invGUIObj.sec_act == TIPO_CLAVE {
	draw_sprite_ext(inventarioclaveSpr, -1, 0, 0, 2.845, 2.845, 0, c_white, invGUIObj.alfasprite)
} else if invGUIObj.sec_act == TIPO_NORMI {
	draw_sprite_ext(inventarioSpr, -1, 0, 0, 2.845, 2.845, 0, c_white, invGUIObj.alfasprite)
}