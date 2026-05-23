//Vamos passar a pontuação atual para o hiscore se for maior
if(global.score_atual > global.hi_score) global.score_atual = global.hi_score;
global.score_atual = 0;

//Reseta o level também;
global.level = 1;

//Reseta as velocidades globais
global.vel_arvore = -2;
global.vel_passaro = -4;

//Reinicia a room
game_restart();