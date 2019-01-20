/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 05E48059
/// @DnDArgument : "code" "if (mode != TRANS_MODE.OFF){$(13_10)	draw_set_color(c_black);$(13_10)	draw_rectangle(0,0,guiWidth,percent*heightHalf, false)$(13_10)	draw_rectangle(0,guiHeight,guiWidth,guiHeight-(percent*heightHalf), false)$(13_10)}$(13_10)$(13_10)draw_set_color(c_white)$(13_10)draw_text(50,50, string(percent))"
if (mode != TRANS_MODE.OFF){
	draw_set_color(c_black);
	draw_rectangle(0,0,guiWidth,percent*heightHalf, false)
	draw_rectangle(0,guiHeight,guiWidth,guiHeight-(percent*heightHalf), false)
}

draw_set_color(c_white)
draw_text(50,50, string(percent))