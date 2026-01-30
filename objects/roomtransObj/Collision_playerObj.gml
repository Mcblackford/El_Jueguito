var _sequenceout = Fadeout;
var _sequencein = Fadein
var _layer = "fadeout";
sequenceTimer = sequenceFrames;
sequenceTimer--;

if !layer_sequence_exists(_layer, _sequenceout) {
	layer_create(-9000, _layer);
	layer_sequence_create(_layer, cameraObj.x, cameraObj.y, _sequenceout);
} else {
	layer_sequence_destroy(_sequenceout)
}

if layer_sequence_destroy(_sequenceout) {
	layer_sequence_create(_layer, cameraObj.x, cameraObj.y, _sequencein);
} else {
	layer_sequence_destroy(_sequencein)
}