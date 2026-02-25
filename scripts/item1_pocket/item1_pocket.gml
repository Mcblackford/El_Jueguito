function item1_pocket(){

sprite_index = itemAdesbanecer;
sprite_set_speed(sprite_index, 20*randomitemvalue, spritespeed_framespersecond)

var _target = instance_nearest(x,y,playerObj);
var _distance = point_distance(x,y, _target.x,_target.y-64)
direction = point_direction (x, y, _target.x+(randomhspd*5), _target.y-64+(randomhspd*5));
speed = 5 * randomitemvalue;

if (image_index > image_number-1) {
	instance_destroy()
}

}