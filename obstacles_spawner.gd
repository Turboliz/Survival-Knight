extends Node2D

@onready var obstacle: StaticBody2D = $StaticBody2D

var density = 6000

func _ready() -> void:
	for i in 500:
		var new_obstacle = obstacle.duplicate()
		var new_position = Vector2(
			randf_range(-density, density),
			randf_range(-density, density)
		)
		new_obstacle.position = new_position
		add_child(new_obstacle)
