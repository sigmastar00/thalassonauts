extends KinematicBody2D

# == signals ==
signal death(player)

# == enums ==

# == constants ==
const MAX_OXYGEN := 100.0

# == exported variables ==
export var max_speed: float
export var move_acceleration: float

export var gravity_acceleration: float
export var jump_velocity: float
export var terminal_velocity: float

export var oxygen_fill_rate: float

export var boost_strength: float
export var boost_oxygen_drain: float
export var max_boost_speed: float

# == public variables ==
var velocity := Vector2.ZERO
var acceleration := Vector2.ZERO
var oxygen := MAX_OXYGEN

# == private variables ==
var _jump_frames := 0
var _boosting := false
var _jump_buffer := [false, false, false, false, false, false]
var _current_filler: Area2D = null
var _dead = false

# == onready variables ==
onready var _hose_line := $Line2D as Line2D
onready var _boost_particles := $CPUParticles2D as CPUParticles2D

# == built-in virtual methods ==
func _init() -> void:
	pass


func _ready() -> void:
	_hose_line.clear_points()


func _physics_process(delta: float) -> void:
	if _dead:
		return

	if oxygen <= 0:
		die()

	if Input.is_action_just_pressed("jump"):
		_jump_buffer[0] = true

	_boosting = false
	acceleration.y = gravity_acceleration

	var move_dir := Input.get_axis("move_left", "move_right")
	if move_dir == 0:
		velocity.x = move_toward(velocity.x, 0, move_acceleration * delta)
	else:
		velocity.x += move_acceleration * move_dir * delta
		velocity.x = clamp(velocity.x, -max_speed, max_speed)

	if is_on_floor():
		_jump_frames = 0
		if _jump_buffer.has(true):
			velocity.y = -jump_velocity
	else:
		_jump_frames += 1
		if Input.is_action_pressed("jump") and _jump_frames > 5:
			_boosting = true

	if _boosting:
		acceleration.y = gravity_acceleration - boost_strength
		oxygen -= boost_oxygen_drain * delta

	velocity.y += acceleration.y * delta
	velocity.y = clamp(velocity.y, -max_boost_speed, terminal_velocity)
	velocity = move_and_slide(velocity, Vector2.UP)

	if _current_filler != null:
		oxygen = move_toward(oxygen, MAX_OXYGEN, oxygen_fill_rate * delta)

	_shift_jump_buffer()


func _process(_delta: float) -> void:
	if _current_filler != null:
		var offset := _current_filler.position - position
		_hose_line.points = [Vector2.ZERO, offset]

	_boost_particles.emitting = _boosting


# == public methods ==
func die() -> void:
	_dead = true
	emit_signal("death", self)


func oxygen_entered(filler: Area2D) -> void:
	_current_filler = filler


func oxygen_left(filler: Area2D) -> void:
	if filler == _current_filler:
		_current_filler = null
		_hose_line.clear_points()


# == private methods ==
func _shift_jump_buffer() -> void:
	var i := _jump_buffer.size() - 1
	while true:
		if i == 0:
			_jump_buffer[0] = false
			break
		else:
			_jump_buffer[i] = _jump_buffer[i - 1]
			i -= 1

# == SIGNAL HANDLERS ==
func _on_OxygenTick_timeout() -> void:
	oxygen -= 1


func _on_HazardDetect_body_entered(body: Node) -> void:
	die()
