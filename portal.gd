extends Area2D

@onready var animPlayer: AnimationPlayer = $AnimationPlayer

@export var room: PackedScene

func _on_body_entered(_body: PhysicsBody2D):

	teleport()
		
func teleport() -> void:
	if room != null:  # Verifique se 'room' não é nulo
		animPlayer.play("FADE_IN")
		await animPlayer.animation_finished
		get_tree().change_scene_to_packed(room)
	else:
		# Lida com o erro de 'room' sendo nulo
		print("Erro: 'room' não está definido!")
