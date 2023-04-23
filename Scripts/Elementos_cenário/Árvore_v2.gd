extends StaticBody2D

export onready var arvore := $"." as StaticBody2D
export onready var player := get_tree().get_root().get_node("Mundo").get_node("YSort").get_node("Player")

func _physics_process(_delta):
	if player.position.y < arvore.position.y and player.position.y > arvore.position.y-210 and player.position.x - 150 <= arvore.position.x and arvore.position.x <= player.position.x + 220:
		arvore.modulate.a = 0.3
	else:
		arvore.modulate.a = 1
