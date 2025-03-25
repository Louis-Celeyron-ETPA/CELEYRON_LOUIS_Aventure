/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Device_Count
/// @DnDVersion : 1
/// @DnDHash : 2A9BEB9A
/// @DnDArgument : "var" "connectedGamepad"
/// @DnDArgument : "var_temp" "1"
var l2A9BEB9A_0 = gamepad_get_device_count();var l2A9BEB9A_1 = 0;for(var l2A9BEB9A_2 = 0; l2A9BEB9A_2 < l2A9BEB9A_0; ++l2A9BEB9A_2) {	if(gamepad_is_connected(l2A9BEB9A_2)) { ++l2A9BEB9A_1; }}var connectedGamepad = l2A9BEB9A_1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 70EF01B5
/// @DnDArgument : "var" "connectedGamepad"
/// @DnDArgument : "op" "2"
if(connectedGamepad > 0){	/// @DnDAction : YoYo Games.Gamepad.Set_Gamepad_Axis_Deadzone
	/// @DnDVersion : 1
	/// @DnDHash : 2D137E67
	/// @DnDParent : 70EF01B5
	/// @DnDArgument : "deadzone" "0.8"
	gamepad_set_axis_deadzone(0, 0.8);

	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1.1
	/// @DnDHash : 2F68D8C1
	/// @DnDParent : 70EF01B5
	/// @DnDArgument : "var" "axisH"
	/// @DnDArgument : "var_temp" "1"
	var axisH = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;

	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1.1
	/// @DnDHash : 6ACB9202
	/// @DnDParent : 70EF01B5
	/// @DnDArgument : "var" "axisV"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "axis" "gp_axislv"
	var axisV = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislv) : 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12EDC705
	/// @DnDInput : 2
	/// @DnDParent : 70EF01B5
	/// @DnDArgument : "expr" "sign(axisH)"
	/// @DnDArgument : "expr_1" "sign(axisV)"
	/// @DnDArgument : "var" "dirX"
	/// @DnDArgument : "var_1" "dirY"
	dirX = sign(axisH);
	dirY = sign(axisV);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1D13521A
else{	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 24DF85A3
	/// @DnDParent : 1D13521A
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
					dirY = 0;}}}}}

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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3FC62E8D
/// @DnDArgument : "var" "dirX"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(dirX >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1C6B1299
	/// @DnDParent : 3FC62E8D
	/// @DnDArgument : "spriteind" "S_Vitefait"
	/// @DnDSaveInfo : "spriteind" "S_Vitefait"
	sprite_index = S_Vitefait;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2402CFDB
	/// @DnDInput : 2
	/// @DnDParent : 3FC62E8D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "champX"
	/// @DnDArgument : "var_1" "champY"
	champX = 1;
	champY = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D8B409C
/// @DnDArgument : "var" "dirX"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-1"
if(dirX <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 57DAED90
	/// @DnDParent : 3D8B409C
	/// @DnDArgument : "spriteind" "S_Vitefait"
	/// @DnDSaveInfo : "spriteind" "S_Vitefait"
	sprite_index = S_Vitefait;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3517B522
	/// @DnDInput : 2
	/// @DnDParent : 3D8B409C
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "champX"
	/// @DnDArgument : "var_1" "champY"
	champX = -1;
	champY = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 718A320D
/// @DnDArgument : "var" "dirY"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(dirY >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4FC155A0
	/// @DnDParent : 718A320D
	/// @DnDArgument : "spriteind" "S_Vitefait"
	/// @DnDSaveInfo : "spriteind" "S_Vitefait"
	sprite_index = S_Vitefait;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33726B92
	/// @DnDInput : 2
	/// @DnDParent : 718A320D
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "champX"
	/// @DnDArgument : "var_1" "champY"
	champX = 0;
	champY = 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 136E006D
/// @DnDArgument : "var" "dirY"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-1"
if(dirY <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 33974EF0
	/// @DnDParent : 136E006D
	/// @DnDArgument : "spriteind" "S_Vitefait"
	/// @DnDSaveInfo : "spriteind" "S_Vitefait"
	sprite_index = S_Vitefait;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A13541D
	/// @DnDInput : 2
	/// @DnDParent : 136E006D
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "var" "champX"
	/// @DnDArgument : "var_1" "champY"
	champX = 0;
	champY = -1;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 4456CC8D
var l4456CC8D_0;l4456CC8D_0 = keyboard_check_pressed(vk_space);if (l4456CC8D_0){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 78F3C28F
	/// @DnDParent : 4456CC8D
	/// @DnDArgument : "expr" "false"
	if(false){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7C0AEAA2
		/// @DnDParent : 78F3C28F
		/// @DnDArgument : "obj" "O_ActionDetection"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "O_ActionDetection"
		var l7C0AEAA2_0 = false;l7C0AEAA2_0 = instance_exists(O_ActionDetection);if(!l7C0AEAA2_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 402A6CF3
			/// @DnDParent : 7C0AEAA2
			/// @DnDArgument : "xpos" "x+16+champX*16"
			/// @DnDArgument : "ypos" "y+16+champY*16$(13_10)*16+champY*16"
			/// @DnDArgument : "var" "champi"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "O_ActionDetection"
			/// @DnDSaveInfo : "objectid" "O_ActionDetection"
			var champi = instance_create_layer(x+16+champX*16, y+16+champY*16
			*16+champY*16, "Instances", O_ActionDetection);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5F0D0CB3
			/// @DnDParent : 7C0AEAA2
			/// @DnDArgument : "expr" "270+point_direction(x,y,x+champX,y+champY)"
			/// @DnDArgument : "var" "champi.image_angle"
			champi.image_angle = 270+point_direction(x,y,x+champX,y+champY);}}}