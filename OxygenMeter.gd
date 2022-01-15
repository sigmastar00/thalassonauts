extends ProgressBar

export var player: NodePath

var _player: KinematicBody2D

func _ready() -> void:
	var player_node := get_node(player)
	assert(player_node != null)
	_player = player_node
	
	max_value = _player.MAX_OXYGEN
	value = _player.oxygen
	
func _process(_delta: float) -> void:
	value = _player.oxygen
	
	
