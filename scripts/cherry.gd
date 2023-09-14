extends EnemyBase

func _physics_process(delta):
	_apply_gravity(delta)
	movement(delta)
