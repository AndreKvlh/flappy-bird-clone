//Vamos verificar se o player colidiu com um obstáculo
//a fim de parar o jogo
if(obj_player.colidiu) {
	//Vamos parar todos os layers de background iterando sobre cada
	//um para isso
	var layers = layer_get_all();
	for (var i = 0; i < array_length(layers); i++) {
		var id_bg = layer_background_get_id(layers[i]);
		if (id_bg == -1) continue;
		layer_hspeed(id_bg, 0);
	}
	
	//Por fim, precisamos parar as instâncias das árvores e
	//evitar a geração de mais.
	var obstaculos = layer_get_all_elements(layer_get_id("Obstaculos"));
	for(var i = 0; i < array_length(obstaculos); i++){
		var instancia = layer_instance_get_instance(obstaculos[i]);
		instancia.hspeed = 0;
	}
	//Verificação para ver se o alarm 0 está parado. Isso serve para
	//rodar uma única vez todo o processo dentro do step a fim de
	//criar um alarm para reset
	if(alarm[0] != -1) {
		alarm[0] = -1;
	
		//Vamos colocar um outro alarm para rodar daqui a 1 segundo
		alarm[1] = game_get_speed(gamespeed_fps);
	}
}