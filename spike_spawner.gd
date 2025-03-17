extends Node2D

@onready var Spike: StaticBody2D = $Spike

var density = 14000

func _ready() -> void:
	for i in 500:
		var new_Spike = Spike.duplicate()
		var new_position = Vector2(
			randf_range(-density, density),
			randf_range(-density, density)
		)
		new_Spike.position = new_position
		add_child(new_Spike)
