extends CollisionShape2D

@onready var player := $player as CharacterBody2D
@onready var collision_lava = $"." as CollisionShape2D

func _on_hurtbox_body_entered(body):
	if body.has_method(collision_lava):
		body.take_damage(Vector2(0, 0))  
