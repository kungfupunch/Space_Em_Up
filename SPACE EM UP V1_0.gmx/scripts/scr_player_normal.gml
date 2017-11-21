//Initialize Variables
spd = normalSpeed;
sprite_index = spr_player;

//Check controller input 
if gamepad_is_connected(0) gpConnected = true;
else if !gamepad_is_connected(0) gpConnected = false;

if gpConnected {
    script_execute(scr_input_gp);
    script_execute(scr_movement_gp);
    script_execute(scr_sprite_control_gp);
        if shoot script_execute(scr_attack);
}

else if !gpConnected {
    script_execute(scr_input_kb);
    script_execute(scr_movement_kb);
    script_execute(scr_sprite_control_kb);
        if input_mb_left script_execute(scr_attack);
}
//Sound Fx
script_execute(scr_player_thrust_fx);

//Particles and effects
if instance_exists(obj_boost_particle){
    instance_destroy(obj_boost_particle);//remove boost thrust particle
}
if !instance_exists(obj_first_particle){
    instance_create(x,y,obj_first_particle);//apply boost particle
}


//Switch to boost state
boostCd-=1;
if boostCd <= 0{
if input_boost state = player.boost;
}

//Death
if global.hp <= 0 game_restart();

