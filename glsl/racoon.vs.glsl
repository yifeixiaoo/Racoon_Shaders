// Create shared variable for the vertex and fragment shaders
varying vec3 interpolatedNormal;
/* HINT: YOU WILL NEED A DIFFERENT SHARED VARIABLE TO COLOR ACCORDING TO POSITION */
varying vec3 posColor;

void main() {
    // Set shared variable to vertex normal
    interpolatedNormal = normal;
    vec3 newPos = position + vec3(0.0, 0.0, -0.3);
    // viewMatrix multiplication
    // Multiply each vertex by the model-view matrix and the projection matrix to get final vertex position
    gl_Position = projectionMatrix * modelViewMatrix * vec4(newPos, 0.15);
    posColor = normalMatrix * newPos;
}   
