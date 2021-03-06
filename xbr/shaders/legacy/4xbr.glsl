// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord2;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec2 _texCoord2;
    vec4 _t1;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    vec2 _texCoord;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT._t1.xy = vec2(0.00000000E+00, -_ps.y);
    _OUT._t1.zw = vec2(-_ps.x, 0.00000000E+00);
    _ret_0._position1 = _r0006;
    _ret_0._texCoord2 = _texCoord;
    _ret_0._t1 = _OUT._t1;
    gl_Position = _r0006;
    TEX0.xy = _texCoord;
    TEX1 = _OUT._t1;
    return;
    TEX0.xy = _ret_0._texCoord2;
    TEX1 = _ret_0._t1;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _texCoord;
    vec4 _t1;
};
vec4 _ret_0;
vec3 _TMP16;
vec3 _TMP24;
vec3 _TMP28;
vec3 _TMP29;
vec3 _TMP30;
vec3 _TMP25;
vec3 _TMP26;
vec3 _TMP27;
vec3 _TMP17;
vec3 _TMP21;
vec3 _TMP22;
vec3 _TMP23;
vec3 _TMP18;
vec3 _TMP19;
vec3 _TMP20;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
float _TMP7;
float _TMP6;
float _TMP5;
float _TMP4;
float _TMP3;
float _TMP2;
float _TMP1;
float _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0036;
vec2 _c0054;
vec2 _c0056;
vec2 _c0058;
vec2 _c0062;
vec2 _c0064;
vec2 _c0066;
vec2 _c0068;
float _TMP69;
float _TMP73;
float _TMP77;
float _TMP81;
float _TMP85;
float _TMP89;
float _TMP93;
float _TMP97;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _fp;
    vec2 _g1;
    vec2 _g2;
    vec3 _E11;
    vec3 _E15;
    _x0036 = TEX0.xy*TextureSize;
    _fp = fract(_x0036);
    _TMP0 = float((_fp.x >= 5.00000000E-01));
    _TMP1 = float((_fp.y >= 5.00000000E-01));
    _TMP2 = float((_fp.x >= 5.00000000E-01));
    _TMP3 = float((_fp.y >= 5.00000000E-01));
    _g1 = TEX1.xy*((_TMP0 + _TMP1) - 1.00000000E+00) + TEX1.zw*(_TMP2 - _TMP3);
    _TMP4 = float((_fp.y >= 5.00000000E-01));
    _TMP5 = float((_fp.x >= 5.00000000E-01));
    _TMP6 = float((_fp.x >= 5.00000000E-01));
    _TMP7 = float((_fp.y >= 5.00000000E-01));
    _g2 = TEX1.xy*(_TMP4 - _TMP5) + TEX1.zw*((_TMP6 + _TMP7) - 1.00000000E+00);
    _c0054 = TEX0.xy + _g1;
    _TMP8 = COMPAT_TEXTURE(Texture, _c0054);
    _c0056 = (TEX0.xy + _g1) - _g2;
    _TMP9 = COMPAT_TEXTURE(Texture, _c0056);
    _c0058 = TEX0.xy + _g2;
    _TMP10 = COMPAT_TEXTURE(Texture, _c0058);
    _TMP11 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _c0062 = TEX0.xy - _g2;
    _TMP12 = COMPAT_TEXTURE(Texture, _c0062);
    _c0064 = (TEX0.xy - _g1) + _g2;
    _TMP13 = COMPAT_TEXTURE(Texture, _c0064);
    _c0066 = TEX0.xy - _g1;
    _TMP14 = COMPAT_TEXTURE(Texture, _c0066);
    _c0068 = (TEX0.xy - _g1) - _g2;
    _TMP15 = COMPAT_TEXTURE(Texture, _c0068);
    _E11 = _TMP11.xyz;
    _E15 = _TMP11.xyz;
    _TMP69 = dot(_TMP8.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP73 = dot(_TMP9.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP77 = dot(_TMP10.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP81 = dot(_TMP11.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP85 = dot(_TMP12.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP89 = dot(_TMP13.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP93 = dot(_TMP14.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP97 = dot(_TMP15.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    if (_TMP93 == _TMP85 && _TMP93 != _TMP81 && (_TMP81 == _TMP89 && (_TMP93 == _TMP97 || _TMP81 == _TMP77) || _TMP81 == _TMP73 && (_TMP93 == _TMP97 || _TMP81 == _TMP69))) { 
        _E11 = _TMP11.xyz*5.00000000E-01 + _TMP12.xyz*5.00000000E-01;
        _E15 = _TMP12.xyz;
    } 
    if (_fp.x < 5.00000000E-01) { 
        if (_fp.x < 2.50000000E-01) { 
            if (_fp.y < 2.50000000E-01) { 
                _TMP18 = _E15;
            } else {
                if (_fp.y < 5.00000000E-01) { 
                    _TMP19 = _E11;
                } else {
                    if (_fp.y < 7.50000000E-01) { 
                        _TMP20 = _E11;
                    } else {
                        _TMP20 = _E15;
                    } 
                    _TMP19 = _TMP20;
                } 
                _TMP18 = _TMP19;
            } 
            _TMP17 = _TMP18;
        } else {
            if (_fp.y < 2.50000000E-01) { 
                _TMP21 = _E11;
            } else {
                if (_fp.y < 5.00000000E-01) { 
                    _TMP22 = _TMP11.xyz;
                } else {
                    if (_fp.y < 7.50000000E-01) { 
                        _TMP23 = _TMP11.xyz;
                    } else {
                        _TMP23 = _E11;
                    } 
                    _TMP22 = _TMP23;
                } 
                _TMP21 = _TMP22;
            } 
            _TMP17 = _TMP21;
        } 
        _TMP16 = _TMP17;
    } else {
        if (_fp.x < 7.50000000E-01) { 
            if (_fp.y < 2.50000000E-01) { 
                _TMP25 = _E11;
            } else {
                if (_fp.y < 5.00000000E-01) { 
                    _TMP26 = _TMP11.xyz;
                } else {
                    if (_fp.y < 7.50000000E-01) { 
                        _TMP27 = _TMP11.xyz;
                    } else {
                        _TMP27 = _E11;
                    } 
                    _TMP26 = _TMP27;
                } 
                _TMP25 = _TMP26;
            } 
            _TMP24 = _TMP25;
        } else {
            if (_fp.y < 2.50000000E-01) { 
                _TMP28 = _E15;
            } else {
                if (_fp.y < 5.00000000E-01) { 
                    _TMP29 = _E11;
                } else {
                    if (_fp.y < 7.50000000E-01) { 
                        _TMP30 = _E11;
                    } else {
                        _TMP30 = _E15;
                    } 
                    _TMP29 = _TMP30;
                } 
                _TMP28 = _TMP29;
            } 
            _TMP24 = _TMP28;
        } 
        _TMP16 = _TMP24;
    } 
    _ret_0 = vec4(_TMP16.x, _TMP16.y, _TMP16.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
