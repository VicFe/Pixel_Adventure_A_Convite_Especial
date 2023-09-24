extends Area2D

@export var enemy_score := 100

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		body.velocity.y = body.JUMP_FORCE
		Globals.score += enemy_score
		get_parent().anim.play("hurt")
		owner.queue_free()
