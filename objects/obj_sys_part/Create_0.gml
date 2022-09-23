/// @description Insert description here
// You can write your code in this editor
global.part_dash				= part_system_create();
global.em_dash					= part_emitter_create(global.part_dash);
global.part_type_dash			= part_type_create();
global.part_type_slide_corredor = part_type_create();
global.part_type_rest			= part_type_create();
global.part_type_guitarra		= part_type_create();


#region part_type_dash
// Agora configurar minhas particulas
part_type_shape(global.part_type_dash, pt_shape_snow);
part_type_size(global.part_type_dash, 0.1, 0.2, 0, 0);
//part_type_scale(global.part_type_dash, 0.05, 0.05);
part_type_colour3(global.part_type_dash, c_fuchsia, c_blue, c_red);
part_type_alpha3(global.part_type_dash, .8, 1, 1);
part_type_speed(global.part_type_dash, .7, 1.5, -0.30, 5);
part_type_direction(global.part_type_dash, 0, 359, 0, 0);
// part_type_gravity(global.part_type_dash, 0, 270);
 part_type_orientation(global.part_type_dash, 0, 359, 0, 20, 1);
part_type_blend(global.part_type_dash, false);
part_type_life(global.part_type_dash, 1, 10);
#endregion

#region part_type_slide_corredor
part_type_shape(global.part_type_slide_corredor, pt_shape_smoke);
part_type_size(global.part_type_slide_corredor, 0.2, 0.2, 0, 0);
//part_type_scale(global.part_type_dash, 0.05, 0.05);
part_type_colour3(global.part_type_slide_corredor, c_gray, c_gray, c_gray);
part_type_alpha3(global.part_type_slide_corredor, .4, .6, .6);
part_type_speed(global.part_type_slide_corredor, 1, 3, -0.30, 10);
part_type_direction(global.part_type_slide_corredor, 0, 359, 0, 0);
// part_type_gravity(global.part_type_dash, 0, 270);
 part_type_orientation(global.part_type_slide_corredor, 0, 359, 0, 20, 1);
part_type_blend(global.part_type_slide_corredor, false);
part_type_life(global.part_type_slide_corredor, 1, 20);
#endregion

#region part_type_rest
part_type_shape(global.part_type_rest, pt_shape_star);
part_type_size(global.part_type_rest, 0.2, 0.2, 0, 0);
//part_type_scale(global.part_type_dash, 0.05, 0.05);
part_type_colour3(global.part_type_rest, c_blue, c_lime, c_purple);
part_type_alpha3(global.part_type_rest, .4, .6, .6);
part_type_speed(global.part_type_rest, .3, .5, -0.50, 0);
part_type_direction(global.part_type_rest, 0, 359, 0, 0);
// part_type_gravity(global.part_type_dash, 0, 270);
 part_type_orientation(global.part_type_rest, 0, 359, 0, 20, 1);
part_type_blend(global.part_type_rest, false);
part_type_life(global.part_type_rest, 1, 20);
#endregion

#region part_type_guitarra
part_type_shape(global.part_type_guitarra, pt_shape_spark);
part_type_size(global.part_type_guitarra, 0.7, 0.11, 0, 0);
//part_type_scale(global.part_type_dash, 0.05, 0.05);
part_type_colour3(global.part_type_guitarra, c_lime, c_navy, c_aqua);
part_type_alpha3(global.part_type_guitarra, .6, .8, .9);
part_type_speed(global.part_type_guitarra, .6, 1.2, -0.30, 4);
part_type_direction(global.part_type_guitarra, 0, 359, 0, 0);
// part_type_gravity(global.part_type_dash, 0, 270);
 part_type_orientation(global.part_type_guitarra, 0, 359, 0, 20, 1);
part_type_blend(global.part_type_guitarra, false);
part_type_life(global.part_type_guitarra, 1, 20);

#endregion

