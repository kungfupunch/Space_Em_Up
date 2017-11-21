x = xPos;
y = yPos;

deathEffect -=1;
i = random_range(-100,100);

if !instance_exists(obj_explosion_1)
    {
    instance_create(x + i,y - i,obj_explosion_1);
    }

if deathEffect <=0 instance_destroy();

