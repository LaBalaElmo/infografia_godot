extends AttackPlant

const melon_path = preload("res://scenes/plant/attackPlant/projectiles/Melon.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func shoot():
	var melon = melon_path.instance()
	melon.position = $MelonSpawn.position
	add_child(melon)
	melon.launch(Vector2(700, -200))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_ShootTimer_timeout():
	shoot()
