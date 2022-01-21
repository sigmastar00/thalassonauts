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

# == BUILT-IN VIRTUAL METHODS ==

func _init()  -> void:
	pass


func _ready()  -> void:
	pass
	
func _physics_process(delta: float) -> void:
	rotation_degrees += speed * delta


# == PUBLIC METHODS ==

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==


