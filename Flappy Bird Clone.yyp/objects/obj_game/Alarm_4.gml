//Vamos definir a posição y aleatoriamente
var pos_x = 710;
var pos_y = choose(60, 180, 270);

//Vamos criar a árvore
instance_create_layer(pos_x, pos_y, "Coletaveis", obj_peixe);


//Sempre ao finalizar a criação, vamos recriar outro alarme
alarm[4] = random_range(4,6) * 60;