extends KinematicBody2D

var hp = 10
var velocity = Vector2()
var velocity_value = 20
var die = false
var eat = false
var terminar_comer = false
var animation = '1'

onready var state_machine = $AnimationTree.get("parameters/playback")

func _ready():
	velocity.x -= velocity_value
	

func move(delta):
	move_and_slide(velocity)


func _on_HurtBox_area_entered(area):
	hp -= 1
	if hp <= 0:
		die = true
		


func _on_HitBox_area_entered(area):
	eat = true


func _on_HitBox_area_exited(area):
	eat = false
	terminar_comer = true


func _on_HurtMelon_area_entered(area):
	hp-=3
	if hp <=0:
		die = true
