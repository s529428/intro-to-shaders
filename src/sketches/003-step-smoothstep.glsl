precision highp float;

varying vec2 vUv;
uniform float uTime;

float square(vec2 uv, float size) {
  float halfSize = size/2.0;

  float left = step(0.5 - halfSize, uv.x);
  float right = step(uv.x, 0.5 + halfSize);
}

void main(){
  vec3 color = vec3(1.);
  float result = 0;
  vec2 uv = vUv;

  

  gl_FragColor = vec4(color, 1.0);
}

/*
Notes: 
GlSL means the OpenGL ES Shading Language, also based on C++ (oy ve)
The most basic way to manipulate gradients is the "step" function, a native GLSL function.
Step makes everything either white or black. No in-betweens, no gray values.
*/