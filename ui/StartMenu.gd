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
	$StartButton.grab_focus()


# == PUBLIC METHODS ==

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==
func _on_StartButton_pressed() -> void:
	yield(Fade.fade_out(0.5, Utils.PALLETE_0), "finished")
	get_tree().change_scene("res://Main.tscn")
	Fade.fade_in(0.5, Utils.PALLETE_0)


func _on_QuitButton_pressed() -> void:
	get_tree().quit()


func _on_OptionsButton_pressed() -> void:
	$OptionsMenu.popup()

func _on_CreditsButton_pressed() -> void:
	$CreditsScreen.popup()
