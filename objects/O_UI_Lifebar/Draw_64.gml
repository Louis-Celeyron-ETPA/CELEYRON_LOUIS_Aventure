/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 128AB831
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 26AD1330
/// @DnDArgument : "x1" "4"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "4"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "image_xscale*32-4"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "image_yscale*32-4"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "45"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$00FFFFFF"
/// @DnDArgument : "mincol" "$FF6565FF"
/// @DnDArgument : "maxcol" "$FF13B253"
draw_healthbar(x + 4, y + 4, x + image_xscale*32-4, y + image_yscale*32-4, 45, $FF000000 & $FFFFFF, $FF6565FF & $FFFFFF, $FF13B253 & $FFFFFF, 0, (($FF000000>>24) != 0), (($00FFFFFF>>24) != 0));