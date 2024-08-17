extends MultiMeshInstance3D

func transf1(index: int, size: float) -> Transform3D:
	var basis_ := Basis(Vector3(1, 0, 0), Vector3(0, 1, 0), Vector3(0, 0, 1))
	var pos := Vector3(index*size, 0, 0);
	return Transform3D(basis_, pos)

func transf2(index: int, size: float) -> Transform3D:
	var basis_ := Basis(Vector3(0, 0, 1), Vector3(0, 1, 0), Vector3(-1, 0, 0))
	var pos := Vector3(0, 0, index*size+5.);
	return Transform3D(basis_, pos)

func transf3(index: int, size: float) -> Transform3D:
	var basis_ := Basis(Vector3(-1, 0, 0), Vector3(0, 1, 0), Vector3(0, 0, -1))
	var pos := Vector3(index*size, 0, 20);
	return Transform3D(basis_, pos)

func transf4(index: int, size: float) -> Transform3D:
	var basis_ := Basis(Vector3(0, 0, 1), Vector3(0, 1, 0), Vector3(-1, 0, 0))
	var pos := Vector3(15, 0, index*size+5.);
	return Transform3D(basis_, pos)


func _ready():
	#rc stands for rows and columns 
	var basis1;
	for i in range(3):
		multimesh.set_instance_transform(i, transf1(i, 5.))
		multimesh.set_instance_transform(i+3, transf2(i, 5.))
		multimesh.set_instance_transform(i+6, transf3(i, 5.))
		multimesh.set_instance_transform(i+9, transf4(i, 5.))
	
	multimesh.set_instance_transform(12, Transform3D(Basis(), Vector3(0, 0, 10)))	
	multimesh.set_instance_transform(13, Transform3D(Basis(), Vector3(10, 0, 10)))
