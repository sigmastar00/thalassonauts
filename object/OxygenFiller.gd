extends Area2D

func _on_OxygenFiller_body_entered(body: Node) -> void:
	body.oxygen_entered(self)


func _on_OxygenFiller_body_exited(body: Node) -> void:
	body.oxygen_left(self)
