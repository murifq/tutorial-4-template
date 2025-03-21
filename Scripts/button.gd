extends LinkButton


func _on_pressed(scene_to_load: String) -> void:
	if scene_to_load == "MainMenu":
		global.lives = 3
	elif scene_to_load == "Level1":
		global.start_level = "Level1"
	elif scene_to_load == "Level2":
		global.start_level = "Level2"
	elif scene_to_load == "PlayAgain":
		global.lives = 3
		scene_to_load = global.start_level
	get_tree().change_scene_to_file(str("res://scenes/" + scene_to_load + ".tscn"))
