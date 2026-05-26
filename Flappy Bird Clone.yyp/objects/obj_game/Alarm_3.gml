//Incrementa em um ponto o score atual
global.score_atual++;

//Iremos incrementar um nível a cada dez pontos
if(global.score_atual == global.pontos_niveis[global.level] && global.level < 9) {
	global.level++;
	
	audio_play_sound(snd_levelup, 0, false, 0.6);
	
	//Incrementa a velocidade global dos novos obstáculos
	global.vel_arvore -= 0.5;
	global.vel_passaro -= 0.5;
	
	//Fazer com que as instâncias atuais dos obstáculos ganhem velocidade também
	var obs_id = layer_get_id("Obstaculos");
	var id_obs = layer_get_all_elements(obs_id);
	for (var i = 0; i < array_length(id_obs); i++){
		var nova_vel = 0;
		var instancia = layer_instance_get_instance(id_obs[i]);
		if (instancia.object_index == obj_arvore) nova_vel = global.vel_arvore;
		else if (instancia.object_index == obj_passaro) nova_vel = global.vel_passaro;
		instancia.hspeed = nova_vel;
	}
	
	//Fazer o mesmo com os coletáveis
	var col_id = layer_get_id("Coletaveis");
	var id_col = layer_get_all_elements(col_id);
	for (var i = 0; i < array_length(id_col); i++) {
		var instancia = layer_instance_get_instance(id_col[i]);
		instancia.hspeed = global.vel_arvore;
	}	
	
	//Fazer o incremento de velocidade nos layers de background
	var layers = layer_get_all();
	for (var i = 0; i < array_length(layers); i++) {
		var id_bg = layer_background_get_id(layers[i]);
		if (id_bg == -1) continue;
		else if (layer_get_hspeed(id_bg) == 0) continue;
		layer_hspeed(id_bg, layer_get_hspeed(id_bg) - 0.25);
	}
}

//Seta um novo alarme para adicionar um novo ponto
alarm[3] = FRAMES_PONTOS;