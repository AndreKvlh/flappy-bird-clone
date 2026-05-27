//Vamos tocar a música caso ela não esteja sendo tocada
if(audio_is_playing(snd_jogo)) audio_stop_all();
audio_play_sound(snd_jogo, 0, true);

//Vamos instituir o primeiro alarme para gerar árvores
alarm[0] = random_range(1,3) * 60;

//Aqui criaremos um alarme para ir aumentando a pontuação a cada segundo
alarm[3] = FRAMES_PONTOS;

//Alarm que cria os coletáveis
alarm[4] = random_range(4,6) * 60;