///scr_debris(sprite_index, min_spd, max_spd, alpha, decay)

var sprIndex = argument[0];
var chunks = sprite_get_number(argument[0])-1;
var alpha = argument[3];
var decay = argument[4];


var i;
for (i = 0; i <  chunks; i += 1)
    {
    var debrisSpd = random_range(argument[1],argument[2]);
        with instance_create(x,y,obj_debris)
            {
            sprite_index = sprIndex;
            image_index = i;
            speed = debrisSpd;
            debriAlpha = argument[3];
            alphaDecay = argument[4];
            }
}

