extends RigidBody3D

# Velocidade de movimento
var move_speed = 10.0
var rotation_speed = 5.0

func _ready():
	# Configurar propriedades físicas
	gravity_scale = 1.0
	mass = 2.0

func _physics_process(delta):
	# Controles para mover o cubo
	var input_dir = Vector3.ZERO
	
	# Movimento WASD
	if Input.is_action_pressed("move_forward"):
		input_dir.z -= 1.0
	if Input.is_action_pressed("move_back"):
		input_dir.z += 1.0
	if Input.is_action_pressed("move_left"):
		input_dir.x -= 1.0
	if Input.is_action_pressed("move_right"):
		input_dir.x += 1.0
	
	# Aplicar força se houver entrada
	if input_dir.length() > 0:
		input_dir = input_dir.normalized()
		apply_central_force(input_dir * move_speed)
	
	# Rotação com Q e E
	if Input.is_action_pressed("rotate_left"):
		apply_torque(Vector3(0, rotation_speed, 0))
	if Input.is_action_pressed("rotate_right"):
		apply_torque(Vector3(0, -rotation_speed, 0))
	
	# Pulo com espaço (se estiver perto do chão)
	if Input.is_action_just_pressed("jump") and global_position.y < 3.5:
		apply_central_impulse(Vector3(0, 8, 0))

func _input(event):
	# Reset do cubo se pressionar R
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_R:
			global_position = Vector3(0, 3, 0)
			linear_velocity = Vector3.ZERO
			angular_velocity = Vector3.ZERO
