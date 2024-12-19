shader_type canvas_item;

uniform vec4 color_1 : source_color = vec4(0.1, 0.0, 0.2, 1.0); // Main nebula color
uniform vec4 color_2 : source_color = vec4(0.8, 0.2, 0.8, 1.0); // Highlight color
uniform float turbulence = 1.5; // Controls cloud complexity
uniform float speed = 0.1; // Animation speed
uniform float fade_start = 0.4; // Start of the fade effect
uniform float fade_end = 0.6; // End of the fade effect
uniform vec2 center = vec2(0.5, 0.5); // Center of the nebula (relative to screen)

// Noise function
float noise(vec2 uv) {
    return fract(sin(dot(uv, vec2(12.9898, 78.233))) * 43758.5453);
}

// Smooth noise
float smooth_noise(vec2 uv) {
    vec2 i = floor(uv);
    vec2 f = fract(uv);
    float a = noise(i);
    float b = noise(i + vec2(1.0, 0.0));
    float c = noise(i + vec2(0.0, 1.0));
    float d = noise(i + vec2(1.0, 1.0));
    vec2 u = f * f * (3.0 - 2.0 * f);
    return mix(a, b, u.x) + (c - a) * u.y * (1.0 - u.x) + (d - b) * u.x * u.y;
}

// Fractal noise
float fractal_noise(vec2 uv) {
    float result = 0.0;
    float amplitude = 0.5;
    float frequency = 1.0;
    for (int i = 0; i < 4; i++) {
        result += amplitude * smooth_noise(uv * frequency);
        frequency *= 2.0;
        amplitude *= 0.5;
    }
    return result;
}

// Main function
void fragment() {
    vec2 uv = SCREEN_UV; // Normalize coordinates
    uv *= 5.0; // Scale the effect
    uv.x -= TIME * speed; // Animate along the X-axis

    // Generate fractal noise
    float n = fractal_noise(uv * turbulence);

    // Calculate the distance from the center of the screen
    float dist = distance(uv, center);

    // Apply radial fade effect: the nebula fades from the center
    float alpha = smoothstep(fade_start, fade_end, dist);

    // Mix colors based on distance from center
    vec4 color = vec4(0.6, 0.3, 0.8, 0.4) * n;
    COLOR = color;
}
