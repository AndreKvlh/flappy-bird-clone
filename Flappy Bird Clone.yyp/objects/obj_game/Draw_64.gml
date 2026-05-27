//Vamos primeiro selecionar a fonte usada
draw_set_font(fnt_pontuacao);

//Vamos daí desenhar no canto superior esquerdo a pontuação
draw_text(20, 20, global.score_atual);

//Vamos desenhar um sprite pequeno da ave para cada vida que o
//jogador possui atualmente
for(var i = 0; i < global.vidas; i++) {
	draw_sprite_ext(spr_passaro1, 0, 120 + (60 * i), 60 , 0.7, 0.7, 0, c_white, 1);
}

//Vamos desenhar a sprite do ícone dos peixes abaixo da nossa pontuação
draw_sprite(spr_peixe_icone,0,20,80);

//Logo ao lado vamos colocar a quantidade de peixes obtida
draw_text(50,65, global.qtd_peixe);

//Vamos pegar a metade da nossa tela
var meio_tela = window_get_width() / 2;

//Vamos desenhar a sprite conforme o nível
draw_sprite_ext(spr_numeros, global.level, meio_tela, 30, 2, 2, 0, c_white, 1);