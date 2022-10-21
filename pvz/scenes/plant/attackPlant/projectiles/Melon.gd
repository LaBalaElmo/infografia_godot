extends projectile


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const GRAVITY = 1000
var velocity = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	velocity.y += GRAVITY * delta
	
	move_and_collide(velocity * delta)
	
func calculate_arc_velocity(source_position, target_position, arc_height, gravity):
	var velocity = Vector2()
	var displacement = target_position - source_position
	
	if displacement.y > arc_height:
		var time_up = sqrt(-2 * arc_height / float(gravity))
		var time_down = sqrt(2 * (displacement.y - arc_height) / float(gravity))
#		print("time %s" % (time_up-time_down))
		
		velocity.y = -sqrt(-2 * gravity * arc_height)
		velocity.x = displacement.x / float(time_up -time_down)
		
	return velocity
	
func launch(target_position):
	var arc_height = target_position.y - global_position.y - 64
	print(arc_height, target_position.y, global_position.y)
	
	velocity = calculate_arc_velocity(global_position, target_position, arc_height, GRAVITY)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Hitbox_area_entered(area):
	self.queue_free()
