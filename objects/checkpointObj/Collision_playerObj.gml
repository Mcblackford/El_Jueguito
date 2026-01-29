ini_open("checkpoint.ini");

ini_write_real("player", "x", other.x);
ini_write_real("player", "y", other.y);
ini_write_real("player", "roomID", room);

ini_close();
