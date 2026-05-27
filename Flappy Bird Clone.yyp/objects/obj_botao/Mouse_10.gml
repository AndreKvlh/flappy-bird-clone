//Aumenta a escala horizontal em 30%
image_xscale = escala_x * 1.3;
image_yscale = escala_y * 0.7;

//Muda a escala da fonte também
fonte_x_atual = escala_fonte_x * 1.3;
fonte_y_atual = escala_fonte_y * 0.7;

if(!audio_is_playing(snd_levelup)) audio_play_sound(snd_levelup, 0, false);