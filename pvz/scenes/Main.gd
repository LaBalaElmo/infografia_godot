extends Node2D

var zombie_generation = RandomNumberGenerator.new()
const zombie1_path = preload("res://scenes/characters/CommonZombie.tscn")
const zombie2_path = preload("res://scenes/characters/ZombieCubo.tscn")
const zombie3_path = preload("res://scenes/characters/ZombieFootlball.tscn")
const zombie4_path = preload("res://scenes/characters/ZombiePuerta.tscn")
const pea_path = preload("res://scenes/plant/attackPlant/peashooter/peashooter.tscn")
const sun_path = preload("res://scenes/plant/sunflower/sunflower.tscn")
const melon_path = preload("res://scenes/plant/attackPlant/melonpult/melonpult.tscn")
var entered_p = false
var entered_s = false
var entered_m = false
var zombieList = []
var zombies = []
onready var loose = $loose
onready var resume = $resume
onready var quit = $quit
onready var play = $play
onready var win = $Win


func _ready():
	zombies.append(zombie1_path.instance())
	zombies.append(zombie1_path.instance())
	zombies.append(zombie1_path.instance())
	zombies.append(zombie1_path.instance())
	zombies.append(zombie1_path.instance())
	zombies.append(zombie3_path.instance())
	zombies.append(zombie1_path.instance())
	zombies.append(zombie2_path.instance())
	zombies.append(zombie3_path.instance())
	zombies.append(zombie2_path.instance())
	loose.hide()
	resume.hide()
	quit.hide()
	play.hide()
	win.hide()

#func _unhandled_input(event):
#	if event.is_action_pressed("pause"):
#		resume.show()
#		resume.disabled = false
#		quit.show()
#		quit.disabled = false
#		get_tree().paused = true
	
#func _input(event):

func _process(delta):
	print(len(zombies))
	print(len(zombieList))
	for z in zombieList:
		if (z.is_done_dying):
			zombieList.remove(zombieList.find(z))
		if(z.position.x <= 350):
			loose.show()
			get_tree().paused = true
			
	if len(zombieList) == 0 and len(zombies) == 0:
		win.show()
		get_tree().paused = true
		
		

func _on_ZombieGeneration_timeout():
	zombie_generation = int(rand_range(0, 4))
	if(zombie_generation == 0 and len(zombies) != 0):
		var zombie = zombies[0]
		zombies.remove(0)
		zombie.position = get_node("Zombie1").position
		print(zombie)
		add_child(zombie)
		zombieList.append(zombie)
	if(zombie_generation == 1 and len(zombies) != 0):
		var zombie = zombies[0]
		zombies.remove(0)
		zombie.position = get_node("Zombie2").position
		add_child(zombie)
		zombieList.append(zombie)
	if(zombie_generation == 2 and len(zombies) != 0):
		var zombie = zombies[0]
		zombies.remove(0)
		zombie.position = get_node("Zombie3").position
		add_child(zombie)
		zombieList.append(zombie)
	if(zombie_generation == 3 and len(zombies) != 0):
		var zombie = zombies[0]
		zombies.remove(0)
		zombie.position = get_node("Zombie4").position
		add_child(zombie)
		zombieList.append(zombie)
	if(zombie_generation == 4 and len(zombies) != 0):
		var zombie = zombies[0]
		zombies.remove(0)
		zombie.position = get_node("Zombie5").position
		add_child(zombie)
		zombieList.append(zombie)


func _on_resume_button_down():
	print('entro')
	resume.hide()
	quit.hide()
	get_tree().paused = false
	
func _input(event):
	if event.is_action_pressed("plant_move"):
		print('pls')
		if entered_m and int($SunLabel.text) >= 350:
			var melon = melon_path.instance()
			melon.position = get_viewport().get_mouse_position()
			melon.first_click = true
			add_child(melon)
			$SunLabel.text = str(int($SunLabel.text) - 350)
		if entered_p and int($SunLabel.text) >= 100:
			var pea = pea_path.instance()
			pea.position = get_viewport().get_mouse_position()
			pea.first_click = true
			add_child(pea)
			$SunLabel.text = str(int($SunLabel.text) - 100)
		if entered_s and int($SunLabel.text) >= 50:
			var sunf = sun_path.instance()
			sunf.position = get_viewport().get_mouse_position()
			sunf.first_click = true
			add_child(sunf)
			$SunLabel.text = str(int($SunLabel.text) - 50)

func _on_quit_button_down():
	get_tree().quit()


func _on_peashootercard_mouse_entered():
	entered_p = true


func _on_peashootercard_mouse_exited():
	entered_p = false


func _on_sunflowercard_mouse_entered():
	entered_s = true
	
func _on_sunflowercard_mouse_exited():
	entered_s = false


func _on_waterpultcard_mouse_entered():
	entered_m = true


func _on_waterpultcard_mouse_exited():
	entered_m = false
