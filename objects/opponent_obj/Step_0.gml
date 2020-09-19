/// @description Insert description here


if(global.turn == "opponent_statuses"){
	if(ds_list_size(statuses_that_need_handling(self)) > 0 && !all_statuses_finished(self)){
		handle_statuses(self);
	}else{
		next_phase();
	}
}
if(global.turn == "opponent_tokens" ){
	var finished_handling_tokens = handle_tokens(self);
	if(finished_handling_tokens){
		set_tokens_to_ready(self);
		next_phase();
	}
}
if(global.turn == "opponent"){
	thinking += 1;
	if(thinking > 50){
		handle_enemy_turn()
		if(is_string(win_condition_met())){
			room_restart();
		}
		thinking = 0;	
		deal_hand();
		next_phase();
		clean_up_statuses(self);
	}
}

/*

if(global.turn == "player_statuses"){
	if(ds_list_size(statuses_that_need_handling(self)) > 0 && !all_statuses_finished(self)){
		handle_statuses(self);
	}else{
		next_phase();
	}
}
if(global.turn == "player_tokens" ){
	var finished_handling_tokens = handle_tokens(self);
	if(finished_handling_tokens){
		set_tokens_to_ready(self);
		next_phase();
	}
}
if(global.turn == "player"){
	// wait for player to end turn
}



*/