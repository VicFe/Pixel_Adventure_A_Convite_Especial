extends Area2D

@onready var collision = $collision as CollisionShape2D
@onready var spikes = $spikes as Sprite2D

func _ready():
	collision.shape.size = spikes.get_rect().size
