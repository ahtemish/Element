/// doCutscene(string1, string2, string3)

draw_set_color(c_ltgray);
draw_rectangle(view_xport, view_hport - 192, view_wport, view_hport, false);
    
draw_set_color(c_black);
draw_set_halign(fa_left);
    
if (textNum = 0) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument0, 16, view_wport - 12, 1, 1, 0);
} else if (textNum = 1) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument1, 16, view_wport - 12, 1, 1, 0);
    if (argument1 = "")
        Player.cutscene = false;
} else if (textNum = 2) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument2, 16, view_wport - 12, 1, 1, 0);
    if (argument2 = "") {
        Player.cutscene = false;
    }
} else if (textNum = 3) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument3, 16, view_wport - 12, 1, 1, 0);
    if (argument3 = "") {
        Player.cutscene = false;
    }
} else if (textNum = 4) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument4, 16, view_wport - 12, 1, 1, 0);
    if (argument4 = "") {
        Player.cutscene = false;
    }
} else if (textNum = 5) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument5, 16, view_wport - 12, 1, 1, 0);
    if (argument5 = "") {
        Player.cutscene = false;
    }
} else if (textNum = 6) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument6, 16, view_wport - 12, 1, 1, 0);
    if (argument6 = "") {
        Player.cutscene = false;
    }
} else if (textNum = 7) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument7, 16, view_wport - 12, 1, 1, 0);
    if (argument7 = "") {
        Player.cutscene = false;
    }
} else if (textNum = 8) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument8, 16, view_wport - 12, 1, 1, 0);
    if (argument8 = "") {
        Player.cutscene = false;
    }
} else if (textNum = 9) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument9, 16, view_wport - 12, 1, 1, 0);
    if (argument9 = "") {
        Player.cutscene = false;
    }
} else if (textNum = 10) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument10, 16, view_wport - 12, 1, 1, 0);
    if (argument10 = "") {
        Player.cutscene = false;
    }
} else if (textNum = 11) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument11, 16, view_wport - 12, 1, 1, 0);
    if (argument11 = "") {
        Player.cutscene = false;
    }
} else if (textNum = 12) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument12, 16, view_wport - 12, 1, 1, 0);
    if (argument12 = "") {
        Player.cutscene = false;
    }
} else if (textNum = 13) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument13, 16, view_wport - 12, 1, 1, 0);
    if (argument13 = "") {
        Player.cutscene = false;
    }
} else if (textNum = 14) {
    draw_text_ext_transformed(view_xport + 8, view_hport - 184, argument14, 16, view_wport - 12, 1, 1, 0);
    if (argument14 = "") {
        Player.cutscene = false;
    }
}
