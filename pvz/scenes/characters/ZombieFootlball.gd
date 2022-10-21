extends "res://scenes/characters/ZombieBase.gd"

func _ready():
	hp = 25

export var is_done_dying = false
func _physics_process(delta):
	move(delta)
	state_machine.travel('run')
	if(eat):
		state_machine.travel('eat')
		velocity.x = 0
	if(die):
		eat=false
		velocity.x = 0
		state_machine.travel('die')
	if(terminar_comer):
		velocity.x -= velocity_value
		terminar_comer = false
	if is_done_dying and die:
		self.queue_free()
	
