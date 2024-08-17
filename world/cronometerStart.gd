extends RayCast3D
@onready var collideDone: bool = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if get_collider() != null:
		if get_collider().name == "Player" and not collideDone:
			$quack.play(.3)
			GlobalScene.initTime = Time.get_unix_time_from_system()
			GlobalScene.get_child(0).get_child(1).set_visible(true)
			collideDone = true
