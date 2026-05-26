if(obj_player.colidiu || colidiu) exit;

//Se colidir com o player, irá aumentar em um a quantidade de peixes
global.qtd_peixe++;
colidiu = true;

audio_play_sound(snd_coleta, 0, false);

//Após isso, irá setar um alarm para destruir
alarm[0] = 15;
