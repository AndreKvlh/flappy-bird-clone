//Vamos definir a posição y aleatoriamente
var pos_x = 710;
var pos_y = 60;

//Vamos criar a árvore
instance_create_layer(pos_x, pos_y, "Obstaculos", obj_passaro);


//Sempre ao finalizar a criação, vamos recriar outro alarme
alarm[2] = random_range(2,5) * 60;