#define CollisionChecking
colliding = instance_place(x, y, terrain);

if(colliding != noone && colliding != trapDoor) {
    xCollisionLeft = x - colliding.x;
    xCollisionRight = colliding.x + colliding.sprite_width - x;
    yCollisionLeft = y - colliding.y;
    yCollisionRight = colliding.y + colliding.sprite_height - y;
    
    collision = min(xCollisionLeft, xCollisionRight, yCollisionLeft, yCollisionRight);
    
    if(collision == xCollisionLeft) {
        x = colliding.x - sprite_width;
    } else if(collision == xCollisionRight) {
        x = colliding.x + colliding.sprite_width;
    } else if(collision == yCollisionLeft) {
        y = colliding.y - sprite_height;
    } else {
        y = colliding.y + colliding.sprite_height;
    }
}

#define CollisionCheckingDash
colliding = instance_place(x, y, terrain);

if(colliding != noone && colliding != trapDoor) {
    if(right) {
        x = colliding.x - sprite_width;
    } else {
        x = colliding.x + colliding.sprite_width;
    }
}