/// @description Insert description here
// You can write your code in this editor
x += velh;
// Fazendo a colisão horizontal
// Repetindo o tanto de vezes que é a minha velocidade horizontal
	var _paredeh = instance_place(x + velh, y, obj_parede)
	// se eu for colidir
	if (_paredeh)
	{
		// Estou indo para a direita
		if (velh > 0)
		{
			x = _paredeh.bbox_left - (bbox_right - x);
		}
		// Estou indo para a esquerda
		if (velh < 0)
		{
			x = _paredeh.bbox_right + (x - bbox_left);
		}
	}

y += velv;

// Fazendo a colisão vertical
var _paredev = instance_place(x, y + velv, obj_parede)
{
	if (_paredev)
	{
		if (velv > 0)
		{
			y = _paredev.bbox_top - (bbox_bottom - y);
		}
		if (velv < 0)
		{
			y = _paredev.bbox_bottom + (y - bbox_top);
		}
	}
}