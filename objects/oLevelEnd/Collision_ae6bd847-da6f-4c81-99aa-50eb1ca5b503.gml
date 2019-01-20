/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 103BD03D
/// @DnDArgument : "code" "/// @desc collide with player$(13_10)$(13_10)with(oPlayer){$(13_10)	if(hasControl){$(13_10)		hasControl = false;$(13_10)		slideTransition(TRANS_MODE.GOTO, other.target)$(13_10)	}$(13_10)}"
/// @desc collide with player

with(oPlayer){
	if(hasControl){
		hasControl = false;
		slideTransition(TRANS_MODE.GOTO, other.target)
	}
}