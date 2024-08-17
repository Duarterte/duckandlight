extends Area3D




func _on_body_entered(body):
	if body.name == "Player":
		body.isDead = true
		Sound.get_node("spikeDead").play()
		var mesh: MeshInstance3D = body.get_child(0).get_child(0);
		mesh.get_active_material(0).set("shader_parameter/isDead", true)
		await get_tree().create_timer(3.).timeout
		mesh.get_active_material(0).set("shader_parameter/isDead", false)
		get_tree().reload_current_scene()
