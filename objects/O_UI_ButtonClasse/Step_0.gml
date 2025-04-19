/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 0C030D08
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
/// @DnDArgument : "obj" "self"
/// @DnDArgument : "notme" "0"
var l0C030D08_0 = collision_point(mouse_x, mouse_y, self, true, 0);if((l0C030D08_0)){	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 11A793B6
	/// @DnDParent : 0C030D08
	event_user(0);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1D194960
else{	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 6845C934
	/// @DnDParent : 1D194960
	/// @DnDArgument : "event" "1"
	event_user(1);}