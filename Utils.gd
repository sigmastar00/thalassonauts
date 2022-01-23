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

# allegedly, preloading audio assets helps performance with HTML5 builds
# Didn't seem to do much, but maybe made stutters slightly less severe?
const AUDIO_BUBBLES = preload("res://audio/bubbles.wav")
const AUDIO_DEATH = preload("res://audio/death.wav")
const AUDIO_MUSIC = preload("res://audio/gwj41-glued.wav")
const AUDIO_HOSE_CONNECT = preload("res://audio/hose_connect.wav")
const AUDIO_POP = preload("res://audio/pop.wav")

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


