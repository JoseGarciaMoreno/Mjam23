extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var win = false
var tiempoLeon = 25


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("win").hide()
#	print(Glob.nivel)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if $".".global_transform.origin.y < -10 && !win:
		if (get_parent().get_child_count() == 1):
#			if glob.nivel == 2:
#			Global.glob.nivel
			if Glob.nivel == 1 && !win:
				get_node("TimerWin").start()
				get_parent().get_parent().get_node("tempoGO/hud/Label").set_text("Muy bien, máquina \nHas tirado todos los toros al Eúfrates \nPasas al "+ str(Glob.nivel + 1) + "nivel")
				win = true
				get_parent().get_parent().get_node("tempoGO/TimerGO").start(3)
			else:
				get_node("win").show()
				get_node("TimerWin").start(3)
				win = true
			
		else:
			get_parent().get_parent().get_node("tempoGO").tiempo = get_parent().get_parent().get_node("tempoGO").tiempo + tiempoLeon
			get_parent().get_parent().get_node("tempoGO/hud/Label").set_text("Muy bien, máquina \nBusca otro león y tíralo al Eúfrates \nTiempo + "+ str(tiempoLeon) + "segundos")
			get_parent().get_parent().get_node("tempoGO/TimerGO").start(1)
			queue_free()
#		print($".".global_transform.origin.y)
#		print(get_tree().reload_current_scene())
#	pass


func _on_TimerWin_timeout():
#	print("ee")
	if Glob.nivel == 1:
		var _juego = get_tree().change_scene("res://asset/menumapa/mapa0.tscn")
		Glob.nivel +=1
	elif Glob.nivel == 2:
#	print(get_tree().reload_current_scene())
		reiniciarJue()
	pass # Replace with function body.

func reiniciarJue():
	var _juego = get_tree().change_scene("res://asset/entrada/0entrada.tscn")
