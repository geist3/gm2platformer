/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7484F58E
/// @DnDArgument : "code" "key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))$(13_10)key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))$(13_10)key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up) || keyboard_check(ord("W")) || device_mouse_check_button_pressed(0,mb_left)$(13_10)$(13_10)var move = key_right - key_left$(13_10)if device_mouse_check_button(0, mb_left) {$(13_10)	if device_mouse_x(0) > x $(13_10)    {$(13_10)      move = 1$(13_10)    }$(13_10)	else$(13_10)    {$(13_10)      move = -1$(13_10)    }$(13_10)}$(13_10)$(13_10)hSpeed = move * walkSpeed$(13_10)$(13_10)vSpeed = vSpeed + grav$(13_10)$(13_10)if(place_meeting(x, y+1, oWall) && key_jump){$(13_10)	vSpeed = -7$(13_10)}$(13_10)$(13_10)// horizontal$(13_10)if(place_meeting(x+hSpeed,y,oWall)){$(13_10)	while(!place_meeting(x+sign(hSpeed),y,oWall)){$(13_10)		x = x + sign(hSpeed)$(13_10)	}$(13_10)	hSpeed = 0$(13_10)}$(13_10)$(13_10)x = x + hSpeed$(13_10)$(13_10)// vertical$(13_10)if(place_meeting(x,y+vSpeed,oWall)){$(13_10)	while(!place_meeting(x,y+sign(vSpeed),oWall)){$(13_10)		y = y + sign(vSpeed)$(13_10)	}$(13_10)	vSpeed = 0$(13_10)}$(13_10)$(13_10)y = y + vSpeed$(13_10)$(13_10)// animations$(13_10)if(!place_meeting(x,y+1,oWall)){$(13_10)	sprite_index = sPlayerJump$(13_10)	image_speed = 0$(13_10)	if(sign(vSpeed) > 0){$(13_10)		image_index = 1$(13_10)	}else{$(13_10)		image_index = 0$(13_10)	}$(13_10)} else {$(13_10)	image_speed = 1$(13_10)	if(hSpeed == 0){$(13_10)		sprite_index = sPlayer$(13_10)	} else {$(13_10)		sprite_index = sPlayerRun$(13_10)	}$(13_10)}$(13_10)$(13_10)if(hSpeed != 0) image_xscale = -sign(hSpeed)"
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up) || keyboard_check(ord("W")) || device_mouse_check_button_pressed(0,mb_left)

var move = key_right - key_left
if device_mouse_check_button(0, mb_left) {
	if device_mouse_x(0) > x 
    {
      move = 1
    }
	else
    {
      move = -1
    }
}

hSpeed = move * walkSpeed

vSpeed = vSpeed + grav

if(place_meeting(x, y+1, oWall) && key_jump){
	vSpeed = -7
}

// horizontal
if(place_meeting(x+hSpeed,y,oWall)){
	while(!place_meeting(x+sign(hSpeed),y,oWall)){
		x = x + sign(hSpeed)
	}
	hSpeed = 0
}

x = x + hSpeed

// vertical
if(place_meeting(x,y+vSpeed,oWall)){
	while(!place_meeting(x,y+sign(vSpeed),oWall)){
		y = y + sign(vSpeed)
	}
	vSpeed = 0
}

y = y + vSpeed

// animations
if(!place_meeting(x,y+1,oWall)){
	sprite_index = sPlayerJump
	image_speed = 0
	if(sign(vSpeed) > 0){
		image_index = 1
	}else{
		image_index = 0
	}
} else {
	image_speed = 1
	if(hSpeed == 0){
		sprite_index = sPlayer
	} else {
		sprite_index = sPlayerRun
	}
}

if(hSpeed != 0) image_xscale = -sign(hSpeed)