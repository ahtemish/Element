/// piranhaMovement(pointX, pointY, speed)

pointX = argument[0];
pointY = argument[1];
pSpeed = argument[2];

if (right)
    image_angle = point_direction(x, y, pointX, pointY);
else
    image_angle = point_direction(x, y, pointX, pointY) - 180;

if (((pointX - x) < 0)
      && (!place_meeting(x - pSpeed, y, terrain))) {
    sprite_index = walkLeft;
    if(abs(pointX - x) > pSpeed)
        x -= pSpeed;
    else
        x -= abs(pointX - x);
} else if (((pointX - x) > 0) 
             && (!place_meeting(x + pSpeed, y, terrain))) {
    sprite_index = walkRight;
    if(abs(pointX - x) > pSpeed)
        x += pSpeed;
    else
        x += abs(pointX - x);
}
if (((pointY - y) < 0)
      && (!place_meeting(x, y - pSpeed, terrain))) {
    if(abs(pointY - y) > pSpeed)
        y -= pSpeed;
    else
        y -= abs(pointY - y);
} else if (((pointY - y) > 0) 
             && (!place_meeting(x, y + pSpeed, terrain))) {
    if(abs(pointY - y) > pSpeed)
        y += pSpeed;
    else
        y += abs(pointY - y);
}
