/// @description poop

if(intro_in_progress == true && active_speech_bubble == false){
	var script_length = ds_list_size(opponent_obj.intro_script);
	show_debug_message("Type of intro_index: " + typeof(intro_index));
	
	if(intro_index < script_length){
		var intro_script = opponent_obj.intro_script;
		show_debug_message("Type of intro_script: " + typeof(intro_script));
		var current_line = intro_script[| intro_index];
		if(!is_undefined(current_line[? "sprite"])){
			current_line[? "speaker"].sprite_index = current_line[? "sprite"];
		}
		
		add_speech_bubble(current_line[? "speaker"], current_line[? "line"], false);
		active_speech_bubble = true;
		intro_index += 1
	} else {
		intro_in_progress = false;
		deal_hand();
		global.turn = "player";
		combat_starting = false; // probably don't need this one
	}
} else {
	if(active_speech_bubble == false){
		if(speak_from_card == true){
			add_speech_bubble(player_obj, card_in_question.speech, false);
			active_speech_bubble = true;
		}
		if(speak_from_enemy == true){
			add_speech_bubble(opponent_obj, enemy_speech_in_question, enemy_question);
			active_speech_bubble = true;
		}
	}
}