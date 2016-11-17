#define FlingEntity
/// FlingEntity(object);

if(flingHeight >= 6 && goingDown) {
    flung = false;
    if (argument[0] = Player)
        instance_change(Player, false);
    else
        instance_change(elementalEnemy, false);
    if (left) {
        sprite_index = standLeft;
    } else {
        sprite_index = standRight;
    }
} else {
    if(flingHeight <= 2 && !goingDown) {
        goingDown = true;
    }
    if(!place_meeting(x, y - flingHeight * flingY, terrain)) {
        if(goingDown) {
            y += flingHeight * flingY;
        } else {
            y -= flingHeight * 0.75 * flingY;
        }
    } else {
        flung = false;
        if (argument[0] = Player)
            instance_change(Player, false);
        else
            instance_change(elementalEnemy, false);
        if (left) {
            sprite_index = standLeft;
        } else {
            sprite_index = standRight;
        }
    }
    
    if(enemyRight) {
        if(!place_meeting(x + flingHeight * flingX, y, terrain)) {
            x += flingHeight * flingX;
        } else {
            flung = false;
            if (argument[0] = Player)
                instance_change(Player, false);
            else
                instance_change(elementalEnemy, false);
            if (left) {
                sprite_index = standLeft;
            } else {
                sprite_index = standRight;
            }
        }
    } else {
        if(!place_meeting(x - flingHeight * flingX, y, terrain)) {
            x -= flingHeight * flingX;
        } else {
            flung = false;
            if (argument[0] = Player)
                instance_change(Player, false);
            else
                instance_change(elementalEnemy, false);
            if (left) {
                sprite_index = standLeft;
            } else {
                sprite_index = standRight;
            }
        }
    }
    if(goingDown) {
        flingHeight += 30 / flingX / room_speed;
    } else {
        flingHeight -= 30 / flingX / room_speed;
    }
}

#define FlingInitial
/// FlingInitial(object)

flingHeight = 120 / room_speed + (irandom_range(1, 4) / 4);
if (argument[0] = Player)
    if (flungBy.enemyType = "boar")
        flingHeight = 120 / room_speed + (irandom_range(2, 4));
    else if (flungBy.enemyType = "bear")
        flingHeight = 120 / room_speed + (irandom_range(1, 2));
goingDown = false;
flingY = .75;
flingX = 3;
enemyRight = flungBy.right;

if(left) {
    sprite_index = standLeft;
} else {
    sprite_index = standRight;
}

#define FlingOnEnemy
/// FlingOnEnemy()


if(flingHeight <= 2) {
    flung = false;
    if (left) {
        sprite_index = standLeft;
    } else {
        sprite_index = standRight;
    }
}
if(!place_meeting(x, y - flingHeight * flingY, terrain))
    y -= flingHeight * 0.75 * flingY;
else {
    flung = false;
    if (left) {
        sprite_index = standLeft;
    } else {
        sprite_index = standRight;
    }
}
    
if(left) {
    if(!place_meeting(x + flingHeight * flingX, y, terrain)) {
        x += flingHeight * flingX;
    } else {
        flung = false;
        if (left) {
            sprite_index = standLeft;
        } else {
            sprite_index = standRight;
        }
    }
} else {
    if(!place_meeting(x - flingHeight * flingX, y, terrain)) {
        x -= flingHeight * flingX;
    } else {
        flung = false;
        if (left) {
            sprite_index = standLeft;
        } else {
            sprite_index = standRight;
        }
    }
}
flingHeight -= 30 / flingX / room_speed;

#define FlingInitialOnEnemy
/// FlingInitialOnEnemy()

flung = true;
flingHeight = 120 / room_speed + (irandom_range(1, 4) / 6);
goingDown = false;
flingY = .75;
flingX = 3;

if(left) {
    sprite_index = standLeft;
} else {
    sprite_index = standRight;
}