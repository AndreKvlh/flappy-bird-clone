//Aqui iremos voltar o botão a escala normal. Poderia ser
//feito com o Mouse Leave porém a gente quer um efeito 
//de transição até a escala normal

image_xscale = lerp(image_xscale, escala_x, 0.1);
image_yscale = lerp(image_yscale, escala_y, 0.1);

//Mesma transformação ocorre para a fonte
fonte_x_atual = lerp(fonte_x_atual, escala_fonte_x, 0.1);
fonte_y_atual = lerp(fonte_y_atual, escala_fonte_y, 0.1);