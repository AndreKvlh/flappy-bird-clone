//Vamos primeiro selecionar a fonte usada
draw_set_font(fnt_pontuacao);

//Vamos daí desenhar no canto superior esquerdo a pontuação
draw_text(20, 20, global.score_atual);

//Vamos pegar a metade da nossa tela
var meio_tela = window_get_width() / 2;

//Vamos desenhar a sprite conforme o nível
draw_sprite_ext(spr_numeros, global.level, meio_tela, 30, 2, 2, 0, c_white, 1);