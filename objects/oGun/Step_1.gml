/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 709368AF
/// @DnDArgument : "code" "x = oPlayer.x$(13_10)y = oPlayer.y+10$(13_10)image_angle = point_direction(x,y,mouse_x,mouse_y)$(13_10)$(13_10)firingDelay = firingDelay  - 1$(13_10)recoil = max(0, recoil - 1)$(13_10)$(13_10)if((mouse_check_button(mb_left) || keyboard_check(ord("E"))) && firingDelay < 0){$(13_10)	firingDelay = 5$(13_10)	recoil = 4$(13_10)	with(instance_create_layer(x,y,"Bullets",oBullet)){$(13_10)		speed = 25$(13_10)		direction = other.image_angle + random_range(-5,5)$(13_10)		image_angle = direction$(13_10)	}$(13_10)}$(13_10)$(13_10)x = x - lengthdir_x(recoil, image_angle)$(13_10)y = y - lengthdir_y(recoil, image_angle)$(13_10)$(13_10)if(image_angle > 90 && image_angle < 270){$(13_10)	image_yscale = -1$(13_10)}else{$(13_10)	image_yscale = 1$(13_10)}$(13_10)"
x = oPlayer.x
y = oPlayer.y+10
image_angle = point_direction(x,y,mouse_x,mouse_y)

firingDelay = firingDelay  - 1
recoil = max(0, recoil - 1)

if((mouse_check_button(mb_left) || keyboard_check(ord("E"))) && firingDelay < 0){
	firingDelay = 5
	recoil = 4
	with(instance_create_layer(x,y,"Bullets",oBullet)){
		speed = 25
		direction = other.image_angle + random_range(-5,5)
		image_angle = direction
	}
}

x = x - lengthdir_x(recoil, image_angle)
y = y - lengthdir_y(recoil, image_angle)

if(image_angle > 90 && image_angle < 270){
	image_yscale = -1
}else{
	image_yscale = 1
}