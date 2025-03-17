extends Node2D

@export var enemy_scene: PackedScene

var player

func _ready() -> void:
	player = get_tree().get_first_node_in_group("player")

func _on_timer_timeout() -> void:
	var new_enemy = enemy_scene.instantiate()
	var random_angle = randf_range(0, TAU)
	var new_position = Vector2(
		sin(random_angle),
		cos(random_angle)
	) * 600
	new_position += player.position
	new_enemy.position = new_position
	
	add_child(new_enemy)
