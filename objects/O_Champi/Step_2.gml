/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6FD8DD97
/// @DnDInput : 3
/// @DnDArgument : "expr" "O_Dimitri.x"
/// @DnDArgument : "expr_1" "O_Dimitri.y"
/// @DnDArgument : "expr_2" "270+point_direction(x,y,x+champX,y+champY)"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
/// @DnDArgument : "var_2" "image_angle"
x = O_Dimitri.x;
y = O_Dimitri.y;
image_angle = 270+point_direction(x,y,x+champX,y+champY);