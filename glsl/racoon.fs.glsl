// Create shared variable. The value is given as the interpolation between normals computed in the vertex shader
varying vec3 interpolatedNormal;
/* HINT: YOU WILL NEED A DIFFERENT SHARED VARIABLE TO COLOR ACCORDING TO POSITION */
varying vec3 posColor;
uniform vec3 remotePosition;
uniform int rcState;
void main() {
  float dist = distance(posColor, remotePosition);
  vec4 color1 = vec4(1.0, 1.0, 1.0, 1.0);
  vec4 color2 = vec4(0.0, 0.0, 0.0, 1.0);

  // Set final rendered color according to the surface normal
  if (dist < 3.0){
    // Creative Portion:
    // 1. changing color of fragment based on state of rcState
    // 2. changing color of fragment based on location of rcState (rcstate = 1)
    // 3. creating a different shade of the normalized color (rcstate = 3)
    if (rcState == 1){gl_FragColor = vec4(normalize(remotePosition), 1);}
    if (rcState == 2){gl_FragColor = vec4(posColor, 1);}
    if (rcState == 3){gl_FragColor = vec4(normalize(posColor), 1);}
    }
  else{
    gl_FragColor = vec4(normalize(interpolatedNormal), 1.0);
    }
    
   // REPLACE ME
}

