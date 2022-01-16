extends Node2D
## Class documentation.


# == SIGNALS ==

# == ENUMS ==

# == CONSTANTS ==

# == EXPORTED VARIABLES ==
export var respawn_point: NodePath 

# == PUBLIC VARIABLES ==

# == PRIVATE VARIABLES ==
var _respawn_point: Node2D

# == ONREADY VARIABLES ==

# == BUILT-IN VIRTUAL METHODS ==

func _init()  -> void:
	pass


func _ready()  -> void:
	_respawn_point = get_node(respawn_point) as Node2D
	assert(_respawn_point != null)


# == PUBLIC METHODS ==

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==
func _on_Player_death(player: KinematicBody2D) -> void:
	player.respawn(_respawn_point.position)
	
