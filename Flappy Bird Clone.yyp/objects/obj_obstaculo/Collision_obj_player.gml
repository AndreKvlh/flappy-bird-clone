//Vamos sinalizar que o jogador colidiu com um obstáculo
obj_player.colidiu = true;

//Vamos também jogar o player para cima
obj_player.vspeed = -2;

audio_play_sound(snd_oof, 0, false, 1, 0,random_range(0.7,1.3));
