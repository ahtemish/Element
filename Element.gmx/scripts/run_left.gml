/// run_left(speed)

var effectiveSpeed = argument0;

if(!boulderMove) {
    if (place_free(x - effectiveSpeed,y)) {
        x -= effectiveSpeed;
        ladder = false;
    } else if(place_meeting(x - effectiveSpeed, y, boulder) && earthAbility) {
        alarm[4] = room_speed / 3;
        boulderMove = true;
        with(instance_nearest(x - effectiveSpeed, y, boulder)) {
            moveLeft = true;
            alarm[0] = room_speed / 3;
        }
        runLeft = false;
    } else {
        if(place_meeting(x - effectiveSpeed, y, terrain)) {
            if(earthAbility) {
                climbThis = instance_place(x - effectiveSpeed, y, terrain);
                x = climbThis.x + climbThis.sprite_width;
                y -= 90 / room_speed;
                ladder = true;
                runLeft = false;
            } else if (waterAbility && 
                       place_free(x - effectiveSpeed, y - sprite_height)) {
                x = instance_place(x - effectiveSpeed, y, terrain).x;
                y -= sprite_height;
            }
        } else {
            x -= distance_to_object(instance_place(x - effectiveSpeed, y, notPlayerSolids)) - 1;
            ladder = false;
            runLeft = false;
        }
    }
}
