extends Plant

class_name Sunflower 

const sun_path = preload("res://scenes/plant/sunflower/sun.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func generate_sun():
	var sun = sun_path.instance()
	sun.position = $SunSpawn.position
	add_child(sun)
	


func _on_Timer_timeout():
	print("Saco sol")
	generate_sun()


# TODO EVENTO QUE MANDE EL DATO AL CONTADOR DE SOLES EN LA ESCENA PRINCIPAL
