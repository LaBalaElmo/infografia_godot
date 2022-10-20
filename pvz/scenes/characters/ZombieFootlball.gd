extends "res://scenes/characters/ZombieBase.gd"

func _ready():
	hp = 20


func _physics_process(delta):
	move(delta)
	state_machine.travel('run')
	if(die):
		velocity.x = 0
		state_machine.travel('die')
	if(eat):
		state_machine.travel('eat')
		velocity.x = 0
	if(terminar_comer):
		velocity.x -= velocity_value
		terminar_comer = false
