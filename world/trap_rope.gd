extends RayCast3D
@onready var collideDone = false;
@export var floor_trap_col: StaticBody3D;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_collider() != null:
		if get_collider().name == "Player" and not collideDone:
			Sound.get_node("ropeSnap").play()
			floor_trap_col.set_collision_layer_value(1, false)
			collideDone = true;
