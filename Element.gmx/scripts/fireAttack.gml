/// fireAttack

if (shootFireball) {
    if (left)
        plFireball = instance_create(x, y + 7, fireball);
    else
        plFireball = instance_create(x + sprite_width, y + 7, fireball);
    
    plFireball.firedBy = Player;
    shootFireball = false;
}
