extends RigidBody2D

export var screenName: String = "LoseScreen"

func _on_FallingFish_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://scenes/screens/" + screenName + ".tscn"))
