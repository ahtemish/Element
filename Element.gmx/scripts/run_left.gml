/// run_left(speed)

var effectiveSpeed = argument[0];

if (!boulderMove) {
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
    } else if (place_meeting(x - effectiveSpeed, y + sprite_height - 4, terrainSlope)) {
        x -= effectiveSpeed;
        y -= effectiveSpeed;
    } else {
        if (place_meeting(x - effectiveSpeed, y, terrain) && earthAbility) {
            climbThis = instance_place(x - effectiveSpeed, y, terrain);
            x = climbThis.x + climbThis.sprite_width;
            if (!place_meeting(x, y - 4, terrain))
                y -= 150 / room_speed;
            ladder = true;
            runLeft = false;
        } else {
            x -= distance_to_object(instance_place(x - effectiveSpeed, y, notPlayerSolids)) - 1;
            ladder = false;
            runLeft = false;
        }
    }
}
