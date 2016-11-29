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
