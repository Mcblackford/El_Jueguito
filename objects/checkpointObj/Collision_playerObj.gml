ini_open("checkpoint.ini");

ini_write_real("player", "x", x);
ini_write_real("player", "y", y);
ini_write_real("player", "roomID", room);

ini_close();
