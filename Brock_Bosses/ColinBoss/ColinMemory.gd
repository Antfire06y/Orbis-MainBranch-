extends Area2D

onready var fade_class = load("res://Levels/CutsceneTransition.tscn")
onready var cutscene_class = load("res://Levels/ColinMemory.tscn")
export(String, FILE) var Video = cutscene_class

func _on_ColinMemory_body_entered(body):
		if body.is_in_group('Player'):
			Globals.Cutscene = true
			Globals.cantmove = true
		var fade_scene = fade_class.instance()
#		Music.play_music(9)
#		Music.stop(3)
		fade_scene.connect("finished",  self, "load_cutscene")
		get_parent().add_child(cutscene_class.instance())
		get_parent().add_child(fade_scene)
		self.queue_free()

