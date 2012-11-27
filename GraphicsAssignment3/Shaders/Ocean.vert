uniform float time;

varying vec3 lightDir,normal;


void main()
{

	vec3 lighPos = vec3(10,10,0);

	normal = normalize(gl_NormalMatrix * gl_Normal);
	lightDir = normalize(lighPos);
	
	gl_TexCoord[0] = gl_MultiTexCoord0;
	
	
	float timer = time * 0.01;
	
	vec4 position = gl_Vertex;
	vec2 point = vec2(position.x,position.y);
    float val1 = 3.4 * sin(position.y+ timer)  ;
	float val2 = 4.6 * sin(position.x+ (timer))  ;
	float val3 = 2.9f *sin(position.z+ (timer/2.0))  ;
    position.z = (val1 + val2  + val3) * 0.2;

   
   
   
	//Scale It Up
	//position.x *= 2.0;
	//position.y *= 2.0;
	//position.z *= 2.0;

   gl_Position = gl_ModelViewProjectionMatrix * position;
   
 //  gl_Position = ftransform();
} 
