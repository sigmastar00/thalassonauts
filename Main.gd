extends Node
## Class documentation.


# == SIGNALS ==

# == ENUMS ==

# == CONSTANTS ==

# == EXPORTED VARIABLES ==
export var level_list: PoolStringArray
export var fade_time: float
export var fade_color: Color

# == PUBLIC VARIABLES ==

# == PRIVATE VARIABLES ==
var _current_index := 0

# == ONREADY VARIABLES ==
onready var _level_holder := $World/Level as Node2D

# == BUILT-IN VIRTUAL METHODS ==

func _init()  -> void:
	pass


func _ready()  -> void:
	pass


# == PUBLIC METHODS ==
func change_level(level_index: int = -1) -> void:
	get_tree().paused = true
	
	if level_index == -1:
		level_index = min(_current_index + 1, level_list.size() - 1)
	_current_index = level_index
	
	var next_scene_path := level_list[level_index]
	yield(Fade.fade_out(fade_time, fade_color, "GradientVertical", false, true), "finished")
	var next_level := load(next_scene_path).instance() as Node2D
	var current_level := _level_holder.get_child(0)
	_level_holder.remove_child(current_level)
	current_level.queue_free()
	_level_holder.add_child(next_level)
	next_level.connect("level_complete", self, "_on_level_complete")
	get_tree().paused = false
	Fade.fade_in(fade_time, fade_color, "GradientVertical", true, true)
	

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==
func _on_level_complete() -> void:
	change_level()
