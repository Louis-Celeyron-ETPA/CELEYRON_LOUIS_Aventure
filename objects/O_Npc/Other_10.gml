/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28E7EED2
/// @DnDArgument : "var" "textIndex"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "array_length(texts)"
if(textIndex >= array_length(texts)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4612F8CB
	/// @DnDParent : 28E7EED2
	/// @DnDArgument : "var" "textIndex"
	textIndex = 0;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 42443DF0
	/// @DnDParent : 28E7EED2
	/// @DnDArgument : "script" "Scr_CloseDialogue"
	/// @DnDSaveInfo : "script" "Scr_CloseDialogue"
	script_execute(Scr_CloseDialogue);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 66BF834B
else{	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 161FA5A6
	/// @DnDInput : 2
	/// @DnDParent : 66BF834B
	/// @DnDArgument : "script" "Scr_CallDialogue"
	/// @DnDArgument : "arg" "texts[textIndex]"
	/// @DnDArgument : "arg_1" "name_npc"
	/// @DnDSaveInfo : "script" "Scr_CallDialogue"
	script_execute(Scr_CallDialogue, texts[textIndex], name_npc);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53ABE39E
	/// @DnDParent : 66BF834B
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "textIndex"
	textIndex += 1;}