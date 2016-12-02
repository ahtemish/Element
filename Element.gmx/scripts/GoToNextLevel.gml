/// GoToNextLevel()

EndOfRoom();
if (room = Forest1)
    room_goto(Forest2);
else if (room = Forest2)
    room_goto(Forest3);
else if (room = Forest3)
    room_goto(Mountain1);
else if (room = Mountain1)
    room_goto(Mountain2);
else if (room = Mountain2)
    room_goto(Mountain3);
else if (room = Mountain3)
    room_goto(Cavern1);
else if (room = Cavern1)
    room_goto(Cavern2);
else if (room = Cavern2)
    room_goto(Cavern3);
else if (room = Cavern3)
    room_goto(DeepEarth1);
else if (room = DeepEarth1)
    room_goto(DeepEarth2);
else if (room = DeepEarth2)
    room_goto(DeepEarth3);
else if (room = DeepEarth3)
    room_goto(DeepEarth4);
else {
    win = true;
    global.roomStartX = 256;
    room_goto(winRoom);
}
    
