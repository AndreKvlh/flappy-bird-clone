//Aqui iremos fazer ele ficar 30% mais alto e 30% mais fino
image_xscale = escala_x * 0.7;
image_yscale = escala_y * 1.3;

//Aqui também iremos aplicar o mesmo efeito na fonte
fonte_x_atual = escala_fonte_x * 0.7;
fonte_y_atual = escala_fonte_y * 1.3;

if(!audio_is_playing(snd_coleta)) audio_play_sound(snd_coleta, 0, false);

//Se já estiver uma transição ativa, não será feita
//outra em sequência
if(!global.transicao && room_alvo != noone) {
	//Direciona a sequência para a transição pretendida
	global.destino = room_alvo;

	//Vamos criar uma sequência de transição para a próxima room
	layer_sequence_create("Transicao", 0, 0, seq_fadein);
	exit;
}

