//normalize diagonal spd
if diag {spd *= 0.707};
// Move the character if you can    
if spd !=0 {
    if(!place_meeting(x + moveX * spd, y + moveY * spd, obj_par_collision))
        {
        x += moveX *spd;
        y += moveY *spd;
        } 
            else if (!place_meeting(x + moveX *spd, y, obj_par_collision)) 
                {
                x += moveX *spd;
                y += 0;
                } 
            else if (!place_meeting(x, y + moveY * spd, obj_par_collision)) 
                {
                x += 0;
                y += moveY *spd;
                }
}
