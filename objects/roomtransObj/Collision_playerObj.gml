var _sequenceout = Fadeout;
var _sequencein = Fadein
var _layer = "fadeout";
sequenceTimer = sequenceFrames;
sequenceTimer--;

if !layer_sequence_exists(_layer, _sequenceout) && sequenceTimer > 0 {
	layer_create(-9000, _layer);
	layer_sequence_create(_layer, cameraObj.x, cameraObj.y, _sequenceout);
}
