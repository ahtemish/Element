/// airAttack()
 
if (left) {
    global.enemyHitId[num] = collision_rectangle(x - (sprite_width / 2), y,
                                                 x, y + sprite_height, enemy, false,
                                                 true);
    global.enemyHitType[num] = "air";
    
    save = collision_rectangle(x - (sprite_width / 2), y,
                            x, y + sprite_height, SaveStation, false,
                            true)
    if (save != noone) {
        SaveRoom();
        save.alarm[0] = room_speed;
        save.saved = true;
    }
} else {
    global.enemyHitId[num] = collision_rectangle(x + sprite_width, y, 
                                                 x + (sprite_width * 1.5), 
                                                 y + sprite_height, enemy, false, true);
    global.enemyHitType[num] = "air";
    
    save = collision_rectangle(x + sprite_width, y, 
                            x + (sprite_width * 1.5), 
                            y + sprite_height, SaveStation, false, true)
    if (save != noone) {
        SaveRoom();
        save.alarm[0] = room_speed;
        save.saved = true;
    }
}
