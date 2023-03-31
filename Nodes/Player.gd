extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
	
# Called when the node enters the scene tree for the first time.

func _physics_process(_delta):
	
	if Input.get_action_strength("Baixo") == 1:
		$"Animações".play("Andar_Baixo")
	elif Input.get_action_strength("Esquerda") == 1:
		$"Animações".play("Andar_esquerda")
	elif Input.get_action_strength("Cima") == 1:
		$"Animações".play("Andar_Cima")
	elif Input.get_action_strength("Direita") == 1:
		$"Animações".play("Andar_direita")
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
