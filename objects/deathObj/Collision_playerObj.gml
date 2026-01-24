if (file_exists("checkpoint.ini")) {
	ini_open("checkpoint.ini")
	
	other.x = ini_read_real ("player", "x", x);
	other.y = ini_read_real ("player", "y", y);
	
	ini_close();
}