extends Control
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

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==
func _on_StartButton_pressed() -> void:
	yield(Fade.fade_out(0.5), "finished")
	get_tree().change_scene("res://Main.tscn")
	Fade.fade_in(0.5)


func _on_QuitButton_pressed() -> void:
	get_tree().quit()
