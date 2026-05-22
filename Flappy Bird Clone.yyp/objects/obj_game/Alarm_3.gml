//Incrementa em um ponto o score atual
global.score_atual++;

//Iremos incrementar um nível a cada dez pontos
if(global.score_atual == global.level * 10) {
	global.level++;
}

//Seta um novo alarme para adicionar um novo ponto
alarm[3] = FRAMES_PONTOS;