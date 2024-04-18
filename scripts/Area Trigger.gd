extends Area

export (String) var sceneName = "Level 1"

func _on_Area_Trigger_body_entered(body):
	if body.get_name() == "Player":
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().change_scene(str("res://Scenes/" + sceneName + ".tscn"))
