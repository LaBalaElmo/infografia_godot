extends AttackPlant

const pea_path = preload("res://scenes/plant/attackPlant/projectiles/pea.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func shoot():
	var pea = pea_path.instance()
	pea.position = $PeaSpawn.position
	add_child(pea)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ShootTimer_timeout():
	shoot()
