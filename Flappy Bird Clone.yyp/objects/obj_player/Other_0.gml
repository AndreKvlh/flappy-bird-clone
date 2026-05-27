if(!colidiu) audio_play_sound(snd_oof, 0, false, 1, 0, random_range(0.7, 1.3));

//Vamos sinalizar que o jogador colidiu com um obstáculo
colidiu = true;

//Vamos também jogar o player para cima
vspeed = -2;

