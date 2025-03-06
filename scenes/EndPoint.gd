extends Node2D

export var sceneName: String = "WinScreen"

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://scenes/screens/" + sceneName + ".tscn"))
