extends Node
## Class documentation.


# == SIGNALS ==

# == ENUMS ==

# == CONSTANTS ==

# == EXPORTED VARIABLES ==

# == PUBLIC VARIABLES ==

# == PRIVATE VARIABLES ==

# == ONREADY VARIABLES ==

# == BUILT-IN VIRTUAL METHODS ==

func _init()  -> void:
	pass


func _ready()  -> void:
	pass


# == PUBLIC METHODS ==
func get_player() -> KinematicBody2D:
	return get_tree().get_nodes_in_group("player")[0]

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==


