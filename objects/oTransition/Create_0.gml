/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 757F2025
/// @DnDArgument : "code" "/// @desc transition vars$(13_10)$(13_10)guiWidth = display_get_gui_width()$(13_10)guiHeight = display_get_gui_height()$(13_10)heightHalf = guiHeight / 2$(13_10)enum TRANS_MODE$(13_10){$(13_10)	OFF = 5,$(13_10)	NEXT,$(13_10)	GOTO,$(13_10)	RESTART,$(13_10)	INTRO$(13_10)}$(13_10)$(13_10)mode = TRANS_MODE.INTRO$(13_10)percent = 1$(13_10)target = room"
/// @desc transition vars

guiWidth = display_get_gui_width()
guiHeight = display_get_gui_height()
heightHalf = guiHeight / 2
enum TRANS_MODE
{
	OFF = 5,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANS_MODE.INTRO
percent = 1
target = room