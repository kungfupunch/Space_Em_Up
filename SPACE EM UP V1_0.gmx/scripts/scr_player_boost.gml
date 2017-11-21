spd = boostSpeed;
boostTime -=1;
sprite_index = spr_player_boost;
image_speed = 0.3;

//--------CODE FOR BOOST TOWARDS MOUSE
//image_angle = point_direction(x,y,mouse_x,mouse_y);
//x += lengthdir_x(spd,image_angle); 
//y += lengthdir_y(spd,image_angle);

//----CODE FOR BOOST TOWARDS MOVEX/MOVEY
script_execute(scr_movement_kb);
script_execute(scr_sprite_control_kb);

//Attack
input_mb_left = mouse_check_button(mb_left);
if input_mb_left script_execute(scr_attack);



//Particles
if instance_exists(obj_first_particle){
    instance_destroy(obj_first_particle);//remove normal thrust particle
}
if !instance_exists(obj_boost_particle){
    instance_create(x,y,obj_boost_particle);//apply boost particle
}

//Sound FX
if !audio_is_playing(snd_boost){
scr_sound(snd_boost);
}

if boostTime <= 0 {
    state = player.normal;
    boostTime = 15;
    boostCd = room_speed *3;
}
