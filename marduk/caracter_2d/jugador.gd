extends KinematicBody2D



# Propiedades de movimiento
var speed = 200  # Velocidad de movimiento
var jump_force = -400  # Fuerza de salto
var gravity = 800  # Gravedad
var is_on_ground = false  # Bandera para verificar si el personaje está en el suelo
var velocity = Vector2()  # Vector de velocidad
var input_vector = Vector2()
var anima


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
	
func _physics_process(delta):
	# Obtener la entrada del jugador
	input_vector = Vector2(0,0)
	

	if Input.is_action_pressed("move_right"):
		input_vector.x += 1
	if Input.is_action_pressed("move_left"):
		input_vector.x -= 1

	# Aplicar gravedad
	velocity.y += gravity * delta

	# Aplicar movimiento horizontal
	velocity.x = input_vector.x * speed

	# Mover el personaje
	velocity = move_and_slide(velocity, Vector2(0, -1))

	# Detección de colisión con el suelo
	is_on_ground = is_on_floor()

	# Saltar tecla space
	if is_on_ground && Input.is_action_just_pressed("jump"):
#	if is_on_ground:
		velocity.y = jump_force
		
		
#	if velocity.y > 0:
	
	
#	if not is_on_floor() && velocity.y < 0:
##		get_node("AnimatedSprite").play("salto")
#		print("pa a")
#	elif not is_on_floor() && velocity.y > 0:
##		get_node("AnimatedSprite").play("salto")
#		print("pa abajo")
#	else:
#		get_node("AnimatedSprite").stop()
		
		
	if velocity.x > 0:
		anima = "camiDere"
		get_node("AnimatedSprite").set_flip_h(false) 
		get_node("AnimatedSprite").play(anima)
	elif velocity.x < 0:
		anima = "camiDere"
		get_node("AnimatedSprite").set_flip_h(true) 
#		get_node("AnimatedSprite").play("camiDere")
		get_node("AnimatedSprite").play(anima)
		
#		get_node("AnimatedSprite").flip_h(true)
	else:
		get_node("AnimatedSprite").stop()
#		get_node("AnimatedSprite").play("camiDere")
	#	$AnimatedSprite.camiDere.play()
	
	if not is_on_floor():
#		anima = "salto" 
		anima = "salto" if velocity.y < 0 else "caer"
#		if velocity.y < 0 else "caer"
		get_node("AnimatedSprite").play(anima)
		print("salto") 
	
#	get_node("AnimatedSprite").play(anima)
#	if !
#		print("salto") 

	
func _input(event):
	if event is InputEventKey:
	# Verificar si la tecla "D" ha sido presionada
		if event.scancode == KEY_D and event.pressed:
			print("D")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
