

extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var txtLabel: Label = $Label
	var txt = "Time: " + Time.get_time_string_from_unix_time(SGlobal.finalTime)
	txtLabel.text = txt
	SGlobal.currentLevel = 0
	GlobalScene.get_child(0).get_child(1).set_visible(false)
	await get_tree().create_timer(3.).timeout
	get_tree().change_scene_to_file("res://logic/ui/MainMenu.tscn")
	
