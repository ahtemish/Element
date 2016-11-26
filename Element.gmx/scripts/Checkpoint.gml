#define Checkpoint
/// Checkpoint()

with (Player) {
    global.roomStartHealth = health;
    global.roomStartX = x;
    global.roomStartY = y;
    
    if (waterAbility)
        global.roomStartAbility = "water";
    else if (airAbility)
        global.roomStartAbility = "air";
    else if (earthAbility)
        global.roomStartAbility = "earth";
    else if (fireAbility)
        global.roomStartAbility = "fire";
    
    global.roomStartHasWater = hasWater;
    global.roomStartHasAir = hasAir;
    global.roomStartHasEarth = hasEarth;
    global.roomStartHasFire = hasFire;
    global.roomStartHasKilledAirWithWater = hasKilledAirWithWater;
    global.roomStartHasKilledEarthWithWater = hasKilledEarthWithWater;
    global.roomStartHasKilledWaterWithWater = hasKilledWaterWithWater;
    global.roomStartHasKilledFireWithWater = hasKilledFireWithWater;
    global.roomStartHasKilledAirWithEarth = hasKilledAirWithEarth;
    global.roomStartHasKilledEarthWithEarth = hasKilledEarthWithEarth;
    global.roomStartHasKilledWaterWithEarth = hasKilledWaterWithEarth;
    global.roomStartHasKilledFireWithEarth = hasKilledFireWithEarth;
    global.roomStartHasKilledAirWithFire = hasKilledAirWithFire;
    global.roomStartHasKilledEarthWithFire = hasKilledEarthWithFire;
    global.roomStartHasKilledWaterWithFire = hasKilledWaterWithFire;
    global.roomStartHasKilledFireWithFire = hasKilledFireWithFire;
    global.roomStartHasKilledAirWithAir = hasKilledAirWithAir;
    global.roomStartHasKilledEarthWithAir = hasKilledEarthWithAir;
    global.roomStartHasKilledWaterWithAir = hasKilledWaterWithAir;
    global.roomStartHasKilledFireWithAir = hasKilledFireWithAir;
}

#define CheckpointEntities
/// CheckpointEntities()

global.numEnemies = 0;
with (enemy) {
    global.enemies[global.numEnemies] = id;
    global.numEnemies++;
}

for (i = global.numEnemies; i < array_length_1d(global.enemies); i++)
    global.enemies[i] = 0;


global.numSpouts = 0;
with (waterSpout) {
    global.spouts[global.numSpouts] = id;
    global.numSpouts++;
}

for (i = global.numSpouts; i < array_length_1d(global.spouts); i++)
    global.spouts[i] = 0;

#define EndOfRoom
/// EndOfRoom()

for(i = 0; i < 50; i++) {
    global.enemies[i] = 0;
}
for(i = 0; i < 50; i++) {
    global.spouts[i] = 0;
}

global.roomStartX = 8;
global.roomStartY = y;

#define SaveRoom
/// SaveRoom()

Checkpoint();
CheckpointEntities();