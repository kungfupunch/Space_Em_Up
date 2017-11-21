// Move the character if you can
if (magnitudeL >= threshold) {
    if(!place_meeting(x + xaxis * spd, y + yaxis * spd, obj_par_collision))
        {
        x += xaxis *spd;
        y += yaxis *spd;
        } 
        else if (!place_meeting(x + xaxis *spd, y, obj_par_collision)) 
            {
            x += xaxis *spd;
            } 
        else if (!place_meeting(x, y + yaxis * spd, obj_par_collision)) 
            {
            y += yaxis *spd;
            }
} 
      

