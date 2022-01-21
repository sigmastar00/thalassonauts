extends TileMap
## Class documentation.


# == SIGNALS ==

# == ENUMS ==

# == CONSTANTS ==

# == EXPORTED VARIABLES ==
export var speed: float

# == PUBLIC VARIABLES ==

# == PRIVATE VARIABLES ==

# == ONREADY VARIABLES ==
onready var _initial_rotation = rotation_degrees

# == BUILT-IN VIRTUAL METHODS ==

func _init()  -> void:
	pass


func _ready()  -> void:
	pass
	
func _physics_process(delta: float) -> void:
	rotation_degrees += speed * delta


# == PUBLIC METHODS ==
func respawn() -> void:
	rotation_degrees = _initial_rotation

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==


