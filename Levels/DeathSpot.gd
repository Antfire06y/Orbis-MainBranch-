extends Area2D


export(String, FILE) var next_scene_path = ""
export(Vector2) var player_spawn_location = Vector2.ZERO

func _process(delta):
		Globals.health - 1
func _get_configuration_warning() -> String:
	if next_scene_path == "":
		return "Y-you b-baka! Senapai... there is nothing to transition to..."
	else:
		return ""


func _on_Portal_body_entered(body):
	if body.is_in_group('Player'):
#	Area2D.damage(Damage)
		body.damage(1)
		Globals.health - 1
	Globals.player_initial_map_position = player_spawn_location
	#Changes the scene Cole! if the scene is not Okay... You go through this...
	if get_tree().change_scene(next_scene_path):
		$Transition_Screen.transition()
	else:
		if get_tree().change_scene(next_scene_path) != OK:
	#Error handling the situation stand by...
			print("Error: The Scene is null")
		
