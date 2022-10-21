extends "res://scenes/characters/ZombieBase.gd"

func _ready():
	hp = 28


func _physics_process(delta):
	if(hp <= 5):
		animation = '2'
	move(delta)
	state_machine.travel('walk' + animation)
	
	if(eat):
		state_machine.travel('eat' + animation)
		velocity.x = 0
	if(die):
		eat=false
		velocity.x = 0
		state_machine.travel('die1')
	if(terminar_comer):
		velocity.x -= velocity_value
		terminar_comer = false
