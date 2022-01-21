extends Area2D
## Class documentation.


# == SIGNALS ==

# == ENUMS ==

# == CONSTANTS ==

# == EXPORTED VARIABLES ==
export var oxygen_amount: float

# == PUBLIC VARIABLES ==

# == PRIVATE VARIABLES ==

# == ONREADY VARIABLES ==

# == BUILT-IN VIRTUAL METHODS ==

func _init()  -> void:
	pass


func _ready()  -> void:
	pass


# == PUBLIC METHODS ==
func respawn() -> void:
	visible = true
	monitoring = true

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==
func _on_OxygenBubble_body_entered(body: Node) -> void:
	body.oxygen = clamp(body.oxygen + oxygen_amount, 0, body.MAX_OXYGEN)
	visible = false
	set_deferred("monitoring", false)
