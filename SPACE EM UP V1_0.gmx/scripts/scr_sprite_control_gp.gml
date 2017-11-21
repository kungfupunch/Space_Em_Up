// Sprite
prevSpriteAngle = point_direction(0,0,xaxis,yaxis);
if xaxis < threshold && yaxis < threshold image_angle = prevSpriteAngle;
else image_angle = point_direction(0,0,xaxis,yaxis);

if xaxis != 0 || yaxis !=0 {
    image_speed = 0.25;
    if image_index = 7
        {
        image_index =4;
        }
}   
else {
image_speed = -0.5;
    if image_index <= 1 
        {
        image_speed = 0;
        image_index = 0;
        }
}    

