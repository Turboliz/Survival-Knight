extends CharacterBody2D

@export var speed = 300

var max_health = 3.0
var health = max_health
var damage_cooldown = 0.75

func _process(delta: float) -> void:
	damage_cooldown -= delta
	$ProgressBar.value = health / max_health
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	move_and_slide()
	
	if abs(velocity.x) > 0.01:
		if velocity.x < 0:
			$Sprite2D.flip_h = true
		else:
			$Sprite2D.flip_h = false

func take_damage():
	if damage_cooldown < 0:
		health -= 1
		damage_cooldown = 0.5
		if health <= 0:
			get_tree().quit()
		
		print(health)
