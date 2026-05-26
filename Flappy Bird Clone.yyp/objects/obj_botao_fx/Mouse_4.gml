// Inherit the parent event
event_inherited();

var layers = layer_get_all();
for(var i = 0; i < array_length(layers); i++) {
	layer_enable_fx(layers[i], !global.fx_habilitado);
}
global.fx_habilitado = !global.fx_habilitado;
image_index = global.fx_habilitado;
