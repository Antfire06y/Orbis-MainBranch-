shader_type canvas_item;
uniform float speed = 2.0;
uniform float dis = 20.0;

void vertex(){
	VERTEX.x += sin(TIME * speed) * 20.0 * (UV.y - 1.0);
}