if (place_meeting(x, y, playerObj)) {
room_goto(roomtarget);
playerObj.x = xtarget;
playerObj.y = ytarget;
image_speed = -1
}
