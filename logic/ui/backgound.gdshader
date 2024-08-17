shader_type canvas_item;
uniform vec2 mousePose = vec2(0.);

void fragment() {
	vec2 uv = UV;
	uv.y *= 0.5625;
	float circle = distance(uv, mousePose);
	circle = 1.-step(circle, .15);
	COLOR = vec4(vec3(0), circle);
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
