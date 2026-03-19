function stats(){
	initHab();
	
	global.equipo = [];
	
	global.equipo[0] = new crearStats(
	"Jugador",
	100,20,20,1,1,1,1,1,1,1,1,1,20,55,
	"neutro",
	[global.habilidades.fireball]
	); 
	
	global.enemigo = new crearStats(
	"Enemigo1",
	100,10,10,1,1,1,1,1,1,1,1,1,20,50,
	"fuego",
	[global.habilidades.fireball]
	);
}