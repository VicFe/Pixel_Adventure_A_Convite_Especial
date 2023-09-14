extends Area2D

var coins := 1

func _ready() -> void:
	pass 

func _process(_delta: float) -> void:
	pass

func _on_body_entered(_body: Node2D) -> void:
	$anim.play("collect")
	await $collision.call_deferred("queue_free")
	Globals.coins += coins

func _on_anim_animation_finished() -> void:
	queue_free()
