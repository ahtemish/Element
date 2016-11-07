if (place_free(x,y + fallMult + fall)) {
    if (fall < fallMax) {
        fall += fallMult;
    }
    y += fall;
}
else {
    fall = 0;
}
