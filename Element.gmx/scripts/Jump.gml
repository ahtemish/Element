/// Jump(height)

var height = argument0;

if(height == 0) {
    jump = false;
} else {
    if(place_free(x, y - height)
       || place_meeting(x, y - height, trapDoor)) {
        y -= height;
        if(height == 15 && room_speed == 60) {
            height -= 5;
        } else {
            height -= 30 / room_speed;
        }
        if(place_meeting(x, y - height, trapDoor)) {
            instance_deactivate_object(trapDoor);
            instance_activate_object(falseTrapDoor);
            alarm[0] = room_speed / 3;
        }
    } else {
        y -= (distance_to_object(instance_nearest(x, y - height, notPlayerSolids)) - 1);
        height = 0;
    }            
}

return height;
