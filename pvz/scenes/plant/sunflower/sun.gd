extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var entered = false
var sun = 50

# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if event.is_action_pressed("plant_move") and entered:
		var amount = int(get_tree().get_root().get_node("Main").get_node("SunLabel").text)
		get_tree().get_root().get_node("Main").get_node("SunLabel").text = str(amount + sun)
		self.queue_free()
		

func _on_KinematicBody2D_mouse_entered():
	print('sol')
	entered = true


func _on_KinematicBody2D_mouse_exited():
	entered = false
