/// @description Insert description here
draw_self();
//draw_text(30, 700, "player: " + string(logos_health));

draw_text(x - 120, y + 195, "logos: " + string(logos_health));
draw_text(x - 30, y + 195, "ethos: " + string(ethos_health)); 
draw_text(x + 60, y + 195, "pathos: " + string(pathos_health)); 
draw_text(x - 120, y + 215, "flirt: " + string(flirt_health)); 
draw_text(x - 30, y + 215, "friend: " + string(friend_health));
draw_text(x + 60, y + 215, "aggro: " + string(agro_health));


draw_text(x - 120,  y - 195, "RP: " + string(retorical_points));
draw_text(x - 120,  y - 215, "mod: " + string(temp_modifier));