extends Menus
@onready var gametTilteLabel: Label = $CenterContainer2/GametTitle
@onready var versionLabel:    Label = $versionLabel
@onready var panel:			  PanelContainer = $PanelContainer
@onready var background: 	  ColorRect = $backgrnd;
@onready var loadingScene := preload("res://logic/ui/LoaderScene.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	super()
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	if SGlobal.gameName: gametTilteLabel.text = SGlobal.gameName
	if SGlobal.gameName: versionLabel.text    = SGlobal.version
	if SGlobal.config[SGlobal.FIRSTBOOT]:
		$AnimationPlayer.play("curtainAnim", 0.)
		await get_tree().create_timer(2.).timeout
		remove_child($SceneEntryCurtain)
		SGlobal.config[SGlobal.FIRSTBOOT] = false
	else:
		remove_child($SceneEntryCurtain)
	
func _on_start_btn_pressed():
	get_tree().change_scene_to_packed(loadingScene)
func _on_quit_pressed():
	get_tree().quit()

func _on_settings_pressed():
	get_tree().change_scene_to_file("res://logic/ui/Settings.tscn")

func _process(delta):
	var vpSize = Vector2(get_viewport().size);
	var mousePos = get_viewport().get_mouse_position()/vpSize
	mousePos.y *= 0.5625;
	var sm: ShaderMaterial = background.material;
	sm.set_shader_parameter("mousePose", mousePos)
	#print(sm.get_shader_parameter("mousePose"))
	#background.material.set("shader_parameter/mousePose", get_viewport().get_mouse_position())
