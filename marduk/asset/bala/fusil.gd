extends Spatial

var cannonMuzzle : Spatial  # Punto de salida del proyectil
var bulletPrefab : PackedScene = preload("res://asset/bala/bala.tscn")
var shootCooldown = 1.0  # Tiempo entre disparos
var canShoot = true  # Indica si se puede disparar


# Called when the node enters the scene tree for the first time.
func _ready():
#	$"Timer".start()
	pass # Replace with function body.
	
	
func _on_Timer_timeout():
##	$"Timer".start()
	print("dispara")
##	print(get_node("Position3D").global_transform)
#	cannonMuzzle = get_node("Position3D")
#	var bulletInstance = bulletPrefab.instance()
#	get_node("Position3D").add_child(bulletInstance)
#	var muzzleGlobalTransform = cannonMuzzle.global_transform
#
### Coloca la bala en la posición del cañón
#	bulletInstance.transform.origin = muzzleGlobalTransform.origin
##	# Establece la dirección de disparo de la bala al frente del cañón
#	bulletInstance.transform.basis = muzzleGlobalTransform.basis
#	pass # Replace with function body.
	
func dispara(tiem):
	print("dispara",tiem)
	cannonMuzzle = get_node("Position3D")
	var bulletInstance = bulletPrefab.instance()
	get_node("Position3D").add_child(bulletInstance)
	var muzzleGlobalTransform = cannonMuzzle.global_transform
	
## Coloca la bala en la posición del cañón
	bulletInstance.transform.origin = muzzleGlobalTransform.origin
#	# Establece la dirección de disparo de la bala al frente del cañón
	bulletInstance.transform.basis = muzzleGlobalTransform.basis
	pass # Replace with function body.
	
	
