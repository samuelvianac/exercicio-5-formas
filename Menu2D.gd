extends CanvasLayer

func _ready():
	# Conectar o sinal do botão
	$Button.pressed.connect(_on_Button_pressed)
	
	# Configurar o estilo do botão
	var button_style = StyleBoxFlat.new()
	button_style.bg_color = Color(0.2, 0.6, 0.8)
	button_style.corner_radius_top_left = 10
	button_style.corner_radius_top_right = 10
	button_style.corner_radius_bottom_right = 10
	button_style.corner_radius_bottom_left = 10
	$Button.add_theme_stylebox_override("normal", button_style)

func _on_Button_pressed():
	# Carregar e trocar para a cena 3D
	var cena_3d = load("res://Level.tscn")
	get_tree().change_scene_to_packed(cena_3d)

func _input(event):
	# Voltar ao menu se pressionar Escape na cena 3D
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_ESCAPE:
			var menu_2d = load("res://Menu2D.tscn")
			get_tree().change_scene_to_packed(menu_2d)
