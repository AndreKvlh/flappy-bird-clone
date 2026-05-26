//Ele checa se o valor de coletáveis é igual ou maior ao valor 
//e se o item está bloqueado. Se ambas forem reais, você adquire
if(global.itens[index] && global.qtd_peixe >= valor_item) {
	global.itens[index] = false;
	global.qtd_peixe -= valor_item;
}

//Se caso o item estiver já desbloqueado, você pode trocar a skin
//a vontade
else if(!global.itens[index]) {
	global.skin_atual = sprite_index;
}