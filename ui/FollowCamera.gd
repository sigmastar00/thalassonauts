extends Camera2D
## Class documentation.


# == SIGNALS ==

# == ENUMS ==

# == CONSTANTS ==

# == EXPORTED VARIABLES ==
export var target: NodePath

# == PUBLIC VARIABLES ==

# == PRIVATE VARIABLES ==
var _target: Node2D
var _reset := false

# == ONREADY VARIABLES ==

# == BUILT-IN VIRTUAL METHODS ==

func _init()  -> void:
	pass


func _ready()  -> void:
	_target = get_node(target) as Node2D
	assert(_target)
	snap_to_target()
	
func _process(_delta: float) -> void:
	position = _target.position


# == PUBLIC METHODS ==
func snap_to_target() -> void:
	position = _target.position
	align()
	reset_smoothing()

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==


