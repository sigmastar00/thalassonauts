extends TextureProgress

func _process(_delta: float) -> void:
	var player := Utils.get_player()
	value = player.oxygen
