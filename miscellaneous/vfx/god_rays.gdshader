shader_type spatial;
render_mode unshaded, cull_disabled;

uniform float rotationSpeed = 0.3;

void vertex() {
    float angle = -TIME * rotationSpeed;
    float c = cos(angle);
    float s = sin(angle);
    VERTEX.xz = vec2(VERTEX.x * c - VERTEX.z * s, VERTEX.x * s + VERTEX.z * c);
}

void fragment() {
    float alpha = clamp(pow(1.0 - UV.y, 3.0), 0.02, 0.2) * 1.5;
    ALBEDO = vec3(clamp(1.0 - sin(UV.x * 30.0) + 0.5, 0.0, 1.0)) * vec3(1.0, 1.0, 0.90);
    ALPHA = alpha;
}