//Variables
px = obj_player.x;
py = obj_player.y;
spd = 3;

//Create Shield
if !instance_exists(obj_boss_1_shield)
    {
    instance_create(x,y,obj_boss_1_shield);
    }
//Sprite

image_angle = point_direction(x,y,px,py)-90;
image_speed = .25;
if image_index = 8
    {
    image_index = 2
    }
    
//Movement
move_towards_point(px,py,spd);

//Start attackTimer countdown
attackTimer -=1;

//------Switch States

//switch to attack state
if attackTimer <= 0 
    {
    attackTimer = 3*room_speed;
    state = boss_1.attack;
    xPos = x;
    yPos =y;
    }

//switch to death state
if hp <= 0 state = boss_1.death;
