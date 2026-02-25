function item1_hidden(){

sprite_index = emptycollSpr;
randomhspd = random_range(-5,5);
randomitemvalue = random_range(1,2);

target = instance_nearest(x,y,cofreComunObj)

x = target.x +32;
y = target.y -34;

if target.estadodecofre == estadosdecofre.abriendo {
	estadoitem = itemstate.emerging
}

}