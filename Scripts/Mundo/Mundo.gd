extends Node2D

export onready var player := $YSort/Player as KinematicBody2D
export onready var internal_cooldown := $YSort/Player/Int_cooldown as Timer
export onready var arvore1 := $"YSort/Árvore_v1" as StaticBody2D
onready var dialogo = get_tree().get_root().get_node("Mundo").get_node("YSort").get_node("NPC-0").get_node("Diálogo")

var velocidade

func _physics_process(_delta):
	movimentacao_player();

# Called when the node enters the scene tree for the first time.
func movimentacao_player():
	if !dialogo.dialogo_ativo:
		if internal_cooldown.is_stopped() == true:
			if Input.get_action_strength("Baixo") == 1:
				player.move_and_collide(Vector2(0, velocidade))
				internal_cooldown.start()
			elif Input.get_action_strength("Cima") == 1:
				player.move_and_collide(Vector2(0, -velocidade))
				internal_cooldown.start()
			elif Input.get_action_strength("Esquerda") == 1:
				player.move_and_collide(Vector2(-velocidade, 0))
				internal_cooldown.start()
			elif Input.get_action_strength("Direita") == 1:
				player.move_and_collide(Vector2(velocidade, 0))
				internal_cooldown.start()
			
	if Input.get_action_strength("Sprint") == 1:
		velocidade = 8
	else:
		velocidade = 4

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
