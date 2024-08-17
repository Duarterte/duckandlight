extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_up"):
		global_position += Vector3(0, .7, 0)
	if Input.is_action_pressed("ui_down"):
		global_position += Vector3(0, -.7, 0)
	if Input.is_action_pressed("ui_left"):
		global_position += Vector3(-.7, 0, 0)
	if Input.is_action_pressed("ui_right"):
		global_position += Vector3(.7, 0, 0)
	if Input.is_key_pressed(KEY_CTRL):
		global_position += Vector3(0, 0, .7)
	if Input.is_key_pressed(KEY_SPACE):
		global_position += Vector3(0, 0, -.7)
	if Input.is_key_pressed(KEY_Q):
		rotate_y(deg_to_rad(5))
	if Input.is_key_pressed(KEY_E):
		rotate_y(deg_to_rad(-5))
