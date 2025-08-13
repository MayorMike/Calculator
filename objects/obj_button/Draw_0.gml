// Draw the button's sprite
draw_self(); // draws whatever sprite is assigned in the editor

// Draw the label text on top
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x + sprite_width / 2, y + sprite_height / 2, label);
