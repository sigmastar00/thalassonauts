extends Node2D
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
	$AnimationPlayer.play("Move")


# == PUBLIC METHODS ==
func respawn() -> void:
	$AnimationPlayer.play("RESET")
	$AnimationPlayer.play("Move")

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==


