/// earthAttack()

for (j = 0; j < instance_number(enemy); j++) {
    possibleHit = instance_find(enemy, j);
                
    if (left) {
        if (possibleHit == collision_rectangle(x - sprite_width, y, x, y + sprite_height,
                                               possibleHit, false, true)) {
            global.enemyHitId[num] = possibleHit;
            global.enemyHitType[num] = "earth";
            num++;
        }
        
        save = collision_rectangle(x - sprite_width, y, x, y + sprite_height,
                                   SaveStation, false, true);
        if (save != noone) {
            SaveRoom();
            save.alarm[0] = room_speed;
            save.saved = true;
        }
    } else {
        if (possibleHit == collision_rectangle(x + sprite_width, y,
                                               x + (sprite_width * 2), y + sprite_height,
                                               possibleHit, false, true)) {
            global.enemyHitId[num] = possibleHit;
            global.enemyHitType[num] = "earth";
            num++;
        }
        
        save = collision_rectangle(x + sprite_width, y, x + (sprite_width * 2),
                                   y + sprite_height, SaveStation, false, true);
        if (save != noone) {
            SaveRoom();
            save.alarm[0] = room_speed;
            save.saved = true;
        }
    }
}
