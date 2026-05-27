//Gerar uma transição ao entrar na room
if(global.transicao) layer_sequence_create("Transicao", 0, 0, seq_fadeout);

//Vamos parar a música se estiver tocando
if(audio_is_playing(snd_jogo)) audio_stop_all();
audio_play_sound(snd_jogo, 0, true);

if(!global.fx_habilitado) {
	var layers = layer_get_all();
	for(var i = 0; i < array_length(layers); i++) {
		layer_enable_fx(layers[i], false);
	}
}