//Se o jogador colidiu com obstáculo, ele não voa mais
if (colidiu) exit;

//Condição que verifica se o frame atual da animação não é um de
//movimento a fim de evitar ficar spammando o mesmo
if (image_index >= 1) exit;

//Ativar a animação
image_index = 1;
image_speed = 1;

//Fazendo o objeto subir
vspeed = -5;