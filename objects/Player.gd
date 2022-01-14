extends KinematicBody2D

export var max_speed: float
export var move_acceleration: float
export var gravity_acceleration: float

var velocity := Vector2.ZERO
var acceleration := Vector2.ZERO

func _physics_process(delta: float) -> void:
	var move_dir := Input.get_axis("move_left", "move_right")
	if move_dir == 0:
		velocity.x = move_toward(velocity.x, 0, move_acceleration * delta)
	else:
		velocity.x += move_acceleration * move_dir * delta
		velocity.x = clamp(velocity.x, -max_speed, max_speed)
	velocity.y += gravity_acceleration * delta
	velocity = move_and_slide(velocity, Vector2.UP)
