extends Control
## Class documentation.


# == SIGNALS ==

# == ENUMS ==

# == CONSTANTS ==

# == EXPORTED VARIABLES ==

# == PUBLIC VARIABLES ==

# == PRIVATE VARIABLES ==

# == ONREADY VARIABLES ==
onready var _viewport_size := get_tree().root.size 

# == BUILT-IN VIRTUAL METHODS ==

func _init()  -> void:
	pass


func _ready() -> void:
	var root := get_tree().root
	root.size = Vector2(960, 540)
	call_deferred("do_splash")


# == PUBLIC METHODS ==
func do_splash() -> void:
	#yield(get_tree().create_timer(1), "timeout")
	yield(Fade.fade_out(1), "finished")
	$Logo.visible = false
	$Theme.visible = false
	$SoundWildcard.visible = true
	yield(Fade.fade_in(1), "finished")
	#yield(get_tree().create_timer(1), "timeout")
	yield(Fade.fade_out(1), "finished")
	get_tree().change_scene("res://ui/StartMenu.tscn")
	var root := get_tree().root
	root.size = _viewport_size
	Fade.fade_in(0.3)

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==


