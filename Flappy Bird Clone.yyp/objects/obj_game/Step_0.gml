//Vamos verificar se o player colidiu com um obstáculo
//a fim de parar o jogo
if(obj_player.colidiu) {
	if(alarm[0] == -1) exit;
	//Vamos parar todos os layers de background iterando sobre cada
	//um para isso
	alterar_vel_backgrounds(0);
	
	//Pare também os coletáveis
	var coletaveis = layer_get_all_elements(layer_get_id("Coletaveis"));
	for(var i = 0; i < array_length(coletaveis); i++){
		var instancia = layer_instance_get_instance(coletaveis[i]);
		instancia.hspeed = 0;
	}
	
	//Por fim, precisamos parar as instâncias das árvores e
	//evitar a geração de mais.
	var obstaculos = layer_get_all_elements(layer_get_id("Obstaculos"));
	for(var i = 0; i < array_length(obstaculos); i++){
		var instancia = layer_instance_get_instance(obstaculos[i]);
		instancia.hspeed = 0;
	}
	
	//Todos os alarmes ativos serão travados
	alarm[0] = -1;
	alarm[2] = -1;
	alarm[3] = -1
	
	//Vamos colocar um outro alarm para rodar daqui a 1 segundo
	alarm[1] = game_get_speed(gamespeed_fps);
	
	//Retira uma vida da global de controle
	global.vidas--;
	
	//Vamos fazer uma condicional aqui a fim de definir qual é
	//a room de destino. Se o personagem tiver com mais que zero
	//vidas, ele volta para o começo do jogo. Do contrário, volta
	//para o título
	if(global.vidas > 0) global.destino = rm_jogo;
	else global.destino = rm_inicio;
	
	//Iniciar a sequência
	layer_sequence_create("Transicao", 0, 0, seq_fadein);
}

