//Vamos definir a posição y aleatoriamente
var pos_x = 710;
var pos_y = random_range(380,480);

//Vamos criar a árvore
instance_create_layer(pos_x, pos_y, "Obstaculos", obj_arvore);


//Sempre ao finalizar a criação, vamos recriar outro alarme
alarm[0] = random_range(1,3) * 60;