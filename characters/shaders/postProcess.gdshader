shader_type spatial;
render_mode unshaded;
uniform bool isDead;
uniform sampler2D bloodSampler;
void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	if (isDead) {
		vec4 bloodTexture = texture(bloodSampler, SCREEN_UV);
		ALBEDO = bloodTexture.rgb;
		ALPHA = bloodTexture.a;
	}
	else {
		ALPHA = 0.;
	}
		
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
