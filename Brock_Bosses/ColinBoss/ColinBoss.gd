extends Node2D


func _ready():
	if Globals.ColinDialog1End == true:
		$"ColinDialog1".scale = Vector2(0, 0) 
		$"ColinDialog1".queue_free()
	if Globals.ColinDefeated == true:
		$"MichelleCutsceneTrigger".queue_free()
		$"Node2D".queue_free()
	pass
func _process(delta):
	if Globals.ColinDialog1Start == true:
		$"ColinDialog1".scale = Vector2(1, 1) 
		print('whyy')
	if Globals.ColinDefeated == true:
		$"ColinIdle".show()
		$"Portal/AnimationPlayer".play("Avalible")
		pass
