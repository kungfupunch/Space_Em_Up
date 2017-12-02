//Variables
px = obj_player.x;
py = obj_player.y;

spd = 0;

//Remove Shield
instance_destroy(obj_boss_1_shield);

//Stop movement
x = xPos;
y = yPos;

//Create bullets
bulletTimer -=1;
if bulletTimer = 0
    {
    instance_create(x,y,obj_enemy_spew);
    bulletTimer = 5;
    }

//Sprite

image_angle = point_direction(x,y,px,py)-90;
image_speed = -0.25;
        if image_index <=1
        {
            image_speed = 0;
            image_index = 0;
        }
        
//Start moveTimer countdown
moveTimer -=1;
    
//--------Switch States

//switch to move state
if moveTimer <= 0
    {
    moveTimer = 3*room_speed;
    state = boss_1.move;
    }

//switch to death state
if enemyHp <= 0 
    {
    xPos = x;
    yPos = y;
    state = boss_1.death;
    }
