//Globais para o armazenamento de pontos
global.score_atual = 0;
global.hi_score = 0;

//Global para armazenar quantos peixes o jogador possui
global.qtd_peixe = 0;

//Global que controla a quantidade de vidas atual
global.vidas = 3;

//Global que controla o nível do jogo
global.level = 1;

//Array que controla a progressão dos níveis. Ao invés de sempre subir
//com a pontuação em múltiplos de 10, vamos estruturar para ter distâncias
//maiores
global.pontos_niveis = [0, 10, 25, 50, 80, 120, 180, 250, 350, 500];

//Global que controla a velocidade das árvores e dos pássaros obstáculos
global.vel_arvore = -2;
global.vel_passaro = -4;

//Global que controla o destino para mexer com as transições dentro de sequências
global.destino = rm_jogo;

//Global para controlar o estado de uma transição a fim de evitar diversas sendo
//ativas
global.transicao = false;

//Global que armazena um array que informa quais itens estão bloqueados ou não
global.itens = [false, true, true];

//Global que armazena a skin atual para o player
global.skin_atual = spr_passaro1;

//Global que controla se os efeitos estão ativos ou não
global.fx_habilitado = true;