#version 330 core
in vec2 TexCoords;
in vec4 FragPos;
out vec4 color;

uniform sampler2D sprite;
uniform vec3 spriteColor;
uniform int LightOff;
uniform vec2 PlayerPos;

void main()
{
    float d = length(vec4(PlayerPos, 0.0f, 1.0f) - FragPos);
    color = vec4(spriteColor, 1.0) * texture(sprite, TexCoords);
    if (LightOff == 1 && d > 130.0f) {
        color = color * 0;
    }
}