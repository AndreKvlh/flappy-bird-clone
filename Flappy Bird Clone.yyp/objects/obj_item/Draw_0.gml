//Vamos desenhar ao fundo o sprite que mostra se está ou não bloqueado
blend = global.skin_atual == sprite_index ? c_yellow : c_white;
draw_sprite_ext(spr_bloqueio, !global.itens[index], x, y - 10, 3.5, 3.5, 0, blend, 1);

//Primeiramente, vamos permitir ele desenhar com a sprite junto
draw_self()

//Vamos centralizar o ponto de origem do texto
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

//Vamos definir uma fonte
draw_set_font(fnt_texto_botao_p);

//Vamos desenhar o icone dos peixes ao lado
draw_sprite(spr_peixe_icone, 0, x - 20, y + 60);

//Então vamos desenhar abaixo dele o valor do item
draw_text(x + 20, y + 67, valor_item);

//Vamos resetar o ponto de origem do texto
draw_set_valign(fa_top);
draw_set_halign(fa_left);