//Vamos passar a pontuação atual para o hiscore se for maior
if(global.score_atual > global.hi_score) global.score_atual = global.hi_score;
global.score_atual = 0;

//Reseta o level também;
global.level = 1;

//Reseta as velocidades globais
global.vel_arvore = -2;
global.vel_passaro = -4;

//Se a quantidade de vidas for igual a zero, ele volta a ter 3
if(global.vidas == 0) global.vidas = 3;