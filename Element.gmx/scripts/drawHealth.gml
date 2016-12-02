/// drawHealth()

draw_self();
if (instanceHealth < initialHealth)
    draw_healthbar(x + sprite_width / 4, y - 8, x + sprite_width * 3/4, y - 4, instanceHealth * 100/initialHealth, c_black, c_red, c_green, 0, true, true);
