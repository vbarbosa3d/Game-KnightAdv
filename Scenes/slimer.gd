extends Node2D


const SPEED = 60

var direction = 1

@onready var ray_cast_right = $"RayCast-right"
@onready var ray_cast_left = $"RayCast-left"
@onready var animated_sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	elif ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	position.x += direction * SPEED * delta
	
	
