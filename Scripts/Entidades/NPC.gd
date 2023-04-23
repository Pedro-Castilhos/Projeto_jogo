extends KinematicBody2D

onready var npc = $"."
onready var player := get_tree().get_root().get_node("Mundo").get_node("YSort").get_node("Player")
var alcance = false

func _ready():
	$".".modulate.r = 1

func _on_Coliso_dilogo_area_entered(area):
	$".".modulate.r = 0.5
	alcance = true

func _on_Coliso_dilogo_area_exited(area):
	$".".modulate.r = 1
	alcance = false

func _input(event):
	if event.is_action_pressed("Interação"):
		if alcance:
			$"Diálogo".comecar()
