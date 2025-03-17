extends CharacterBody2D

var player
var health = 1

func _ready() -> void:
	player = get_tree().get_first_node_in_group("player")

func _process(delta: float) -> void:
	var vec_to_player = player.position - position
	var target_direction = vec_to_player.normalized()
	var dist_to_player = vec_to_player.length()
	velocity = target_direction * 200
	move_and_slide()
	if dist_to_player < 135:
		player.take_damage()
