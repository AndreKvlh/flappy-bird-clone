//Habilita ele desenhar sob o sprite
draw_self();

//Seleciona uma fonte
draw_set_font(fonte);

//Posiciona o texto centralmente no botão
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Desenha o texto do botão
draw_text_transformed(x, y, texto, fonte_x_atual, fonte_y_atual, 0);

//Resetando o draw
draw_set_halign(fa_left);
draw_set_valign(fa_top);