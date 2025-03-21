extends RigidBody2D

@export var scene_name = "Level1"
@export var game_over_scene: String = "GameOver"


func _ready() -> void:
	contact_monitor = true
	max_contacts_reported = 1


func _on_body_entered(body: Node) -> void:
	var current_scene = get_tree().get_current_scene().get_name()
	if body.get_name() == "Player":
		if current_scene == scene_name:
			global.lives -= 1
			get_tree().call_deferred(
				"change_scene_to_file", str("res://scenes/" + scene_name + ".tscn")
			)
		if global.lives == 0:
			get_tree().call_deferred(
				"change_scene_to_file", str("res://scenes/" + game_over_scene + ".tscn")
			)
		else:
			get_tree().call_deferred(
				"change_scene_to_file", str("res://scenes/" + scene_name + ".tscn")
			)
	else:
		self.queue_free()
