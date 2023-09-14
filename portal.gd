extends Area2D

@export var room: PackedScene

@onready var animPlayer: AnimationPlayer = $AnimationPlayer

func _on_body_entered(_body: PhysicsBody2D):
	teleport()
		
func _get_configuration_warning() -> String:
	if (not room):
		return "It is necessary to inform a room to change the scene"
	return ""

func teleport() -> void:
	animPlayer.play("FADE_IN") #isso fara uma simples animação da tela fechando
	await animPlayer.animation_finished
	get_tree().change_scene_to_packed(room)
