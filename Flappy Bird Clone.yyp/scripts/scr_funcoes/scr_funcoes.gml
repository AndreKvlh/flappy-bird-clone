function mudar_room() {
	//Indo para a room do jogo
	room_goto(global.destino);
	global.transicao = true;
}

function finaliza_transicao() {
	global.transicao = false;
}