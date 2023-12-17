precision highp float;

varying vec2 vUv; // I come from the vertex shader
uniform float uTime;

void main(){
  vec3 color = vec3(0.);
  vec2 uv = vUv;
 
  color = vec3( uv.x );
  // Vertical gradient
  color = vec3( uv.y );

/**
* The following code spilts the canvas into red and blue vertically.
**/
  color = vec3(1., 0., 0.); // color red I think
if( vUv.x > 0.5 ){
  color = vec3(0.,0.,1.); // color blue
}
 
  gl_FragColor = vec4(color, 1.0);
}

/**
** gl_FragColor is the reserved global variable used to color the pixels. vUv is a varying sent by the vertex shader with the UVs. uv.x is the horizontal gradient and uTime is a uniform sent by our javascript with the current time. 
**  vec4 means red, green, blue, alpha and vec3 is just red, blue, green (maybe)
**/
