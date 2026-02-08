x = mouse_x;
y = mouse_y;
depth = -9000;

key1 = keyboard_check(ord("1"));
key2 = keyboard_check(ord("2"));
key3 = keyboard_check(ord("3"));
key4 = keyboard_check(ord("4"));
key5 = keyboard_check(ord("5"));
key6 = keyboard_check(ord("6"));
key7 = keyboard_check(ord("7"));

if !(key1 || key2 || key3 || key4 || key5 || key6 || key7) {sprite_index = standarCur} else {
if key1 {sprite_index = fuegoCur}
if key2 {sprite_index = vientoCur}
if key3 {sprite_index = rayoCur}
if key4 {sprite_index = nubeCur}
if key5 {sprite_index = imanCur}
if key6 {sprite_index = ruidoCur}
if key7 {sprite_index = armoniaCur}
}