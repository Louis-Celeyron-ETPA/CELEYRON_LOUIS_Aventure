/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 17956BDC
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "obj" "O_ActionDetection"
/// @DnDSaveInfo : "obj" "O_ActionDetection"
var l17956BDC_0 = collision_point(x + 0, y + 0, O_ActionDetection, true, 1);if((l17956BDC_0)){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 0AD13D55
	/// @DnDParent : 17956BDC
	var l0AD13D55_0;l0AD13D55_0 = keyboard_check_pressed(vk_space);if (l0AD13D55_0){	/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 445D1D61
		/// @DnDParent : 0AD13D55
		event_user(0);}}