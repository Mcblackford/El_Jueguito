if place_meeting(x, y, other) {
	transferTimer = transferFrames;
	transferTimer--;
}

if place_meeting(x, y, other) && transferTimer == 0 {
	room_goto(roomtarget);
	playerObj.x = xtarget;
	playerObj.y = ytarget;
}