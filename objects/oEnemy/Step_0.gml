/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7484F58E
/// @DnDArgument : "code" "vSpeed = vSpeed + grav$(13_10)$(13_10)// horizontal$(13_10)if(place_meeting(x+hSpeed,y,oWall)){$(13_10)	while(!place_meeting(x+sign(hSpeed),y,oWall)){$(13_10)		x = x + sign(hSpeed)$(13_10)	}$(13_10)	hSpeed = -hSpeed$(13_10)}$(13_10)$(13_10)x = x + hSpeed$(13_10)$(13_10)// vertical$(13_10)if(place_meeting(x,y+vSpeed,oWall)){$(13_10)	while(!place_meeting(x,y+sign(vSpeed),oWall)){$(13_10)		y = y + sign(vSpeed)$(13_10)	}$(13_10)	vSpeed = 0$(13_10)}$(13_10)y=y+vSpeed$(13_10)$(13_10)if(hSpeed != 0) image_xscale = -sign(hSpeed)$(13_10)$(13_10)"
vSpeed = vSpeed + grav

// horizontal
if(place_meeting(x+hSpeed,y,oWall)){
	while(!place_meeting(x+sign(hSpeed),y,oWall)){
		x = x + sign(hSpeed)
	}
	hSpeed = -hSpeed
}

x = x + hSpeed

// vertical
if(place_meeting(x,y+vSpeed,oWall)){
	while(!place_meeting(x,y+sign(vSpeed),oWall)){
		y = y + sign(vSpeed)
	}
	vSpeed = 0
}
y=y+vSpeed

if(hSpeed != 0) image_xscale = -sign(hSpeed)