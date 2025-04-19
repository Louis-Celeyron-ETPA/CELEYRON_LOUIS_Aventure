/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 7E1B6877
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
/// @DnDArgument : "obj" "id"
/// @DnDArgument : "notme" "0"
var l7E1B6877_0 = collision_point(mouse_x, mouse_y, id, true, 0);if((l7E1B6877_0)){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 66230D5F
	/// @DnDParent : 7E1B6877
	/// @DnDArgument : "colour" "merge_color(image_blend, HoverColor,.1)"
	/// @DnDArgument : "alpha" "false"
	image_blend = merge_color(image_blend, HoverColor,.1) & $ffffff;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 08B34008
else{	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 40CA80EC
	/// @DnDParent : 08B34008
	/// @DnDArgument : "colour" "merge_color(image_blend, c_white,.1)"
	/// @DnDArgument : "alpha" "false"
	image_blend = merge_color(image_blend, c_white,.1) & $ffffff;}