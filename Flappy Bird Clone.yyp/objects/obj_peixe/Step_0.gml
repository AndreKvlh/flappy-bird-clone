//Destrói o objeto caso ele esteja fora da sala do lado esquerdo
if(x <= -64) instance_destroy();

if(colidiu) {
	vspeed = -2;
	image_xscale += 0.1;
	image_yscale = image_xscale;
	image_alpha = lerp(image_alpha, 0, 0.1);
}