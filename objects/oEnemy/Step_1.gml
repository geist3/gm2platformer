/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E7E0A59
/// @DnDArgument : "code" "if(enemyHealth < 0){$(13_10)	instance_create_layer(x, y, layer, oEnemyDead)$(13_10) instance_destroy()$(13_10)}"
if(enemyHealth < 0){
	instance_create_layer(x, y, layer, oEnemyDead)
 instance_destroy()
}