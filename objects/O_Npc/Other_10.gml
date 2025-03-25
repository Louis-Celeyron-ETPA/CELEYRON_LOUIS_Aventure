/// @DnDAction : YoYo Games.Data Structures.List_Count
/// @DnDVersion : 1
/// @DnDHash : 25469EAA
/// @DnDArgument : "assignee" "hmina"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "texts"
var hmina = ds_list_size(texts);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28E7EED2
/// @DnDArgument : "var" "textIndex"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "hmina"
if(textIndex >= hmina){	/// @DnDAction : YoYo Games.Common.Variable
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
else{	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 2DD639E8
	/// @DnDParent : 66BF834B
	/// @DnDArgument : "assignee" "prout"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "texts"
	/// @DnDArgument : "index" "textIndex"
	var prout = ds_list_find_value(texts, textIndex);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 161FA5A6
	/// @DnDParent : 66BF834B
	/// @DnDArgument : "script" "Scr_CallDialogue"
	/// @DnDArgument : "arg" "prout"
	/// @DnDSaveInfo : "script" "Scr_CallDialogue"
	script_execute(Scr_CallDialogue, prout);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53ABE39E
	/// @DnDParent : 66BF834B
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "textIndex"
	textIndex += 1;}