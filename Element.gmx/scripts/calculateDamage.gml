/// calculateDamage()

if (Player.earthAbility && !earthAbility) {
    damage *= 0.7;
}
if (airAbility)
    if (Player.fireAbility || Player.earthAbility)
        damage /= 2;
else if (waterAbility)
    if (Player.fireAbility || Player.earthAbility)
        damage *= 2;
else if (fireAbility) {
    if (Player.earthAbility)
        damage /= 2;
    else if (Player.waterAbility)
        damage /= 1.5;
    else if (Player.airAbility)
        damage *= 2;
}
