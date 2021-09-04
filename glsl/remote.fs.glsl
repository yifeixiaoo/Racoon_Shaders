uniform int rcState;


void main() {
	// HINT: WORK WITH rcState HERE

	//Paint it red

    gl_FragColor = vec4(rcState == 1, rcState == 2, rcState == 3, 1);


}