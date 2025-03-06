extends Area2D

export var screenName = "LoseScreen"

func _on_FallArea_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://scenes/screens/" + screenName + ".tscn"))
	else:
		body.queue_free()
