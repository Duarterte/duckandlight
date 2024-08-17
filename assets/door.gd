extends Node3D
@export var isDoorOpened: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_3d_body_entered(body):
	if body.name == "Player" and visible and isDoorOpened:
		GlobalScene.is_E_anim_playable = true
		GlobalScene.play_press_E_animation()
		body.open_door_allow = true

func _on_area_3d_body_exited(body):
	if body.name == "Player" and visible and isDoorOpened:
		GlobalScene.is_E_anim_playable = false
		body.open_door_allow = false
