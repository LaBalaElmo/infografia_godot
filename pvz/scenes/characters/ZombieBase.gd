extends KinematicBody2D

var hp = 5
var velocity = Vector2()
var velocity_value = 10
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
