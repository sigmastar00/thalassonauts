extends ColorRect
## Class documentation.


# == SIGNALS ==

# == ENUMS ==

# == CONSTANTS ==

# == EXPORTED VARIABLES ==

# == PUBLIC VARIABLES ==

# == PRIVATE VARIABLES ==

# == ONREADY VARIABLES ==
onready var _timer := $Timer as Timer
onready var _label := $Label as RichTextLabel

# == BUILT-IN VIRTUAL METHODS ==

func _init()  -> void:
	pass


func _ready()  -> void:
	visible = false


# == PUBLIC METHODS ==
func show_depth(depth: int) -> void:
	_label.bbcode_text = "[center][b]%dm[/b][/center]" % depth
	visible = true
	_timer.start()

# == PRIVAE METHODS ==

# == SIGNAL HANDLERS ==
func _on_Timer_timeout() -> void:
	visible = false
