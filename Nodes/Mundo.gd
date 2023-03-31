extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


onready var player := $YSort/Player as KinematicBody2D
onready var internal_cooldown := $YSort/Player/Int_cooldown as Timer
onready var arvore1 := $"YSort/Árvore_v1" as StaticBody2D


var velocidade

func _physics_process(_delta):

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
		velocidade = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
