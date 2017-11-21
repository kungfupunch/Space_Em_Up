//Input Variables Keyboard
input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));
input_mb_left = mouse_check_button(mb_left);
moveX = (input_right - input_left);
moveY = (input_down - input_up);  
diag = moveX != 0 && moveY != 0;
bulletDir = point_direction(x,y,mouse_x,mouse_y); 
input_boost = keyboard_check(vk_space);
