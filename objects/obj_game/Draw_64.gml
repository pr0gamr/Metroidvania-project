draw_healthbar(10, 25, 210, 50, player_health*20 ,c_black,c_red,c_red,0,true,true)
draw_set_halign(fa_center)
draw_text(110,30,"health : "+string(player_health))
draw_set_halign(fa_left)