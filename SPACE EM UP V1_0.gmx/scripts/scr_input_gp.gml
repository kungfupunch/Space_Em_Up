//Input Variables (Gamepad)
xaxis = gamepad_axis_value(0, gp_axislh);
yaxis = gamepad_axis_value(0,gp_axislv);
shootXaxis = gamepad_axis_value(0,gp_axisrh);
shootYaxis =  gamepad_axis_value(0,gp_axisrv);
magnitudeL = point_distance(0,0, xaxis, yaxis);
magnitudeR = point_distance(0,0, shootXaxis, shootYaxis);
shoot = magnitudeR >= threshold;
threshold = 0.2;
move = magnitudeL >= threshold;
bulletDir = point_direction(bullet.x,bullet.y,shootXaxis,ShootYaxis);
