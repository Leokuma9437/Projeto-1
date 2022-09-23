/// @description Insert description here
// You can write your code in this editor

// Fazendo a tela ir de um lado para o outro bem rapido
view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);

// Fazendo o shake diminuir
shake *= .92;

// Se for muito pequeno, fazendo ele sumir
if (shake <= .2)
{
	instance_destroy();
}