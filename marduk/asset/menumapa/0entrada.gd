extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func load_main_menu():
	print("hola")
	# Cambiar a la escena del menú principal.
	var _juego = get_tree().change_scene("res://asset/menumapa/mapa0.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Timer_timeout():
	load_main_menu()
	pass # Replace with function body.
