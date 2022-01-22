extends Node2D
## Class documentation.


# == SIGNALS ==
signal level_complete

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
	
	# run indiviudal levels from the editor in the main scene instead
	if Utils.is_current_scene(self):
		call_deferred("_run_in_main")

# == PUBLIC METHODS ==


# == PRIVATE METHODS ==
func _run_in_main() -> void:
	var main := load("res://Main.tscn").instance() as Node
	var root := get_tree().root
	root.add_child(main)
	get_tree().current_scene = main
	root.remove_child(self)
	main.call_deferred("change_level", filename)
	queue_free()
	

# == SIGNAL HANDLERS ==
func _on_Player_death(player: KinematicBody2D) -> void:
	yield(Fade.fade_out(0.3, Utils.PALLETE_0), "finished")
	player.respawn(_respawn_point.position)
	$Camera2D.snap_to_target()
	get_tree().call_group("respawnable_objects", "respawn")
	Fade.fade_in(0.3, Utils.PALLETE_0)


func _on_Transition_body_entered(_body: Node) -> void:
	emit_signal("level_complete")
