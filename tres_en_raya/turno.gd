extends Label

var turno_de = "X"
var juego = [["a", "b", "c"],["d", "e", "f"],["g", "h", "i"]]
var b1
var b2
var b3
var b4
var b5
var b6
var b7
var b8
var b9

func _ready():
	b1 = get_parent().get_node("Button")
	b2 = get_parent().get_node("Button2")
	b3 = get_parent().get_node("Button3")
	b4 = get_parent().get_node("Button4")
	b5 = get_parent().get_node("Button5")
	b6 = get_parent().get_node("Button6")
	b7 = get_parent().get_node("Button7")
	b8 = get_parent().get_node("Button8")
	b9 = get_parent().get_node("Button9")
	
	
func _process(delta):
	text = "Es el turno de " + turno_de
	check_si_gano()

func _on_Button_button_up():
	b1.text = turno_de
	juego[0][0] = turno_de
	if turno_de == "X":
		turno_de = "O"
	else:
		turno_de = "X"
	b1.disabled = true


func _on_Button2_button_up():
	b2.text = turno_de
	juego[0][1] = turno_de
	if turno_de == "X":
		turno_de = "O"
	else:
		turno_de = "X"
	b2.disabled = true


func _on_Button3_button_up():
	b3.text = turno_de
	juego[0][2] = turno_de
	if turno_de == "X":
		turno_de = "O"
	else:
		turno_de = "X"
	b3.disabled = true


func _on_Button4_button_up():
	b4.text = turno_de
	juego[1][0] = turno_de
	if turno_de == "X":
		turno_de = "O"
	else:
		turno_de = "X"
	b4.disabled = true


func _on_Button5_button_up():
	b5.text = turno_de
	juego[1][1] = turno_de
	if turno_de == "X":
		turno_de = "O"
	else:
		turno_de = "X"
	b5.disabled = true


func _on_Button6_button_up():
	b6.text = turno_de
	juego[1][2] = turno_de
	if turno_de == "X":
		turno_de = "O"
	else:
		turno_de = "X"
	b6.disabled = true


func _on_Button7_button_up():
	b7.text = turno_de
	juego[2][0] = turno_de
	if turno_de == "X":
		turno_de = "O"
	else:
		turno_de = "X"
	b7.disabled = true


func _on_Button8_button_up():
	b8.text = turno_de
	juego[2][1] = turno_de
	if turno_de == "X":
		turno_de = "O"
	else:
		turno_de = "X"
	b8.disabled = true


func _on_Button9_button_up():
	b9.text = turno_de
	juego[2][2] = turno_de
	if turno_de == "X":
		turno_de = "O"
	else:
		turno_de = "X"
	b9.disabled = true

func check_si_gano():
	if (juego[0][0] == "X" and juego[0][1] == "X" and juego[0][2] =="X") or (juego[1][0] == "X" and juego[1][1] == "X" and juego[1][2] =="X") or (juego[2][0] == "X" and juego[2][1] == "X" and juego[2][2] =="X") or (juego[0][0] == "X" and juego[1][0] == "X" and juego[2][0] =="X") or (juego[0][1] == "X" and juego[1][1] == "X" and juego[2][1] =="X") or (juego[0][2] == "X" and juego[1][2] == "X" and juego[2][2] =="X") or (juego[0][0] == "X" and juego[1][1] == "X" and juego[2][2] =="X") or (juego[0][2] == "X" and juego[1][1] == "X" and juego[2][0] =="X"):
		turno_de = "X"
		b1.disabled = true
		b2.disabled = true
		b3.disabled = true
		b4.disabled = true
		b5.disabled = true
		b6.disabled = true
		b7.disabled = true
		b8.disabled = true
		b9.disabled = true
		text = "El ganador es " + turno_de
	if (juego[0][0] == "O" and juego[0][1] == "O" and juego[0][2] =="O") or (juego[1][0] == "O" and juego[1][1] == "O" and juego[1][2] =="O") or (juego[2][0] == "O" and juego[2][1] == "O" and juego[2][2] =="O") or (juego[0][0] == "O" and juego[1][0] == "O" and juego[2][0] =="O") or (juego[0][1] == "O" and juego[1][1] == "O" and juego[2][1] =="O") or (juego[0][2] == "O" and juego[1][2] == "O" and juego[2][2] =="O") or (juego[0][0] == "O" and juego[1][1] == "O" and juego[2][2] =="O") or (juego[0][2] == "O" and juego[1][1] == "O" and juego[2][0] =="O"):
		turno_de = "O"
		b1.disabled = true
		b2.disabled = true
		b3.disabled = true
		b4.disabled = true
		b5.disabled = true
		b6.disabled = true
		b7.disabled = true
		b8.disabled = true
		b9.disabled = true
		text = "El ganador es " + turno_de
	


func _on_restart_button_up():
	b1.disabled = false
	b2.disabled = false
	b3.disabled = false
	b4.disabled = false
	b5.disabled = false
	b6.disabled = false
	b7.disabled = false
	b8.disabled = false
	b9.disabled = false
	b1.text = ""
	b2.text = ""
	b3.text = ""
	b4.text = ""
	b5.text = ""
	b6.text = ""
	b7.text = ""
	b8.text = ""
	b9.text = ""
	juego = [["a", "b", "c"],["d", "e", "f"],["g", "h", "i"]]
	turno_de = "X"
