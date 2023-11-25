extends KinematicBody

export var gravity = Vector3.DOWN * 20
export var speed = 45
export var rot_speed = 0.9
onready var escenaontrol = get_node("Control/Virtual joystick")
var velocity = Vector3.ZERO

func _ready():
	var os = OS
	print(os.get_name())
	get_node("hud/TextureButton/AnimatedSprite").play("no_pulsa")
#	if os.has_feature(_OS.HAS_KEYBOARD):
#		print("Hay un tec")
#	if os.has_feature(OS.HAS_TOUCHSCREEN):
#		print("Hay una pantalla táctil")
	
func _physics_process(delta):
	var vy = velocity.y
	velocity = Vector3.ZERO
#	if Input.is_action_pressed("forward"):
	if escenaontrol._output.y < 0:
		velocity += -transform.basis.z * speed * -escenaontrol._output.y
	elif escenaontrol._output.y > 0:
		velocity += transform.basis.z * speed * escenaontrol._output.y
		
	if escenaontrol._output.x > 0:
		rotate_y(-rot_speed * delta * escenaontrol._output.x)
	elif escenaontrol._output.x < 0:
		rotate_y(rot_speed * delta * - escenaontrol._output.x)

	velocity.y = vy
#	print(escenaontrol._output.x)
	velocity += gravity * delta
	velocity = move_and_slide(velocity, Vector3.UP)
	
	if global_transform.origin.y <  -20:
#		print(global_transform.origin.y)
		print(get_tree().reload_current_scene())
#	get_node("hud/TextureButton/AnimatedSprite").play("no_pulsa")
	print(get_node("hud/TextureButton/AnimatedSprite").animation)
#	if !get_node("hud/TextureButton/Timer").is_stopped():
#		get_node("hud/TextureButton/AnimatedSprite").play("no_pulsa")


func _on_TextureButton_pressed():
	
#	print(get_node("hud/TextureButton/Timer").is_stopped())
	if get_node("hud/TextureButton/Timer").is_stopped():
		get_node("hud/TextureButton/Timer").start(0.5)
		get_node("fusil").dispara(0.5)
		get_node("hud/TextureButton/AnimatedSprite").play("pulsa")
		print()
		
		
	pass # Replace with function body.
	
func _input(event):
	if event is InputEventKey:
	# Verificar si la tecla "D" ha sido presionada
		if event.scancode == KEY_G and event.pressed and get_node("hud/TextureButton/Timer").is_stopped():
			get_node("hud/TextureButton/Timer").start(0.5)
			get_node("fusil").dispara(0.5)
			print("G")


func _on_Timer_timeout():
	get_node("hud/TextureButton/AnimatedSprite").play("no_pulsa")
	pass # Replace with function body.
