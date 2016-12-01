/// airAttack()

for (j = 0; j < instance_number(enemy); j++) {
    possibleHit = instance_find(enemy, j);
    
    if (possibleHit = collision_rectangle(startX, y, x, y + sprite_height, enemy, false, true)) {
        global.enemyHitId[num] = possibleHit;
        global.enemyHitType[num] = "air";
        num++;
    }
}
