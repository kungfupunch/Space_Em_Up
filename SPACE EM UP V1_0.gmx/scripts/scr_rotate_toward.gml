////scr_rotate_toward(target_angle,rotate_spd)
target_angle = argument[0];
rotate_spd = argument[1];
angleDiff=(argument[0] - image_angle) mod 360;
if angleDiff > 180 angleDiff -=360;
if angleDiff < -180 angleDiff +=360;

image_angle += argument[1] * angleDiff
