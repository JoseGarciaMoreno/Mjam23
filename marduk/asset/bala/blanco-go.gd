extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var win = false
var tiempoLeon = 25


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("win").hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if $".".global_transform.origin.y < -10 && !win:
		if (get_parent().get_child_count() == 1):
			get_node("win").show()
			get_node("TimerWin").start()
			win = true
			
		else:
			get_parent().get_parent().get_node("tempoGO").tiempo = get_parent().get_parent().get_node("tempoGO").tiempo + tiempoLeon
			get_parent().get_parent().get_node("tempoGO/hud/Label").set_text("Muy bien, máquina \n Busca otro león y tiralo al Eufrates")
			get_parent().get_parent().get_node("tempoGO/TimerGO").start(1)
			queue_free()
#		print($".".global_transform.origin.y)
#		print(get_tree().reload_current_scene())
#	pass


func _on_TimerWin_timeout():
	print(get_tree().reload_current_scene())
	pass # Replace with function body.
