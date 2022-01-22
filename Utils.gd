extends Node
## Class documentation.


# == SIGNALS ==

# == ENUMS ==

# == CONSTANTS ==
const PALLETE_0 := Color(0x08141eff)
const PALLETE_1 := Color(0x0f2a3fff)
const PALLETE_2 := Color(0x20394fff)
const PALLETE_3 := Color(0xf6d6bdff)
const PALLETE_4 := Color(0xc3a38aff)
const PALLETE_5 := Color(0x997577ff)
const PALLETE_6 := Color(0x816271ff)
const PALLETE_7 := Color(0x4e495fff)

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
	
func is_current_scene(scene: Node) -> bool:
	return scene.get_tree().current_scene == scene

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==


