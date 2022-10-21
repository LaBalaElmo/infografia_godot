extends "res://scenes/characters/ZombieBase.gd"

export var is_done_dying = false

func _ready():
	hp = 7

func _physics_process(delta):
	move(delta)
	state_machine.travel('walk')
	if(eat):
		state_machine.travel('eat')
		velocity.x = 0
	if(die):
		eat=false
		velocity.x = 0
		state_machine.travel('die1')
	if(terminar_comer):
		velocity.x -= velocity_value
		terminar_comer = false
	if is_done_dying and die:
		self.queue_free()
