/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4972FF21
/// @DnDInput : 3
/// @DnDArgument : "function" "event_perform_object"
/// @DnDArgument : "arg" "O_UI_ButtonClasse"
/// @DnDArgument : "arg_1" "ev_other"
/// @DnDArgument : "arg_2" "ev_user0"
event_perform_object(O_UI_ButtonClasse, ev_other, ev_user0);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4082D36D
/// @DnDArgument : "expr" "false"
if(false){	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 3BF8F1D7
	/// @DnDParent : 4082D36D
	/// @DnDArgument : "cond" "i < all_buttons.length"
	for(i = 0; i < all_buttons.length; i += 1) {	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 79C37198
		/// @DnDParent : 3BF8F1D7
		/// @DnDArgument : "expr" "all_buttons(i) == currentButton"
		/// @DnDArgument : "not" "1"
		if(!(all_buttons(i) == currentButton)){}}}