function estado_player_adquirir_hab(){ ///

waittimer--;

var _adquiriendo = instance_create_layer(x,y, "instances", adqHabilidadObj)

if waittimer <= 0 {
	estado = states.control
}

} ///