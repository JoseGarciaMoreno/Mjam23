extends RigidBody

var speed = 20  # Velocidad de la bala
var damage = 10  # Daño causado por la bala


# Called when the node enters the scene tree for the first time.
func _ready():
	set_as_toplevel(true)
	$"Timer".start()
	apply_impulse(transform.basis.x, transform.basis.x * speed)
	pass # Replace with function body.


#func shoot(delta):
#	apply_impulse(transform.basis.z, -transform.basis.z * speed) 
#func _physics_process(_delta):
#	apply_impulse(transform.basis.x, transform.basis.x * speed) 
	# Esta función se llama en cada frame del motor de física
	# Mueve la bala en la dirección en la que está apuntando

func _on_Timer_timeout():
#	print("muerebala")
	queue_free()
	pass # Replace with function body.
