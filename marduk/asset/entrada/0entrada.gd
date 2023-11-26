extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("AnimationPlayer").play("animalimon")
	pass # Replace with function body.
	
func load_main_menu():
	print("hola")
	# Cambiar a la escena del menú principal.
#	var _juego = get_tree().change_scene("res://escenarios2d/pantalla0/pantalla0.tscn")
	var _juego = get_tree().change_scene("res://escenarios/mundo.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Timer_timeout():
	load_main_menu()
	pass # Replace with function body.


#func _on_TimerMar_timeout():
##	print(get_node("AnimationPlayer/marduk").playing)
#	if (!get_node("AnimationPlayer/marduk").playing):
#		get_node("AnimationPlayer/marduk").play()
#		get_node("AnimationPlayer/marduk/TimerMar").start(11.1)
#	else:
#		get_node("AnimationPlayer/marduk").stop()
	
	
	pass # Replace with function body.

#
#func _on_Timergaolpe_timeout():
##	print(get_node("AnimationPlayer/marduk").playing)
#	if (!get_node("AnimationPlayer/AudioStreamPlayer").playing):
#		get_node("AnimationPlayer/AudioStreamPlayer").play()
#		get_node("AnimationPlayer/AudioStreamPlayer/Timergaolpe").start(1)
#	else:
#		get_node("AnimationPlayer/AudioStreamPlayer").stop()
	pass # Replace with function body.

#
#func _on_TimerRes_timeout():
#	if (!get_node("respuesta").playing):
#		get_node("respuesta").play()
#		get_node("respuesta/TimerRes").start(6.7)
#
#	else:
#		get_node("respuesta").stop()
#	pass # Replace with function body.


func _on_TimerGolpe_timeout():
	if !get_node("AnimationPlayer/golpe").playing:
		get_node("AnimationPlayer/golpe").play(0.1)
		get_node("AnimationPlayer/golpe/TimerGolpe").start(0.7)
	else:
		get_node("AnimationPlayer/golpe").stop()
	pass # Replace with function body.


func _on_TimerMar_timeout():
	get_node("AnimationPlayer/mar").play(0.9)
#	if !get_node("AnimationPlayer/golpe").playing:
#		get_node("AnimationPlayer/golpe").play(0.1)
	pass # Replace with function body.


func _on_mar_finished():
	get_node("AnimationPlayer/mar").stop()
	get_node("AnimationPlayer/resp").play(0.5)
#	print("ter")
	pass # Replace with function body.


func _on_resp_finished():
	get_node("AnimationPlayer/resp").stop()
	
	pass # Replace with function body.


func _on_TimerRes_timeout():
	get_node("AnimationPlayer/resp").play(0.9)
	pass # Replace with function body.
