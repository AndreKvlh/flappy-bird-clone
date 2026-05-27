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
	
	//Variável temporária que calcula a nova velocidade dos
	//layers do bg
	var vel_bg_nova = -1 - (0.5 * (global.level - 1));
	
	//Fazer o incremento de velocidade nos layers de background
	layer_hspeed("bg_arvores", vel_bg_nova);
	
	//Ao entrar no nível 3, será colocado as aves
	if (global.level == 3) alarm[2] = random_range(2,5) * 60;
}

//Seta um novo alarme para adicionar um novo ponto
alarm[3] = FRAMES_PONTOS;