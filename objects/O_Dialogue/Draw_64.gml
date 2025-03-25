/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 38DE368C
/// @DnDArgument : "expr" "show == true"
if(show == true){	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 09F8270D
	/// @DnDParent : 38DE368C
	draw_self();

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 228504B1
	/// @DnDParent : 38DE368C
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 3B2C5813
	/// @DnDParent : 38DE368C
	/// @DnDArgument : "font" "MainDialogueText"
	/// @DnDSaveInfo : "font" "MainDialogueText"
	draw_set_font(MainDialogueText);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 768135AB
	/// @DnDParent : 38DE368C
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l768135AB_0=($FF000000 >> 24);
	draw_set_alpha(l768135AB_0 / $ff);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 36962880
	/// @DnDInput : 5
	/// @DnDParent : 38DE368C
	/// @DnDArgument : "function" "draw_text_ext"
	/// @DnDArgument : "arg" "x+5"
	/// @DnDArgument : "arg_1" "y+5"
	/// @DnDArgument : "arg_2" "text_content"
	/// @DnDArgument : "arg_3" "15"
	/// @DnDArgument : "arg_4" "image_xscale*32-10"
	draw_text_ext(x+5, y+5, text_content, 15, image_xscale*32-10);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 48B5052B
	/// @DnDParent : 38DE368C
	draw_set_colour($FFFFFFFF & $ffffff);
	var l48B5052B_0=($FFFFFFFF >> 24);
	draw_set_alpha(l48B5052B_0 / $ff);}