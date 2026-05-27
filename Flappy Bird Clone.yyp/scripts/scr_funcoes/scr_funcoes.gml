function mudar_room() {
	//Indo para a room do jogo
	room_goto(global.destino);
	global.transicao = true;
}

function finaliza_transicao() {
	global.transicao = false;
}

function alterar_vel_backgrounds(novo_valor) {
	layer_hspeed("bg_arvores", novo_valor);
	layer_hspeed("bg_refl_arvores", novo_valor);
	layer_hspeed("bg_refl2", novo_valor / 2);
}