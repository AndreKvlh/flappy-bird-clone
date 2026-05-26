if(global.transicao) exit;

//Define primeiramente a fonte usada
draw_set_font(fnt_pontuacao);

//Vamos colocar a origem do texto no centro
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

//Iremos ao lado colocar o ícone do coletável
draw_sprite(spr_peixe_icone, 0, 20, 35);

//Agora vamos desenhar a quantidade de peixes que o jogador atualmente
//possui
draw_text(60, 40, global.qtd_peixe);

//Resetar a posição do texto
draw_set_valign(fa_top);
draw_set_halign(fa_left);