if layer_sequence_is_finished(_sequenceout) {
	layer_sequence_destroy(_sequenceout);
	layer_sequence_create(_layer, cameraObj.x, cameraObj.y, _sequencein);
} else {
	layer_sequence_destroy(_sequencein)
}