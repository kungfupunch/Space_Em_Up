//Sprite
if      moveX > 0 && moveY = 0 scr_rotate_toward(0,0.2); //right
else if moveX > 0 && moveY < 0 scr_rotate_toward(45,0.2); // upRight
else if moveX = 0 && moveY < 0 scr_rotate_toward(90,0.2); // up
else if moveX < 0 && moveY < 0 scr_rotate_toward(135,0.2); //upLeft
else if moveX < 0 && moveY = 0 scr_rotate_toward(180,0.2); //left
else if moveX < 0 && moveY > 0 scr_rotate_toward(225,0.2); //leftDown
else if moveX = 0 && moveY > 0 scr_rotate_toward(270,0.2); //down
else if moveX > 0 && moveY > 0 scr_rotate_toward(315,0.2); //downright

if moveX != 0 || moveY !=0 {
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

