extends Node

signal coins_updated
signal score_updated
signal life_updated

var coins := 0

var score := 0

var player_life := 3

var player = null

var current_checkpoint = null

func respawn_player():
	if current_checkpoint != null:
		player.position = current_checkpoint.global_position
