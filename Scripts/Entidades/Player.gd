extends KinematicBody2D
onready var dialogo = get_tree().get_root().get_node("Mundo").get_node("YSort").get_node("NPC-0").get_node("Diálogo")

onready var colisao_dialogo := $"Colisão_diálogo"

func _physics_process(_delta):
	if !dialogo.dialogo_ativo:
		animacoes_andar();
		
func animacoes_andar():
	if Input.get_action_strength("Baixo") == 1:
		$"Animações".play("Andar_Baixo")
	elif Input.get_action_strength("Esquerda") == 1:
		$"Animações".play("Andar_esquerda")
		$Sprite.flip_h = false;
	elif Input.get_action_strength("Cima") == 1:
		$"Animações".play("Andar_Cima")
	elif Input.get_action_strength("Direita") == 1:
		$"Animações".play("Andar_esquerda")
		$Sprite.flip_h = true;
	else:
		$"Animações".seek(0, true)
		$"Animações".stop()
		
	if Input.get_action_strength("Sprint") == 1:
		$"Animações".playback_speed = 2
	else:
		$"Animações".playback_speed = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
