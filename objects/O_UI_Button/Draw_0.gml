/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 6CBD5880
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 4517D6D8
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l4517D6D8_0=($FF000000 >> 24);
draw_set_alpha(l4517D6D8_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 266BD0A2
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 347BB384
/// @DnDArgument : "x" "image_xscale*16"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "image_yscale*16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "ButtonText"
draw_text(x + image_xscale*16, y + image_yscale*16, string(ButtonText) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 634364F5
draw_set_colour($FFFFFFFF & $ffffff);
var l634364F5_0=($FFFFFFFF >> 24);
draw_set_alpha(l634364F5_0 / $ff);