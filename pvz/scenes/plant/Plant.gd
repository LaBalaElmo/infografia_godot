extends StaticBody2D

class_name Plant

var hp: int
var entered = false
var last_mouse_pos = null
var first_click = false
var is_clicked = false

func _input(event):
	if entered:
		if event.is_action_pressed("plant_move"):
			first_click = !first_click
#			print('lolaso')
	else:
		if first_click && event.is_action_pressed("plant_move"):
			first_click = false
			position = get_viewport().get_mouse_position()
#			print('lll')

func _init(new_hp := 2):
	hp = new_hp
	
func die():
	$Sprite.visible=false

func receive_dmg():
	pass
	

func _process(delta):
	if first_click:
		position = get_viewport().get_mouse_position()
#	if entered and Input.is_mouse_button_pressed(BUTTON_LEFT):
#		position = get_viewport().get_mouse_position()


func _on_Plant_mouse_entered():
	print('lolaso')
	entered = true

func _on_Plant_mouse_exited():
	entered = false;


func _on_Hurtbox_area_entered(area):
	print('me duele')
	$Damage.start()
	

func _on_Damage_timeout():
	hp-=1
	if hp <=0:
		self.queue_free()
		$Damage.stop()
		die()



func _on_Hurtbox_area_exited(area):
	$Damage.stop()
