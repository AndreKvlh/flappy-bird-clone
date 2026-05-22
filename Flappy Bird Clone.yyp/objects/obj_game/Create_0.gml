//Gerar seed do jogo
var datetime = date_current_datetime();
random_set_seed(datetime);

//Vamos instituir o primeiro alarme para gerar árvores
alarm[0] = random_range(1,3) * 60;