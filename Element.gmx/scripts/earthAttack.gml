/// earthAttack()

for (j = 0; j < instance_number(enemy); j++) {
    possibleHit = instance_find(enemy, j);
               
    if (possibleHit == collision_rectangle(x - 44, y + (sprite_height/2),
                                           x + sprite_width + 44, y + sprite_height,
                                           possibleHit, false, true)) {
            global.enemyHitId[num] = possibleHit;
            global.enemyHitType[num] = "earth";
            num++;
        }
        
        save = collision_rectangle(x - 44, y + (sprite_height/2),
                                   x + sprite_width + 44, y + sprite_height,
                                   SaveStation, false, true);
        if (save != noone) {
            SaveRoom();
            save.alarm[0] = room_speed;
            save.saved = true;
        }
        
        shieldLeft = collision_rectangle(x - 44, y + (sprite_height/2),
                                   x + sprite_width + 44, y + sprite_height,
                                   fireShieldLeft, false, true);
        shieldRight = collision_rectangle(x - 44, y + (sprite_height/2),
                                   x + sprite_width + 44, y + sprite_height,
                                   fireShieldRight, false, true);
                                   
        if (shieldLeft != noone)
            with (shieldLeft) instance_destroy();
        if (shieldRight != noone)
            with (shieldRight) instance_destroy();
}
