//Gerar seed do jogo
var datetime = date_current_datetime();
random_set_seed(datetime);

//Vamos instituir o primeiro alarme para gerar árvores
alarm[0] = random_range(1,3) * 60;

//Vamos também instituir o primeiro alarme para gerar os pássaros
alarm[2] = random_range(2,5) * 60;

//Aqui criaremos um alarme para ir aumentando a pontuação a cada segundo
alarm[3] = FRAMES_PONTOS;