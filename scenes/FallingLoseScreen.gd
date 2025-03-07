extends RigidBody2D

@export var scene_name = "LoseScreen"


func _ready() -> void:
	contact_monitor = true
	max_contacts_reported = 1


func _on_body_entered(body: Node) -> void:
	if body.get_name() == "Player":
		get_tree().change_scene_to_file(str("res://scenes/" + scene_name + ".tscn"))
	else:
		self.queue_free()
