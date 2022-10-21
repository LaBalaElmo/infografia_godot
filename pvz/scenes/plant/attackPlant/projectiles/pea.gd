extends projectile


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2(1, 0)
var speed = 300

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	var collition_info = move_and_collide(velocity.normalized() * delta * speed)
#	print(collition_info)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Hitbox_area_entered(area):
	self.queue_free()
#	$Sprite.visible = false
