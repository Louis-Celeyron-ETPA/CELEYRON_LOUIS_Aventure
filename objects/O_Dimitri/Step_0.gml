/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5B54864C
/// @DnDArgument : "x" "dirX*32"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "dirY*32"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "O_Collision"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "O_Collision"
var l5B54864C_0 = instance_place(x + dirX*32, y + dirY*32, [O_Collision]);if (!(l5B54864C_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C9BD8EA
	/// @DnDParent : 5B54864C
	/// @DnDArgument : "var" "isMoving"
	/// @DnDArgument : "value" "false"
	if(isMoving == false){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 161AE051
		/// @DnDInput : 3
		/// @DnDParent : 5C9BD8EA
		/// @DnDArgument : "expr" "dirX*32"
		/// @DnDArgument : "expr_1" "dirY*32"
		/// @DnDArgument : "expr_2" "true"
		/// @DnDArgument : "var" "targetX"
		/// @DnDArgument : "var_1" "targetY"
		/// @DnDArgument : "var_2" "isMoving"
		targetX = dirX*32;
		targetY = dirY*32;
		isMoving = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 480231E9
		/// @DnDParent : 5C9BD8EA
		/// @DnDArgument : "steps" "nOfFrameToChangeCase"
		alarm_set(0, nOfFrameToChangeCase);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21C352E6
/// @DnDArgument : "var" "isMoving"
/// @DnDArgument : "value" "true"
if(isMoving == true){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 598E00BF
	/// @DnDInput : 2
	/// @DnDParent : 21C352E6
	/// @DnDArgument : "expr" "targetX/nOfFrameToChangeCase"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "targetY/nOfFrameToChangeCase"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x += targetX/nOfFrameToChangeCase;
	y += targetY/nOfFrameToChangeCase;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 24DF85A3
/// @DnDArgument : "key" "vk_left"
/// @DnDArgument : "not" "1"
var l24DF85A3_0;l24DF85A3_0 = keyboard_check(vk_left);if (!l24DF85A3_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0CFD26E5
	/// @DnDParent : 24DF85A3
	/// @DnDArgument : "key" "vk_right"
	/// @DnDArgument : "not" "1"
	var l0CFD26E5_0;l0CFD26E5_0 = keyboard_check(vk_right);if (!l0CFD26E5_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 0C337043
		/// @DnDParent : 0CFD26E5
		/// @DnDArgument : "key" "vk_up"
		/// @DnDArgument : "not" "1"
		var l0C337043_0;l0C337043_0 = keyboard_check(vk_up);if (!l0C337043_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 3E65D622
			/// @DnDParent : 0C337043
			/// @DnDArgument : "key" "vk_down"
			/// @DnDArgument : "not" "1"
			var l3E65D622_0;l3E65D622_0 = keyboard_check(vk_down);if (!l3E65D622_0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 597D421B
				/// @DnDInput : 2
				/// @DnDParent : 3E65D622
				/// @DnDArgument : "var" "dirX"
				/// @DnDArgument : "var_1" "dirY"
				dirX = 0;
				dirY = 0;}}}}