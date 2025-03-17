extends Node2D

var speed = 1

func _process(delta: float) -> void:
	rotation += delta * speed


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Enemy"):
		body.health -= 1
		if body.health <= 0:
			body.queue_free()
			speed += 0.1
	if body.is_in_group("BossEnemy"):
		body.health -= 1
		if body.health <= 0:
			body.die()
			speed += 1.2
