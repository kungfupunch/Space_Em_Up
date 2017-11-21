//Get player input
script_execute(scr_get_gp_input);
    
//Movement
script_execute(scr_movement_gp);

//Sprite
script_execute(scr_sprite_control_gp);

//Particles
script_execute(scr_player_particles);

//Attack
if canShoot && attack1 script_execute(scr_attack);
