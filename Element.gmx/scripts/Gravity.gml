if (place_free(x,y + fallMult + fall) || (object_is_ancestor(object_index, enemy) && place_meeting(x, y + fallMult + fall, enemy))) {
    if (fall < fallMax) {
        fall += fallMult;
    }
    y += fall;
}
else {
    fall = 0;
}
