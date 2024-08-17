extends MultiMeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var n = 3
	for i in range(n):
		for j in range(n):
			multimesh.set_instance_transform(i*n+j, Transform3D(Basis(), Vector3(5.*i, 0, 5.*j + 5.)))
			
			
	#multimesh.set_instance_transform(0, Transform3D(Basis(), Vector3(0, 0, 0)))
