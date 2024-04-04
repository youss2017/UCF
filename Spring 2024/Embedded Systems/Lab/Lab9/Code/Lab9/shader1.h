#ifndef __SHADER1__
#define __SHADER1__
#define SMOOTH(r,R) (1.0-smoothstep(R-1.0,R+1.0, r))
#define RANGE(a,b,x) ( step(a,x)*(1.0-step(b,x)) )
#define RS(a,b,x) ( smoothstep(a-1.0,a+1.0,x)*(1.0-smoothstep(b-1.0,b+1.0,x)) )
#define M_PI 3.1415926535897932384626433832795


typedef struct {
    float x;
    float y;
} vec2;

typedef struct {
    float r;
    float g;
    float b;
} vec3;

vec2 iResolution = { 128, 128 };
float iTime = 14.0; // Global variable for time

float smoothstep(float edge0, float edge1, float x) {
    float t = fmin(fmax((x - edge0) / (edge1 - edge0), 0.0), 1.0);
    return t * t * (3.0 - 2.0 * t);
}

vec2 vec2_sub(vec2 v1, vec2 v2) {
    vec2 result;
    result.x = v1.x - v2.x;
    result.y = v1.y - v2.y;
    return result;
}

float vec2_length(vec2 v) {
    return sqrt(v.x * v.x + v.y * v.y);
}

float mix(float x, float y, float a) {
    return x * (1.0 - a) + y * a;
}

float step(float edge, float x) {
    return x < edge ? 0.0 : 1.0;
}

vec3 vec3_scale(float v, float scalar) {
    vec3 result;
    result.r = v * scalar;
    result.g = v * scalar;
    result.b = v * scalar;
    return result;
}

vec3 vec3_scale2(float v, vec3 scale) {
    vec3 result;
    result.r = v * scale.r;
    result.g = v * scale.g;
    result.b = v * scale.b;
    return result;
}

vec3 vec3_add(vec3 v1, vec3 v2) {
    vec3 result;
    result.r = v1.r + v2.r;
    result.g = v1.g + v2.g;
    result.b = v1.b + v2.b;
    return result;
}

float movingLine(vec2 uv, vec2 center, float radius) {
    float theta0 = 90.0 * iTime;
    vec2 d = vec2_sub(uv, center);
    float r = vec2_length(d);
    if (r < radius) {
        vec2 p = { radius * cos(theta0 * M_PI / 180.0),
                  -radius * sin(theta0 * M_PI / 180.0) };
        float dot_product = d.x * p.x + d.y * p.y;
        float scalar_projection = dot_product / (p.x * p.x + p.y * p.y);
        vec2 projected_point = { p.x * scalar_projection, p.y * scalar_projection };
        vec2 dist_to_line = vec2_sub(d, projected_point);
        float l = vec2_length(dist_to_line);
        d.x /= r;
        d.y /= r;
        float theta = fmod(180.0 * atan2(d.y, d.x) / M_PI + theta0, 360.0);
        float gradient = fmax(1.0 - theta / 90.0, 0.0);
        return SMOOTH(l, 1.0) + 0.5 * gradient;
    }
    else
        return 0.0;
}

float circle(vec2 uv, vec2 center, float radius, float width) {
    float r = vec2_length(vec2_sub(uv, center));
    return SMOOTH(r - width / 2.0, radius) - SMOOTH(r + width / 2.0, radius);
}

float circle2(vec2 uv, vec2 center, float radius, float width, float opening) {
    vec2 d = vec2_sub(uv, center);
    float r = vec2_length(d);
    d.x /= r;
    d.y /= r;
    if (fabs(d.y) > opening)
        return SMOOTH(r - width / 2.0, radius) - SMOOTH(r + width / 2.0, radius);
    else
        return 0.0;
}

float circle3(vec2 uv, vec2 center, float radius, float width) {
    vec2 d = vec2_sub(uv, center);
    float r = vec2_length(d);
    d.x /= r;
    d.y /= r;
    float theta = 180.0 * (atan2(d.y, d.x) / M_PI);
    return smoothstep(2.0, 2.1, fabs(fmod(theta + 2.0, 45.0) - 2.0)) *
        mix(0.5, 1.0, step(45.0, fabs(fmod(theta, 180.0) - 90.0))) *
        (SMOOTH(r - width / 2.0, radius) - SMOOTH(r + width / 2.0, radius));
}

float triangles(vec2 uv, vec2 center, float radius) {
    vec2 d = vec2_sub(uv, center);
    return RS(-8.0, 0.0, d.x - radius) * (1.0 - smoothstep(7.0 + d.x - radius, 9.0 + d.x - radius, fabs(d.y))) +
        RS(0.0, 8.0, d.x + radius) * (1.0 - smoothstep(7.0 - d.x - radius, 9.0 - d.x - radius, fabs(d.y))) +
        RS(-8.0, 0.0, d.y - radius) * (1.0 - smoothstep(7.0 + d.y - radius, 9.0 + d.y - radius, fabs(d.x))) +
        RS(0.0, 8.0, d.y + radius) * (1.0 - smoothstep(7.0 - d.y - radius, 9.0 - d.y - radius, fabs(d.x)));
}

float _cross(vec2 uv, vec2 center, float radius) {
    vec2 d = vec2_sub(uv, center);
    int x = (int)d.x;
    int y = (int)d.y;
    float r = vec2_length(d);
    if ((r < radius) && ((x == y) || (x == -y)))
        return 1.0;
    else
        return 0.0;
}

float dots(vec2 uv, vec2 center, float radius) {
    vec2 d = vec2_sub(uv, center);
    float r = vec2_length(d);
    if (r <= 2.5)
        return 1.0;
    if ((r <= radius) && ((fabs(d.y + 0.5) <= 1.0) && (fmod(d.x + 1.0, 50.0) < 2.0)))
        return 1.0;
    else if ((fabs(d.y + 0.5) <= 1.0) && (r >= 50.0) && (r < 115.0))
        return 0.5;
    else
        return 0.0;
}

float bip1(vec2 uv, vec2 center) {
    return SMOOTH(vec2_length(vec2_sub(uv, center)), 3.0);
}

float bip2(vec2 uv, vec2 center) {
    float r = vec2_length(vec2_sub(uv, center));
    float R = 8.0 + fmod(87.0 * iTime, 80.0);
    return (0.5 - 0.5 * cos(30.0 * iTime)) * SMOOTH(r, 5.0) +
        SMOOTH(6.0, r) - SMOOTH(8.0, r) +
        smoothstep(fmax(8.0, R - 20.0), R, r) - SMOOTH(R, r);
}

vec2 MOV(float a, float b, float c, float d, float t) {
    vec2 result;
    result.x = a * cos(t) + b * cos(0.1 * t);
    result.y = c * sin(t) + d * cos(0.1 * t);
    return result;
}

vec2 vec2_scale(vec2 v, float scalar) {
    vec2 result;
    result.x = v.x * scalar;
    result.y = v.y * scalar;
    return result;
}

vec2 vec2_add(vec2 v1, vec2 v2) {
    vec2 result;
    result.x = v1.x + v2.x;
    result.y = v1.y + v2.y;
    return result;
}


void mainImage(vec3* finalColor, vec2 fragCoord) {
    vec2 uv = fragCoord;
    vec2 c = { iResolution.x / 2.0, iResolution.y / 2.0 };
    vec3 zero3 = {0};
    *finalColor = zero3;

    vec3 blue1 = { 0.74, 0.95, 1.00 };
    vec3 blue2 = { 0.87, 0.98, 1.00 };
    vec3 blue3 = { 0.35, 0.76, 0.83 };
    vec3 blue4 = { 0.953, 0.969, 0.89 };
    vec3 red = { 1.00, 0.38, 0.227 };

    *finalColor = vec3_add(*finalColor, vec3_scale(_cross(uv, c, 240.0), 0.3));

    *finalColor = vec3_add(*finalColor, vec3_scale2(circle(uv, c, 100.0, 1.0), blue1));
    *finalColor = vec3_add(*finalColor, vec3_scale2(circle(uv, c, 165.0, 1.0), blue1));

    *finalColor = vec3_add(*finalColor, vec3_scale2(circle(uv, c, 240.0, 2.0), blue4));

    *finalColor = vec3_add(*finalColor, vec3_scale2(circle3(uv, c, 313.0, 4.0), blue1));

    *finalColor = vec3_add(*finalColor, vec3_scale2(triangles(uv, c, 315.0 + 30.0 * sin(iTime)), blue2));

    *finalColor = vec3_add(*finalColor, vec3_scale2(movingLine(uv, c, 240.0), blue3));

    *finalColor = vec3_add(*finalColor, vec3_scale2(circle(uv, c, 10.0, 1.0), blue3));

    *finalColor = vec3_add(*finalColor, vec3_scale2(circle2(uv, c, 262.0, 1.0, 0.5 + 0.2 * cos(iTime)), blue3));

    if (vec2_length(vec2_sub(uv, c)) < 240.0) {
        vec2 p = vec2_scale(MOV(1.3, 1.0, 1.0, 1.4, 3.0 + 0.1 * iTime), 130.0);
        *finalColor = vec3_add(*finalColor, vec3_scale(bip1(uv, vec2_add(c, p)), 1.0));

        p = vec2_scale(MOV(0.9, -1.1, 1.7, 0.8, -2.0 + sin(0.1 * iTime) + 0.15 * iTime), 130.0);
        *finalColor = vec3_add(*finalColor, vec3_scale(bip1(uv, vec2_add(c, p)), 1.0));

        p = vec2_scale(MOV(1.54, 1.7, 1.37, 1.8, sin(0.1 * iTime + 7.0) + 0.2 * iTime), 50.0);
        *finalColor = vec3_add(*finalColor, vec3_scale2(bip2(uv, vec2_add(c, p)), red));
    }
}


#endif
