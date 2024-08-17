extends CanvasLayer
var nextScene: Object
signal deferred

func loadLevel(path: String) -> void:
	var sceneLoadStatus = ResourceLoader.load_threaded_get_status(path)
	if sceneLoadStatus == ResourceLoader.THREAD_LOAD_LOADED:
		var level = ResourceLoader.load_threaded_get(path)
		get_tree().change_scene_to_packed(level)
	else:
		await get_tree().create_timer(.25).timeout
		loadLevel(path)
func _ready():
	var lvlPath: String
	match SGlobal.currentLevel:
		0: lvlPath="res://world/Level_One.tscn"
		1: lvlPath="res://world/Level_Two.tscn"
		2: lvlPath="res://world/Level_Three.tscn"
		3: lvlPath="res://world/finalScore.tscn"
		_: lvlPath="res://logic/ui/MainMenu.tscn"
	ResourceLoader.load_threaded_request(lvlPath)
	loadLevel(lvlPath)
	
