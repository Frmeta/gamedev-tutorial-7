extends Interactable

export (String) var scene_name = ""

var player

func _ready():
	player = get_tree().get_nodes_in_group("player")[0]
	

func interact():
	if player.get_item(scene_name):
		queue_free()
