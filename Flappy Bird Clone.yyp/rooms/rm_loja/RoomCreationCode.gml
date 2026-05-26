//Gerar uma transição ao entrar na room
layer_sequence_create("Transicao", 0, 0, seq_fadeout);

if(!global.fx_habilitado) {
	var layers = layer_get_all();
	for(var i = 0; i < array_length(layers); i++) {
		layer_enable_fx(layers[i], false);
	}
}