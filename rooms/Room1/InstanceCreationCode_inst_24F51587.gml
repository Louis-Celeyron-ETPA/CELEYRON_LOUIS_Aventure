/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 79608901
/// @DnDArgument : "var" "texts"
texts = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 6CAEDCF5
/// @DnDInput : 4
/// @DnDArgument : "var" "texts"
/// @DnDArgument : "value" ""Bonjour""
/// @DnDArgument : "value_1" ""Je Suis""
/// @DnDArgument : "value_2" ""Square boy""
/// @DnDArgument : "value_3" ""Le plus beau""
ds_list_add(texts, "Bonjour", "Je Suis", "Square boy", "Le plus beau");