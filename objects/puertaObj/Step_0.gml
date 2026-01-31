depth = -100;

if instance_exists(SwitchObj) {
var _sw = instance_find(SwitchObj,0);
if _sw.palanca == true
{
   if (start_y - sprite_height < y) {y -= 3}
} else {
	if (y < start_y) {y +=10}
}
}