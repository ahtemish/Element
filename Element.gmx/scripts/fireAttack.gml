/// fireAttack

if (shootFireball) {
    if (left)
        plFireball = instance_create(x - 5, y + 8, fireball);
    else
        plFireball = instance_create(x + 5, y + 8, fireball);
    
    plFireball.firedBy = Player;
    shootFireball = false;
}
