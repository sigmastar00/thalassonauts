extends PopupPanel
## Class documentation.


# == SIGNALS ==

# == ENUMS ==

# == CONSTANTS ==

# == EXPORTED VARIABLES ==

# == PUBLIC VARIABLES ==

# == PRIVATE VARIABLES ==

# == ONREADY VARIABLES ==
onready var _label := $MarginContainer/VBoxContainer/RichTextLabel as RichTextLabel

# == BUILT-IN VIRTUAL METHODS ==

func _init()  -> void:
	pass


func _ready()  -> void:
	if Utils.is_current_scene(self):
		popup()
	
	var text_file := File.new()
	text_file.open("res://credits.txt", File.READ)
	var credits_text := text_file.get_as_text()
	text_file.close()
	_label.bbcode_enabled = true
	_label.bbcode_text = credits_text


# == PUBLIC METHODS ==

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==
func _on_RichTextLabel_meta_clicked(meta) -> void:
	var _result = OS.shell_open(str(meta))


func _on_OkButton_pressed() -> void:
	hide()
