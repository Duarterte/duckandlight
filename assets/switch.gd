extends MeshInstance3D

func _on_area_3d_body_entered(body):
	if body.name == "Player":
		GlobalScene.is_E_anim_playable = true
		GlobalScene.play_press_E_animation()
		body.switch_ligths_allow = true

func _on_area_3d_body_exited(body):
	if body.name == "Player":
		GlobalScene.is_E_anim_playable = false
		body.switch_ligths_allow = false
