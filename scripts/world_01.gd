extends Node2D

@onready var player := $player as CharacterBody2D
@onready var camera := $camera as Camera2D
@onready var control = $HUD/control

func _ready() -> void:
	player.follow_camera(camera)
	player.player_has_died.connect(reload_game)
	control.time_is_up.connect(reload_game)
	Globals.coins = 0
	Globals.score = 0
	Globals.player_life = 3
	
func _process(_delta: float) -> void:
	pass

func _on_spikesarea_body_entered(body):
	if body.name == "player" && body.has_method("take_damage"):
		body.take_damage(Vector2(0, -250))

func reload_game():
	await get_tree().create_timer(1.0).timeout
	get_tree().reload_current_scene()
