#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White transmit 1.0}
camera {orthographic
  right -32.77*x up 16.67*y
  direction 1.00*z
  location <0,0,50.00> look_at <0,0,0>}


light_source {<  2.00,   3.00,  40.00> color White
  area_light <0.70, 0, 0>, <0, 0.70, 0>, 3, 3
  adaptive 1 jitter}
// no fog
#declare simple = finish {phong 0.7}
#declare pale = finish {ambient 0.5 diffuse 0.85 roughness 0.001 specular 0.200 }
#declare intermediate = finish {ambient 0.3 diffuse 0.6 specular 0.1 roughness 0.04}
#declare vmd = finish {ambient 0.0 diffuse 0.65 phong 0.1 phong_size 40.0 specular 0.5 }
#declare jmol = finish {ambient 0.2 diffuse 0.6 specular 1 roughness 0.001 metallic}
#declare ase2 = finish {ambient 0.05 brilliance 3 diffuse 0.6 metallic specular 0.7 roughness 0.04 reflection 0.15}
#declare ase3 = finish {ambient 0.15 brilliance 2 diffuse 0.6 metallic specular 1.0 roughness 0.001 reflection 0.0}
#declare glass = finish {ambient 0.05 diffuse 0.3 specular 1.0 roughness 0.001}
#declare glass2 = finish {ambient 0.01 diffuse 0.3 specular 1.0 reflection 0.25 roughness 0.001}
#declare Rcell = 0.070;
#declare Rbond = 0.100;

#macro atom(LOC, R, COL, TRANS, FIN)
  sphere{LOC, R texture{pigment{color COL transmit TRANS} finish{FIN}}}
#end
#macro constrain(LOC, R, COL, TRANS FIN)
union{torus{R, Rcell rotate 45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
     torus{R, Rcell rotate -45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
     translate LOC}
#end

cylinder {< -0.75,  -5.39,  -4.88>, <  8.65,  -3.88,  -8.25>, Rcell pigment {Black}}
cylinder {< -8.61,  -4.13, -11.09>, <  0.79,  -2.61, -14.46>, Rcell pigment {Black}}
cylinder {< -9.67,  13.36,  -6.19>, < -0.27,  14.87,  -9.57>, Rcell pigment {Black}}
cylinder {< -1.81,  12.09,   0.02>, <  7.59,  13.61,  -3.35>, Rcell pigment {Black}}
cylinder {< -0.75,  -5.39,  -4.88>, < -8.61,  -4.13, -11.09>, Rcell pigment {Black}}
cylinder {<  8.65,  -3.88,  -8.25>, <  0.79,  -2.61, -14.46>, Rcell pigment {Black}}
cylinder {<  7.59,  13.61,  -3.35>, < -0.27,  14.87,  -9.57>, Rcell pigment {Black}}
cylinder {< -1.81,  12.09,   0.02>, < -9.67,  13.36,  -6.19>, Rcell pigment {Black}}
cylinder {< -0.75,  -5.39,  -4.88>, < -1.81,  12.09,   0.02>, Rcell pigment {Black}}
cylinder {<  8.65,  -3.88,  -8.25>, <  7.59,  13.61,  -3.35>, Rcell pigment {Black}}
cylinder {<  0.79,  -2.61, -14.46>, < -0.27,  14.87,  -9.57>, Rcell pigment {Black}}
cylinder {< -8.61,  -4.13, -11.09>, < -9.67,  13.36,  -6.19>, Rcell pigment {Black}}
atom(< -0.75,  -5.39,  -4.88>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #0
atom(<  1.60,  -5.01,  -5.72>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #1
atom(<  3.95,  -4.63,  -6.56>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #2
atom(<  6.30,  -4.25,  -7.41>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #3
atom(< -2.71,  -5.07,  -6.43>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #4
atom(< -0.36,  -4.70,  -7.27>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #5
atom(<  1.99,  -4.32,  -8.12>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #6
atom(<  4.33,  -3.94,  -8.96>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #7
atom(< -4.68,  -4.76,  -7.98>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #8
atom(< -2.33,  -4.38,  -8.83>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #9
atom(<  0.02,  -4.00,  -9.67>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #10
atom(<  2.37,  -3.62, -10.51>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #11
atom(< -6.65,  -4.44,  -9.54>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #12
atom(< -4.30,  -4.06, -10.38>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #13
atom(< -1.95,  -3.68, -11.22>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #14
atom(<  0.40,  -3.31, -12.07>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #15
atom(< -1.40,  -3.10,  -5.67>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #16
atom(<  0.95,  -2.70,  -6.51>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #17
atom(<  3.30,  -2.32,  -7.35>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #18
atom(<  5.65,  -1.97,  -8.19>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #19
atom(< -3.36,  -2.77,  -7.21>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #20
atom(< -1.01,  -2.39,  -8.06>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #21
atom(<  1.34,  -1.99,  -8.89>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #22
atom(<  3.68,  -1.64,  -9.74>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #23
atom(< -5.33,  -2.46,  -8.76>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #24
atom(< -2.98,  -2.08,  -9.61>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #25
atom(< -0.63,  -1.70, -10.45>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #26
atom(<  1.73,  -1.32, -11.30>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #27
atom(< -7.30,  -2.15, -10.32>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #28
atom(< -4.95,  -1.77, -11.18>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #29
atom(< -2.59,  -1.40, -12.01>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #30
atom(< -0.24,  -1.01, -12.85>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #31
atom(< -5.98,  -0.17,  -9.56>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #32
atom(<  0.68,   0.30,  -9.69>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #33
atom(<  2.25,  -0.68,  -5.75>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #34
atom(< -0.08,  -1.11,  -4.89>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #35
atom(<  4.62,  -0.36,  -6.58>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #36
atom(< -4.01,  -0.48,  -7.99>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #37
atom(< -3.63,   0.21, -10.40>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #38
atom(<  5.00,   0.34,  -8.96>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #39
atom(<  6.97,   0.02,  -7.42>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #40
atom(<  1.06,   1.00, -12.07>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #41
atom(< -1.27,   0.62, -11.23>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #42
atom(< -2.04,  -0.79,  -6.44>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #43
atom(<  3.03,   0.67, -10.50>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #44
atom(< -1.64,  -0.08,  -8.82>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #45
atom(<  0.32,  -0.34,  -7.27>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #46
atom(<  2.63,   0.03,  -8.10>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #47
atom(< -6.98,   1.43,  -7.96>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #48
atom(<  1.24,   0.85,  -4.08>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #49
atom(< -4.66,   1.81,  -8.77>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #50
atom(<  3.61,   1.23,  -4.94>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #51
atom(< -2.35,   2.18,  -9.63>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #52
atom(<  5.92,   1.63,  -5.82>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #53
atom(< -3.09,   0.82,  -4.83>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #54
atom(< -1.12,   0.50,  -3.30>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #55
atom(<  1.63,   1.89,  -6.32>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #56
atom(<  3.99,   1.95,  -7.34>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #57
atom(< -5.03,   1.12,  -6.37>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #58
atom(< -0.75,   1.19,  -5.64>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #59
atom(< -2.71,   1.50,  -7.21>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #60
atom(<  0.00,   2.70, -10.50>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #61
atom(<  2.04,   2.33,  -8.92>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #62
atom(< -0.40,   1.94,  -8.05>, 0.72, rgb <0.31, 0.82, 0.31>, 0.0, ase2) // #63
atom(< -0.36,   4.01,  -7.47>, 0.44, rgb <0.56, 0.56, 0.56>, 0.0, ase2) // #64
atom(<  2.37,   4.09,  -5.58>, 0.44, rgb <0.56, 0.56, 0.56>, 0.0, ase2) // #65
atom(<  1.10,   4.09,  -3.93>, 0.18, rgb <1.00, 1.00, 1.00>, 0.0, ase2) // #66
atom(<  0.66,   4.19,  -6.01>, 0.18, rgb <1.00, 1.00, 1.00>, 0.0, ase2) // #67
atom(<  2.61,   4.96,  -6.51>, 0.18, rgb <1.00, 1.00, 1.00>, 0.0, ase2) // #68
atom(<  3.18,   4.17,  -4.85>, 0.18, rgb <1.00, 1.00, 1.00>, 0.0, ase2) // #69
atom(<  0.04,   4.19,  -4.84>, 0.18, rgb <1.00, 1.00, 1.00>, 0.0, ase2) // #70
atom(<  2.80,   3.36,  -6.24>, 0.38, rgb <1.00, 0.05, 0.05>, 0.0, ase2) // #71
cylinder {< -0.75,  -5.39,  -4.88>, <  0.43,  -5.20,  -5.30>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.60,  -5.01,  -5.72>, <  0.43,  -5.20,  -5.30>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,  -5.39,  -4.88>, < -0.56,  -5.04,  -6.07>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.36,  -4.70,  -7.27>, < -0.56,  -5.04,  -6.07>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,  -5.39,  -4.88>, < -1.73,  -5.23,  -5.65>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,  -5.07,  -6.43>, < -1.73,  -5.23,  -5.65>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,  -5.39,  -4.88>, < -1.07,  -4.25,  -5.27>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.40,  -3.10,  -5.67>, < -1.07,  -4.25,  -5.27>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.60,  -5.01,  -5.72>, <  0.62,  -4.85,  -6.50>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.36,  -4.70,  -7.27>, <  0.62,  -4.85,  -6.50>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.60,  -5.01,  -5.72>, <  1.28,  -3.86,  -6.11>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.95,  -2.70,  -6.51>, <  1.28,  -3.86,  -6.11>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.60,  -5.01,  -5.72>, <  2.78,  -4.82,  -6.14>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.95,  -4.63,  -6.56>, <  2.78,  -4.82,  -6.14>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.60,  -5.01,  -5.72>, <  1.79,  -4.66,  -6.92>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.99,  -4.32,  -8.12>, <  1.79,  -4.66,  -6.92>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.95,  -4.63,  -6.56>, <  3.62,  -3.48,  -6.96>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.30,  -2.32,  -7.35>, <  3.62,  -3.48,  -6.96>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.95,  -4.63,  -6.56>, <  5.13,  -4.44,  -6.99>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.30,  -4.25,  -7.41>, <  5.13,  -4.44,  -6.99>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.95,  -4.63,  -6.56>, <  2.97,  -4.48,  -7.34>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.99,  -4.32,  -8.12>, <  2.97,  -4.48,  -7.34>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.95,  -4.63,  -6.56>, <  4.14,  -4.29,  -7.76>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.33,  -3.94,  -8.96>, <  4.14,  -4.29,  -7.76>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.30,  -4.25,  -7.41>, <  5.97,  -3.11,  -7.80>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.65,  -1.97,  -8.19>, <  5.97,  -3.11,  -7.80>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.30,  -4.25,  -7.41>, <  5.32,  -4.10,  -8.18>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.33,  -3.94,  -8.96>, <  5.32,  -4.10,  -8.18>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.30,  -4.25,  -7.41>, <  7.48,  -4.07,  -7.83>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,  -5.39,  -4.88>, < -1.92,  -5.58,  -4.45>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.30,  -4.25,  -7.41>, <  6.49,  -3.91,  -8.61>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,  -5.07,  -6.43>, < -2.91,  -5.42,  -5.23>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,  -5.07,  -6.43>, < -1.54,  -4.89,  -6.85>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.36,  -4.70,  -7.27>, < -1.54,  -4.89,  -6.85>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,  -5.07,  -6.43>, < -3.04,  -3.92,  -6.82>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.36,  -2.77,  -7.21>, < -3.04,  -3.92,  -6.82>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,  -5.07,  -6.43>, < -2.06,  -4.09,  -6.05>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.40,  -3.10,  -5.67>, < -2.06,  -4.09,  -6.05>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,  -5.07,  -6.43>, < -2.52,  -4.73,  -7.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.33,  -4.38,  -8.83>, < -2.52,  -4.73,  -7.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,  -5.07,  -6.43>, < -3.70,  -4.92,  -7.21>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.68,  -4.76,  -7.98>, < -3.70,  -4.92,  -7.21>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.36,  -4.70,  -7.27>, < -0.68,  -3.54,  -7.67>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.01,  -2.39,  -8.06>, < -0.68,  -3.54,  -7.67>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.36,  -4.70,  -7.27>, < -0.88,  -3.90,  -6.47>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.40,  -3.10,  -5.67>, < -0.88,  -3.90,  -6.47>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.36,  -4.70,  -7.27>, < -1.35,  -4.54,  -8.05>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.33,  -4.38,  -8.83>, < -1.35,  -4.54,  -8.05>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.36,  -4.70,  -7.27>, < -0.17,  -4.35,  -8.47>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.02,  -4.00,  -9.67>, < -0.17,  -4.35,  -8.47>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.36,  -4.70,  -7.27>, <  0.29,  -3.70,  -6.89>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.95,  -2.70,  -6.51>, <  0.29,  -3.70,  -6.89>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.36,  -4.70,  -7.27>, <  0.81,  -4.51,  -7.70>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.99,  -4.32,  -8.12>, <  0.81,  -4.51,  -7.70>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.99,  -4.32,  -8.12>, <  1.00,  -4.16,  -8.89>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.02,  -4.00,  -9.67>, <  1.00,  -4.16,  -8.89>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.99,  -4.32,  -8.12>, <  1.47,  -3.51,  -7.31>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.95,  -2.70,  -6.51>, <  1.47,  -3.51,  -7.31>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.99,  -4.32,  -8.12>, <  2.64,  -3.32,  -7.73>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.30,  -2.32,  -7.35>, <  2.64,  -3.32,  -7.73>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.99,  -4.32,  -8.12>, <  3.16,  -4.13,  -8.54>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.33,  -3.94,  -8.96>, <  3.16,  -4.13,  -8.54>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.99,  -4.32,  -8.12>, <  1.66,  -3.15,  -8.50>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.34,  -1.99,  -8.89>, <  1.66,  -3.15,  -8.50>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.99,  -4.32,  -8.12>, <  2.18,  -3.97,  -9.32>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,  -3.62, -10.51>, <  2.18,  -3.97,  -9.32>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.33,  -3.94,  -8.96>, <  3.82,  -3.13,  -8.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.30,  -2.32,  -7.35>, <  3.82,  -3.13,  -8.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.33,  -3.94,  -8.96>, <  4.99,  -2.95,  -8.58>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.65,  -1.97,  -8.19>, <  4.99,  -2.95,  -8.58>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.33,  -3.94,  -8.96>, <  3.35,  -3.78,  -9.74>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,  -3.62, -10.51>, <  3.35,  -3.78,  -9.74>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.33,  -3.94,  -8.96>, <  4.01,  -2.79,  -9.35>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.68,  -1.64,  -9.74>, <  4.01,  -2.79,  -9.35>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.33,  -3.94,  -8.96>, <  5.51,  -3.75,  -9.38>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,  -5.07,  -6.43>, < -3.89,  -5.26,  -6.01>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.33,  -3.94,  -8.96>, <  4.53,  -3.59, -10.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.68,  -4.76,  -7.98>, < -4.87,  -5.11,  -6.78>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.68,  -4.76,  -7.98>, < -4.02,  -3.77,  -7.60>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.36,  -2.77,  -7.21>, < -4.02,  -3.77,  -7.60>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.68,  -4.76,  -7.98>, < -3.50,  -4.57,  -8.40>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.33,  -4.38,  -8.83>, < -3.50,  -4.57,  -8.40>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.68,  -4.76,  -7.98>, < -5.01,  -3.61,  -8.37>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.33,  -2.46,  -8.76>, < -5.01,  -3.61,  -8.37>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.68,  -4.76,  -7.98>, < -5.66,  -4.60,  -8.76>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.65,  -4.44,  -9.54>, < -5.66,  -4.60,  -8.76>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.68,  -4.76,  -7.98>, < -4.49,  -4.41,  -9.18>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.30,  -4.06, -10.38>, < -4.49,  -4.41,  -9.18>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.33,  -4.38,  -8.83>, < -1.67,  -3.39,  -8.44>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.01,  -2.39,  -8.06>, < -1.67,  -3.39,  -8.44>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.33,  -4.38,  -8.83>, < -2.85,  -3.58,  -8.02>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.36,  -2.77,  -7.21>, < -2.85,  -3.58,  -8.02>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.33,  -4.38,  -8.83>, < -1.16,  -4.19,  -9.25>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.02,  -4.00,  -9.67>, < -1.16,  -4.19,  -9.25>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.33,  -4.38,  -8.83>, < -2.65,  -3.23,  -9.22>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.98,  -2.08,  -9.61>, < -2.65,  -3.23,  -9.22>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.33,  -4.38,  -8.83>, < -2.14,  -4.03, -10.03>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.95,  -3.68, -11.22>, < -2.14,  -4.03, -10.03>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.33,  -4.38,  -8.83>, < -3.31,  -4.22,  -9.60>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.30,  -4.06, -10.38>, < -3.31,  -4.22,  -9.60>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.02,  -4.00,  -9.67>, < -0.49,  -3.20,  -8.86>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.01,  -2.39,  -8.06>, < -0.49,  -3.20,  -8.86>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.02,  -4.00,  -9.67>, < -0.96,  -3.84, -10.45>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.95,  -3.68, -11.22>, < -0.96,  -3.84, -10.45>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.02,  -4.00,  -9.67>, < -0.31,  -2.85, -10.06>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.63,  -1.70, -10.45>, < -0.31,  -2.85, -10.06>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.02,  -4.00,  -9.67>, <  0.68,  -3.00,  -9.28>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.34,  -1.99,  -8.89>, <  0.68,  -3.00,  -9.28>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.02,  -4.00,  -9.67>, <  1.19,  -3.81, -10.09>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,  -3.62, -10.51>, <  1.19,  -3.81, -10.09>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.02,  -4.00,  -9.67>, <  0.21,  -3.65, -10.87>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.40,  -3.31, -12.07>, <  0.21,  -3.65, -10.87>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,  -3.62, -10.51>, <  1.85,  -2.81,  -9.70>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.34,  -1.99,  -8.89>, <  1.85,  -2.81,  -9.70>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,  -3.62, -10.51>, <  3.02,  -2.63, -10.13>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.68,  -1.64,  -9.74>, <  3.02,  -2.63, -10.13>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,  -3.62, -10.51>, <  1.39,  -3.46, -11.29>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.40,  -3.31, -12.07>, <  1.39,  -3.46, -11.29>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,  -3.62, -10.51>, <  2.05,  -2.47, -10.91>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.73,  -1.32, -11.30>, <  2.05,  -2.47, -10.91>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,  -3.62, -10.51>, <  3.54,  -3.43, -10.94>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.68,  -4.76,  -7.98>, < -5.85,  -4.95,  -7.56>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,  -3.62, -10.51>, <  2.56,  -3.28, -11.71>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.65,  -4.44,  -9.54>, < -6.84,  -4.79,  -8.34>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.65,  -4.44,  -9.54>, < -5.99,  -3.45,  -9.15>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.33,  -2.46,  -8.76>, < -5.99,  -3.45,  -9.15>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.65,  -4.44,  -9.54>, < -5.47,  -4.25,  -9.96>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.30,  -4.06, -10.38>, < -5.47,  -4.25,  -9.96>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.65,  -4.44,  -9.54>, < -6.97,  -3.30,  -9.93>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -7.30,  -2.15, -10.32>, < -6.97,  -3.30,  -9.93>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.65,  -4.44,  -9.54>, < -6.45,  -4.09, -10.73>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.60,  -5.01,  -5.72>, <  1.41,  -5.36,  -4.52>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.65,  -4.44,  -9.54>, < -7.63,  -4.28, -10.31>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,  -5.39,  -4.88>, <  0.23,  -5.55,  -4.10>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.30,  -4.06, -10.38>, < -3.64,  -3.07,  -9.99>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.98,  -2.08,  -9.61>, < -3.64,  -3.07,  -9.99>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.30,  -4.06, -10.38>, < -4.81,  -3.26,  -9.57>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.33,  -2.46,  -8.76>, < -4.81,  -3.26,  -9.57>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.30,  -4.06, -10.38>, < -3.12,  -3.87, -10.80>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.95,  -3.68, -11.22>, < -3.12,  -3.87, -10.80>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.30,  -4.06, -10.38>, < -4.62,  -2.92, -10.78>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.95,  -1.77, -11.18>, < -4.62,  -2.92, -10.78>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.30,  -4.06, -10.38>, < -5.28,  -3.91, -11.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.60,  -5.01,  -5.72>, <  2.58,  -5.17,  -4.94>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.30,  -4.06, -10.38>, < -4.10,  -3.72, -11.58>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.95,  -4.63,  -6.56>, <  3.76,  -4.98,  -5.37>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.95,  -3.68, -11.22>, < -2.46,  -2.88, -10.42>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.98,  -2.08,  -9.61>, < -2.46,  -2.88, -10.42>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.95,  -3.68, -11.22>, < -2.27,  -2.54, -11.62>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.59,  -1.40, -12.01>, < -2.27,  -2.54, -11.62>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.95,  -3.68, -11.22>, < -1.29,  -2.69, -10.84>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.63,  -1.70, -10.45>, < -1.29,  -2.69, -10.84>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.95,  -3.68, -11.22>, < -0.77,  -3.50, -11.65>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.40,  -3.31, -12.07>, < -0.77,  -3.50, -11.65>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.95,  -3.68, -11.22>, < -1.75,  -3.34, -12.42>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.30,  -4.25,  -7.41>, <  6.11,  -4.60,  -6.21>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.95,  -3.68, -11.22>, < -2.93,  -3.53, -12.00>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.95,  -4.63,  -6.56>, <  4.93,  -4.79,  -5.79>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.40,  -3.31, -12.07>, < -0.11,  -2.50, -11.26>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.63,  -1.70, -10.45>, < -0.11,  -2.50, -11.26>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.40,  -3.31, -12.07>, <  0.08,  -2.16, -12.46>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.24,  -1.01, -12.85>, <  0.08,  -2.16, -12.46>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.40,  -3.31, -12.07>, <  1.06,  -2.31, -11.68>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.73,  -1.32, -11.30>, <  1.06,  -2.31, -11.68>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.40,  -3.31, -12.07>, < -0.58,  -3.15, -12.84>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.30,  -4.25,  -7.41>, <  7.28,  -4.41,  -6.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.40,  -3.31, -12.07>, <  1.58,  -3.12, -12.49>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.65,  -4.44,  -9.54>, < -7.82,  -4.63,  -9.11>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.40,  -3.31, -12.07>, <  0.60,  -2.96, -13.27>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,  -5.39,  -4.88>, < -0.94,  -5.74,  -3.68>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.40,  -3.10,  -5.67>, < -1.20,  -2.75,  -6.86>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.01,  -2.39,  -8.06>, < -1.20,  -2.75,  -6.86>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.40,  -3.10,  -5.67>, < -2.38,  -2.94,  -6.44>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.36,  -2.77,  -7.21>, < -2.38,  -2.94,  -6.44>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.40,  -3.10,  -5.67>, < -0.74,  -2.11,  -5.28>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.08,  -1.11,  -4.89>, < -0.74,  -2.11,  -5.28>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.40,  -3.10,  -5.67>, < -1.72,  -1.94,  -6.05>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.04,  -0.79,  -6.44>, < -1.72,  -1.94,  -6.05>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.40,  -3.10,  -5.67>, < -0.22,  -2.90,  -6.09>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.95,  -2.70,  -6.51>, < -0.22,  -2.90,  -6.09>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.95,  -2.70,  -6.51>, < -0.03,  -2.55,  -7.28>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.01,  -2.39,  -8.06>, < -0.03,  -2.55,  -7.28>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.95,  -2.70,  -6.51>, <  0.44,  -1.91,  -5.70>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.08,  -1.11,  -4.89>, <  0.44,  -1.91,  -5.70>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.95,  -2.70,  -6.51>, <  2.12,  -2.51,  -6.93>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.30,  -2.32,  -7.35>, <  2.12,  -2.51,  -6.93>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.95,  -2.70,  -6.51>, <  1.14,  -2.35,  -7.70>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.34,  -1.99,  -8.89>, <  1.14,  -2.35,  -7.70>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.95,  -2.70,  -6.51>, <  1.60,  -1.69,  -6.13>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.25,  -0.68,  -5.75>, <  1.60,  -1.69,  -6.13>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.95,  -2.70,  -6.51>, <  0.64,  -1.52,  -6.89>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.32,  -0.34,  -7.27>, <  0.64,  -1.52,  -6.89>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.30,  -2.32,  -7.35>, <  4.47,  -2.14,  -7.77>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.65,  -1.97,  -8.19>, <  4.47,  -2.14,  -7.77>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.30,  -2.32,  -7.35>, <  3.96,  -1.34,  -6.96>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.62,  -0.36,  -6.58>, <  3.96,  -1.34,  -6.96>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.30,  -2.32,  -7.35>, <  2.32,  -2.16,  -8.12>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.34,  -1.99,  -8.89>, <  2.32,  -2.16,  -8.12>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.30,  -2.32,  -7.35>, <  3.49,  -1.98,  -8.54>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.68,  -1.64,  -9.74>, <  3.49,  -1.98,  -8.54>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.30,  -2.32,  -7.35>, <  2.78,  -1.50,  -6.55>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.25,  -0.68,  -5.75>, <  2.78,  -1.50,  -6.55>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.30,  -2.32,  -7.35>, <  2.96,  -1.14,  -7.72>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.63,   0.03,  -8.10>, <  2.96,  -1.14,  -7.72>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.65,  -1.97,  -8.19>, <  6.31,  -0.97,  -7.81>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.97,   0.02,  -7.42>, <  6.31,  -0.97,  -7.81>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.65,  -1.97,  -8.19>, <  5.13,  -1.16,  -7.39>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.62,  -0.36,  -6.58>, <  5.13,  -1.16,  -7.39>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.65,  -1.97,  -8.19>, <  5.32,  -0.81,  -8.58>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.00,   0.34,  -8.96>, <  5.32,  -0.81,  -8.58>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.65,  -1.97,  -8.19>, <  4.66,  -1.80,  -8.97>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.68,  -1.64,  -9.74>, <  4.66,  -1.80,  -8.97>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.65,  -1.97,  -8.19>, <  6.17,  -2.76,  -9.00>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,  -5.07,  -6.43>, < -3.23,  -4.28,  -5.62>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.65,  -1.97,  -8.19>, <  5.84,  -1.61,  -9.39>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.36,  -2.77,  -7.21>, < -3.56,  -3.13,  -6.02>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.65,  -1.97,  -8.19>, <  6.83,  -1.78,  -8.62>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.40,  -3.10,  -5.67>, < -2.57,  -3.29,  -5.24>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.36,  -2.77,  -7.21>, < -2.18,  -2.58,  -7.64>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.01,  -2.39,  -8.06>, < -2.18,  -2.58,  -7.64>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.36,  -2.77,  -7.21>, < -3.17,  -2.43,  -8.41>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.98,  -2.08,  -9.61>, < -3.17,  -2.43,  -8.41>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.36,  -2.77,  -7.21>, < -4.35,  -2.61,  -7.99>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.33,  -2.46,  -8.76>, < -4.35,  -2.61,  -7.99>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.36,  -2.77,  -7.21>, < -2.70,  -1.78,  -6.82>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.04,  -0.79,  -6.44>, < -2.70,  -1.78,  -6.82>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.36,  -2.77,  -7.21>, < -3.69,  -1.62,  -7.60>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.01,  -0.48,  -7.99>, < -3.69,  -1.62,  -7.60>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.01,  -2.39,  -8.06>, < -1.99,  -2.24,  -8.83>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.98,  -2.08,  -9.61>, < -1.99,  -2.24,  -8.83>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.01,  -2.39,  -8.06>, < -1.52,  -1.59,  -7.25>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.04,  -0.79,  -6.44>, < -1.52,  -1.59,  -7.25>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.01,  -2.39,  -8.06>, < -1.32,  -1.24,  -8.44>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.64,  -0.08,  -8.82>, < -1.32,  -1.24,  -8.44>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.01,  -2.39,  -8.06>, < -0.82,  -2.05,  -9.25>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.63,  -1.70, -10.45>, < -0.82,  -2.05,  -9.25>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.01,  -2.39,  -8.06>, <  0.17,  -2.19,  -8.47>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.34,  -1.99,  -8.89>, <  0.17,  -2.19,  -8.47>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.01,  -2.39,  -8.06>, < -0.34,  -1.37,  -7.66>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.32,  -0.34,  -7.27>, < -0.34,  -1.37,  -7.66>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.34,  -1.99,  -8.89>, <  0.35,  -1.85,  -9.67>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.63,  -1.70, -10.45>, <  0.35,  -1.85,  -9.67>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.34,  -1.99,  -8.89>, <  2.51,  -1.81,  -9.31>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.68,  -1.64,  -9.74>, <  2.51,  -1.81,  -9.31>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.34,  -1.99,  -8.89>, <  1.01,  -0.85,  -9.29>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.68,   0.30,  -9.69>, <  1.01,  -0.85,  -9.29>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.34,  -1.99,  -8.89>, <  1.53,  -1.66, -10.09>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.73,  -1.32, -11.30>, <  1.53,  -1.66, -10.09>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.34,  -1.99,  -8.89>, <  1.98,  -0.98,  -8.49>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.63,   0.03,  -8.10>, <  1.98,  -0.98,  -8.49>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.34,  -1.99,  -8.89>, <  0.83,  -1.17,  -8.08>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.32,  -0.34,  -7.27>, <  0.83,  -1.17,  -8.08>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.68,  -1.64,  -9.74>, <  4.34,  -0.65,  -9.35>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.00,   0.34,  -8.96>, <  4.34,  -0.65,  -9.35>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.68,  -1.64,  -9.74>, <  2.70,  -1.48, -10.52>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.73,  -1.32, -11.30>, <  2.70,  -1.48, -10.52>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.68,  -1.64,  -9.74>, <  3.35,  -0.48, -10.12>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.03,   0.67, -10.50>, <  3.35,  -0.48, -10.12>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.68,  -1.64,  -9.74>, <  3.15,  -0.80,  -8.92>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.63,   0.03,  -8.10>, <  3.15,  -0.80,  -8.92>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.68,  -1.64,  -9.74>, <  4.86,  -1.45, -10.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.36,  -2.77,  -7.21>, < -4.54,  -2.96,  -6.79>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.68,  -1.64,  -9.74>, <  4.20,  -2.44, -10.55>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.68,  -4.76,  -7.98>, < -5.20,  -3.95,  -7.17>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.68,  -1.64,  -9.74>, <  3.87,  -1.29, -10.94>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.33,  -2.46,  -8.76>, < -5.53,  -2.80,  -7.56>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.33,  -2.46,  -8.76>, < -4.15,  -2.27,  -9.19>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.98,  -2.08,  -9.61>, < -4.15,  -2.27,  -9.19>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.33,  -2.46,  -8.76>, < -5.14,  -2.11,  -9.97>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.95,  -1.77, -11.18>, < -5.14,  -2.11,  -9.97>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.33,  -2.46,  -8.76>, < -6.32,  -2.30,  -9.54>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -7.30,  -2.15, -10.32>, < -6.32,  -2.30,  -9.54>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.33,  -2.46,  -8.76>, < -4.67,  -1.47,  -8.38>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.01,  -0.48,  -7.99>, < -4.67,  -1.47,  -8.38>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.33,  -2.46,  -8.76>, < -5.66,  -1.31,  -9.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.98,  -0.17,  -9.56>, < -5.66,  -1.31,  -9.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.98,  -2.08,  -9.61>, < -3.96,  -1.93, -10.39>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.95,  -1.77, -11.18>, < -3.96,  -1.93, -10.39>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.98,  -2.08,  -9.61>, < -2.78,  -1.74, -10.81>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.59,  -1.40, -12.01>, < -2.78,  -1.74, -10.81>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.98,  -2.08,  -9.61>, < -2.31,  -1.08,  -9.21>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.64,  -0.08,  -8.82>, < -2.31,  -1.08,  -9.21>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.98,  -2.08,  -9.61>, < -1.80,  -1.89, -10.03>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.63,  -1.70, -10.45>, < -1.80,  -1.89, -10.03>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.98,  -2.08,  -9.61>, < -3.49,  -1.28,  -8.80>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.01,  -0.48,  -7.99>, < -3.49,  -1.28,  -8.80>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.98,  -2.08,  -9.61>, < -3.30,  -0.94, -10.00>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.63,   0.21, -10.40>, < -3.30,  -0.94, -10.00>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.63,  -1.70, -10.45>, < -1.61,  -1.55, -11.23>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.59,  -1.40, -12.01>, < -1.61,  -1.55, -11.23>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.63,  -1.70, -10.45>, < -1.14,  -0.89,  -9.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.64,  -0.08,  -8.82>, < -1.14,  -0.89,  -9.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.63,  -1.70, -10.45>, <  0.02,  -0.70, -10.07>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.68,   0.30,  -9.69>, <  0.02,  -0.70, -10.07>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.63,  -1.70, -10.45>, < -0.44,  -1.35, -11.65>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.24,  -1.01, -12.85>, < -0.44,  -1.35, -11.65>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.63,  -1.70, -10.45>, <  0.55,  -1.51, -10.87>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.73,  -1.32, -11.30>, <  0.55,  -1.51, -10.87>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.63,  -1.70, -10.45>, < -0.95,  -0.54, -10.84>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.27,   0.62, -11.23>, < -0.95,  -0.54, -10.84>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.73,  -1.32, -11.30>, <  1.20,  -0.51, -10.49>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.68,   0.30,  -9.69>, <  1.20,  -0.51, -10.49>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.73,  -1.32, -11.30>, <  0.74,  -1.16, -12.07>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.24,  -1.01, -12.85>, <  0.74,  -1.16, -12.07>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.73,  -1.32, -11.30>, <  2.38,  -0.33, -10.90>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.03,   0.67, -10.50>, <  2.38,  -0.33, -10.90>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.73,  -1.32, -11.30>, <  1.39,  -0.16, -11.68>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.06,   1.00, -12.07>, <  1.39,  -0.16, -11.68>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.73,  -1.32, -11.30>, <  2.90,  -1.13, -11.72>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.33,  -2.46,  -8.76>, < -6.50,  -2.65,  -8.34>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.73,  -1.32, -11.30>, <  2.24,  -2.12, -12.10>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.65,  -4.44,  -9.54>, < -7.16,  -3.64,  -8.73>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.73,  -1.32, -11.30>, <  1.91,  -0.98, -12.50>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -7.30,  -2.15, -10.32>, < -7.49,  -2.49,  -9.12>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -7.30,  -2.15, -10.32>, < -6.12,  -1.96, -10.75>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.95,  -1.77, -11.18>, < -6.12,  -1.96, -10.75>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -7.30,  -2.15, -10.32>, < -6.64,  -1.16,  -9.94>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.98,  -0.17,  -9.56>, < -6.64,  -1.16,  -9.94>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -7.30,  -2.15, -10.32>, < -6.78,  -2.95, -11.13>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.60,  -5.01,  -5.72>, <  1.08,  -4.21,  -4.91>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -7.30,  -2.15, -10.32>, < -7.95,  -3.14, -10.71>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,  -5.39,  -4.88>, < -0.09,  -4.40,  -4.49>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -7.30,  -2.15, -10.32>, < -8.28,  -1.99, -11.10>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.40,  -3.10,  -5.67>, < -0.42,  -3.26,  -4.89>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -7.30,  -2.15, -10.32>, < -7.62,  -1.00, -10.71>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.08,  -1.11,  -4.89>, <  0.24,  -2.27,  -4.50>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -7.30,  -2.15, -10.32>, < -7.10,  -1.79, -11.52>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.95,  -2.70,  -6.51>, <  0.76,  -3.06,  -5.31>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.95,  -1.77, -11.18>, < -3.77,  -1.58, -11.59>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.59,  -1.40, -12.01>, < -3.77,  -1.58, -11.59>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.95,  -1.77, -11.18>, < -5.46,  -0.97, -10.37>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.98,  -0.17,  -9.56>, < -5.46,  -0.97, -10.37>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.95,  -1.77, -11.18>, < -4.29,  -0.78, -10.79>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.63,   0.21, -10.40>, < -4.29,  -0.78, -10.79>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.95,  -1.77, -11.18>, < -5.61,  -2.76, -11.55>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.60,  -5.01,  -5.72>, <  2.26,  -4.02,  -5.34>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.95,  -1.77, -11.18>, < -5.93,  -1.60, -11.95>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.95,  -2.70,  -6.51>, <  1.93,  -2.87,  -5.74>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.95,  -1.77, -11.18>, < -4.76,  -1.41, -12.37>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.30,  -2.32,  -7.35>, <  3.10,  -2.68,  -6.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.95,  -1.77, -11.18>, < -4.43,  -2.57, -11.98>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.95,  -4.63,  -6.56>, <  3.43,  -3.83,  -5.76>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.95,  -1.77, -11.18>, < -5.28,  -0.59, -11.57>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.25,  -0.68,  -5.75>, <  2.58,  -1.85,  -5.35>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.59,  -1.40, -12.01>, < -3.11,  -0.59, -11.21>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.63,   0.21, -10.40>, < -3.11,  -0.59, -11.21>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.59,  -1.40, -12.01>, < -1.42,  -1.20, -12.43>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.24,  -1.01, -12.85>, < -1.42,  -1.20, -12.43>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.59,  -1.40, -12.01>, < -1.93,  -0.39, -11.62>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.27,   0.62, -11.23>, < -1.93,  -0.39, -11.62>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.59,  -1.40, -12.01>, < -3.58,  -1.23, -12.79>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.30,  -2.32,  -7.35>, <  4.28,  -2.49,  -6.57>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.59,  -1.40, -12.01>, < -2.08,  -2.19, -12.82>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.30,  -4.25,  -7.41>, <  5.79,  -3.46,  -6.60>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.59,  -1.40, -12.01>, < -2.40,  -1.05, -13.21>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.65,  -1.97,  -8.19>, <  5.46,  -2.31,  -7.00>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.59,  -1.40, -12.01>, < -2.92,  -0.24, -12.40>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.62,  -0.36,  -6.58>, <  4.94,  -1.51,  -6.19>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.59,  -1.40, -12.01>, < -3.25,  -2.38, -12.39>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.95,  -4.63,  -6.56>, <  4.61,  -3.65,  -6.18>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.24,  -1.01, -12.85>, <  0.41,  -0.00, -12.46>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.06,   1.00, -12.07>, <  0.41,  -0.00, -12.46>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.24,  -1.01, -12.85>, < -0.76,  -0.19, -12.04>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.27,   0.62, -11.23>, < -0.76,  -0.19, -12.04>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.24,  -1.01, -12.85>, < -0.90,  -2.00, -13.23>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.30,  -4.25,  -7.41>, <  6.96,  -3.26,  -7.02>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.24,  -1.01, -12.85>, < -0.57,   0.14, -13.24>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.97,   0.02,  -7.42>, <  7.29,  -1.13,  -7.03>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.24,  -1.01, -12.85>, < -1.23,  -0.86, -13.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.65,  -1.97,  -8.19>, <  6.63,  -2.12,  -7.41>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.24,  -1.01, -12.85>, <  0.93,  -0.82, -13.27>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -7.30,  -2.15, -10.32>, < -8.47,  -2.34,  -9.90>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.24,  -1.01, -12.85>, <  0.27,  -1.81, -13.65>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,  -5.39,  -4.88>, < -1.26,  -4.59,  -4.07>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.24,  -1.01, -12.85>, < -0.05,  -0.66, -14.05>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.40,  -3.10,  -5.67>, < -1.59,  -3.44,  -4.46>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.98,  -0.17,  -9.56>, < -5.00,  -0.32,  -8.77>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.01,  -0.48,  -7.99>, < -5.00,  -0.32,  -8.77>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.98,  -0.17,  -9.56>, < -5.32,   0.82,  -9.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.66,   1.81,  -8.77>, < -5.32,   0.82,  -9.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.98,  -0.17,  -9.56>, < -6.48,   0.63,  -8.76>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.98,   1.43,  -7.96>, < -6.48,   0.63,  -8.76>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.98,  -0.17,  -9.56>, < -4.81,   0.02,  -9.98>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.63,   0.21, -10.40>, < -4.81,   0.02,  -9.98>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.98,  -0.17,  -9.56>, < -6.96,  -0.01, -10.33>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.08,  -1.11,  -4.89>, <  0.90,  -1.27,  -4.12>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.98,  -0.17,  -9.56>, < -6.30,   0.97,  -9.92>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.24,   0.85,  -4.08>, <  1.56,  -0.29,  -3.71>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.98,  -0.17,  -9.56>, < -5.79,   0.21, -10.76>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.25,  -0.68,  -5.75>, <  2.07,  -1.05,  -4.54>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.68,   0.30,  -9.69>, <  0.14,   1.12,  -8.87>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.40,   1.94,  -8.05>, <  0.14,   1.12,  -8.87>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.68,   0.30,  -9.69>, < -0.48,   0.11,  -9.26>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.64,  -0.08,  -8.82>, < -0.48,   0.11,  -9.26>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.68,   0.30,  -9.69>, <  1.85,   0.48, -10.09>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.03,   0.67, -10.50>, <  1.85,   0.48, -10.09>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.68,   0.30,  -9.69>, <  1.66,   0.16,  -8.89>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.63,   0.03,  -8.10>, <  1.66,   0.16,  -8.89>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.68,   0.30,  -9.69>, <  0.50,  -0.02,  -8.48>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.32,  -0.34,  -7.27>, <  0.50,  -0.02,  -8.48>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.68,   0.30,  -9.69>, <  0.87,   0.65, -10.88>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.06,   1.00, -12.07>, <  0.87,   0.65, -10.88>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.68,   0.30,  -9.69>, <  0.34,   1.50, -10.10>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.00,   2.70, -10.50>, <  0.34,   1.50, -10.10>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.68,   0.30,  -9.69>, < -0.30,   0.46, -10.46>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.27,   0.62, -11.23>, < -0.30,   0.46, -10.46>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.68,   0.30,  -9.69>, <  1.36,   1.31,  -9.31>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.04,   2.33,  -8.92>, <  1.36,   1.31,  -9.31>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.25,  -0.68,  -5.75>, <  1.09,  -0.89,  -5.32>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.08,  -1.11,  -4.89>, <  1.09,  -0.89,  -5.32>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.25,  -0.68,  -5.75>, <  1.75,   0.09,  -4.91>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.24,   0.85,  -4.08>, <  1.75,   0.09,  -4.91>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.25,  -0.68,  -5.75>, <  3.44,  -0.52,  -6.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.62,  -0.36,  -6.58>, <  3.44,  -0.52,  -6.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.25,  -0.68,  -5.75>, <  2.93,   0.28,  -5.34>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.61,   1.23,  -4.94>, <  2.93,   0.28,  -5.34>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.25,  -0.68,  -5.75>, <  1.94,   0.61,  -6.04>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.63,   1.89,  -6.32>, <  1.94,   0.61,  -6.04>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.25,  -0.68,  -5.75>, <  2.44,  -0.32,  -6.92>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.63,   0.03,  -8.10>, <  2.44,  -0.32,  -6.92>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.25,  -0.68,  -5.75>, <  1.29,  -0.51,  -6.51>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.32,  -0.34,  -7.27>, <  1.29,  -0.51,  -6.51>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.08,  -1.11,  -4.89>, < -0.41,   0.04,  -5.27>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,   1.19,  -5.64>, < -0.41,   0.04,  -5.27>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.08,  -1.11,  -4.89>, < -0.60,  -0.31,  -4.10>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.12,   0.50,  -3.30>, < -0.60,  -0.31,  -4.10>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.08,  -1.11,  -4.89>, <  0.58,  -0.13,  -4.49>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.24,   0.85,  -4.08>, <  0.58,  -0.13,  -4.49>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.08,  -1.11,  -4.89>, < -1.06,  -0.95,  -5.66>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.04,  -0.79,  -6.44>, < -1.06,  -0.95,  -5.66>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.08,  -1.11,  -4.89>, <  0.12,  -0.73,  -6.08>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.32,  -0.34,  -7.27>, <  0.12,  -0.73,  -6.08>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.62,  -0.36,  -6.58>, <  5.79,  -0.17,  -7.00>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.97,   0.02,  -7.42>, <  5.79,  -0.17,  -7.00>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.62,  -0.36,  -6.58>, <  4.81,  -0.01,  -7.77>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.00,   0.34,  -8.96>, <  4.81,  -0.01,  -7.77>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.62,  -0.36,  -6.58>, <  4.11,   0.44,  -5.76>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.61,   1.23,  -4.94>, <  4.11,   0.44,  -5.76>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.62,  -0.36,  -6.58>, <  5.27,   0.64,  -6.20>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.92,   1.63,  -5.82>, <  5.27,   0.64,  -6.20>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.62,  -0.36,  -6.58>, <  4.30,   0.80,  -6.96>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.99,   1.95,  -7.34>, <  4.30,   0.80,  -6.96>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.62,  -0.36,  -6.58>, <  3.62,  -0.16,  -7.34>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.63,   0.03,  -8.10>, <  3.62,  -0.16,  -7.34>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.01,  -0.48,  -7.99>, < -4.52,   0.32,  -7.18>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.03,   1.12,  -6.37>, < -4.52,   0.32,  -7.18>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.01,  -0.48,  -7.99>, < -3.02,  -0.63,  -7.21>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.04,  -0.79,  -6.44>, < -3.02,  -0.63,  -7.21>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.01,  -0.48,  -7.99>, < -3.36,   0.51,  -7.60>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,   1.50,  -7.21>, < -3.36,   0.51,  -7.60>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.01,  -0.48,  -7.99>, < -2.83,  -0.28,  -8.41>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.64,  -0.08,  -8.82>, < -2.83,  -0.28,  -8.41>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.01,  -0.48,  -7.99>, < -4.33,   0.66,  -8.38>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.66,   1.81,  -8.77>, < -4.33,   0.66,  -8.38>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.01,  -0.48,  -7.99>, < -3.82,  -0.13,  -9.20>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.63,   0.21, -10.40>, < -3.82,  -0.13,  -9.20>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.63,   0.21, -10.40>, < -2.64,   0.06,  -9.61>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.64,  -0.08,  -8.82>, < -2.64,   0.06,  -9.61>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.63,   0.21, -10.40>, < -4.14,   1.01,  -9.58>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.66,   1.81,  -8.77>, < -4.14,   1.01,  -9.58>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.63,   0.21, -10.40>, < -2.99,   1.19, -10.01>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.35,   2.18,  -9.63>, < -2.99,   1.19, -10.01>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.63,   0.21, -10.40>, < -2.45,   0.41, -10.82>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.27,   0.62, -11.23>, < -2.45,   0.41, -10.82>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.63,   0.21, -10.40>, < -3.44,   0.56, -11.60>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.62,  -0.36,  -6.58>, <  4.42,  -0.71,  -5.38>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.63,   0.21, -10.40>, < -4.62,   0.40, -11.18>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.25,  -0.68,  -5.75>, <  3.24,  -0.87,  -4.97>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.63,   0.21, -10.40>, < -3.94,   1.35, -10.78>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.61,   1.23,  -4.94>, <  3.92,   0.09,  -4.56>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.00,   0.34,  -8.96>, <  5.98,   0.18,  -8.19>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.97,   0.02,  -7.42>, <  5.98,   0.18,  -8.19>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.00,   0.34,  -8.96>, <  4.01,   0.51,  -9.73>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.03,   0.67, -10.50>, <  4.01,   0.51,  -9.73>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.00,   0.34,  -8.96>, <  4.49,   1.15,  -8.15>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.99,   1.95,  -7.34>, <  4.49,   1.15,  -8.15>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.00,   0.34,  -8.96>, <  3.81,   0.19,  -8.53>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.63,   0.03,  -8.10>, <  3.81,   0.19,  -8.53>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.00,   0.34,  -8.96>, <  5.51,  -0.46,  -9.78>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.36,  -2.77,  -7.21>, < -3.88,  -1.97,  -6.40>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.00,   0.34,  -8.96>, <  5.65,   1.34,  -8.58>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.09,   0.82,  -4.83>, < -3.74,  -0.18,  -5.21>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.00,   0.34,  -8.96>, <  4.68,   1.49,  -9.36>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.03,   1.12,  -6.37>, < -4.72,  -0.02,  -5.98>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.00,   0.34,  -8.96>, <  6.18,   0.53,  -9.39>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.04,  -0.79,  -6.44>, < -3.22,  -0.98,  -6.01>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.00,   0.34,  -8.96>, <  5.19,   0.69, -10.17>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.01,  -0.48,  -7.99>, < -4.21,  -0.82,  -6.79>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.97,   0.02,  -7.42>, <  6.44,   0.83,  -6.62>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.92,   1.63,  -5.82>, <  6.44,   0.83,  -6.62>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.97,   0.02,  -7.42>, <  7.48,  -0.78,  -8.23>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.40,  -3.10,  -5.67>, < -1.91,  -2.30,  -4.86>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.97,   0.02,  -7.42>, <  6.64,   1.18,  -7.81>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.09,   0.82,  -4.83>, < -2.76,  -0.34,  -4.44>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.97,   0.02,  -7.42>, <  8.14,   0.21,  -7.84>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.08,  -1.11,  -4.89>, < -1.26,  -1.30,  -4.47>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.97,   0.02,  -7.42>, <  7.62,   1.02,  -7.05>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.12,   0.50,  -3.30>, < -1.78,  -0.50,  -3.67>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.97,   0.02,  -7.42>, <  7.17,   0.37,  -8.62>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.04,  -0.79,  -6.44>, < -2.23,  -1.14,  -5.24>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.06,   1.00, -12.07>, <  2.04,   0.83, -11.28>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.03,   0.67, -10.50>, <  2.04,   0.83, -11.28>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.06,   1.00, -12.07>, <  0.53,   1.85, -11.29>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.00,   2.70, -10.50>, <  0.53,   1.85, -11.29>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.06,   1.00, -12.07>, < -0.11,   0.81, -11.65>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.27,   0.62, -11.23>, < -0.11,   0.81, -11.65>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.06,   1.00, -12.07>, <  0.08,   1.14, -12.85>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.97,   0.02,  -7.42>, <  7.95,  -0.12,  -6.64>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.06,   1.00, -12.07>, <  1.58,   0.18, -12.88>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -7.30,  -2.15, -10.32>, < -7.82,  -1.33,  -9.51>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.06,   1.00, -12.07>, <  1.74,   1.97, -11.70>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.98,   1.43,  -7.96>, < -7.66,   0.46,  -8.33>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.06,   1.00, -12.07>, <  2.24,   1.17, -12.50>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.98,  -0.17,  -9.56>, < -7.16,  -0.34,  -9.13>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.06,   1.00, -12.07>, <  1.26,   1.33, -13.28>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.08,  -1.11,  -4.89>, < -0.28,  -1.45,  -3.69>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.06,   1.00, -12.07>, <  0.74,   2.14, -12.48>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.12,   0.50,  -3.30>, < -0.80,  -0.64,  -2.89>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.27,   0.62, -11.23>, < -1.46,   0.27, -10.03>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.64,  -0.08,  -8.82>, < -1.46,   0.27, -10.03>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.27,   0.62, -11.23>, < -1.81,   1.40, -10.43>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.35,   2.18,  -9.63>, < -1.81,   1.40, -10.43>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.27,   0.62, -11.23>, < -0.64,   1.66, -10.87>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.00,   2.70, -10.50>, < -0.64,   1.66, -10.87>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.27,   0.62, -11.23>, < -1.08,   0.95, -12.43>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  6.97,   0.02,  -7.42>, <  6.78,  -0.31,  -6.22>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.27,   0.62, -11.23>, < -2.26,   0.76, -12.01>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  4.62,  -0.36,  -6.58>, <  5.60,  -0.50,  -5.80>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.27,   0.62, -11.23>, < -1.61,   1.76, -11.64>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.92,   1.63,  -5.82>, <  6.25,   0.49,  -5.42>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.04,  -0.79,  -6.44>, < -2.56,   0.01,  -5.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.09,   0.82,  -4.83>, < -2.56,   0.01,  -5.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.04,  -0.79,  -6.44>, < -1.39,   0.20,  -6.04>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,   1.19,  -5.64>, < -1.39,   0.20,  -6.04>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.04,  -0.79,  -6.44>, < -2.37,   0.35,  -6.82>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,   1.50,  -7.21>, < -2.37,   0.35,  -6.82>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.04,  -0.79,  -6.44>, < -1.84,  -0.44,  -7.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.64,  -0.08,  -8.82>, < -1.84,  -0.44,  -7.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.04,  -0.79,  -6.44>, < -0.86,  -0.56,  -6.85>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.32,  -0.34,  -7.27>, < -0.86,  -0.56,  -6.85>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.03,   0.67, -10.50>, <  2.83,   0.35,  -9.30>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.63,   0.03,  -8.10>, <  2.83,   0.35,  -9.30>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.03,   0.67, -10.50>, <  2.53,   1.50,  -9.71>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.04,   2.33,  -8.92>, <  2.53,   1.50,  -9.71>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.03,   0.67, -10.50>, <  3.55,  -0.14, -11.32>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.33,  -2.46,  -8.76>, < -5.85,  -1.65,  -7.94>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.03,   0.67, -10.50>, <  3.70,   1.65, -10.12>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.03,   1.12,  -6.37>, < -5.70,   0.14,  -6.75>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.03,   0.67, -10.50>, <  4.21,   0.85, -10.93>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.01,  -0.48,  -7.99>, < -5.19,  -0.66,  -7.56>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.03,   0.67, -10.50>, <  2.72,   1.81, -10.91>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.98,   1.43,  -7.96>, < -6.68,   0.29,  -7.54>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.03,   0.67, -10.50>, <  3.22,   1.01, -11.71>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.98,  -0.17,  -9.56>, < -6.17,  -0.51,  -8.34>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.64,  -0.08,  -8.82>, < -2.18,   0.71,  -8.02>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,   1.50,  -7.21>, < -2.18,   0.71,  -8.02>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.64,  -0.08,  -8.82>, < -1.02,   0.93,  -8.43>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.40,   1.94,  -8.05>, < -1.02,   0.93,  -8.43>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.64,  -0.08,  -8.82>, < -1.99,   1.05,  -9.22>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.35,   2.18,  -9.63>, < -1.99,   1.05,  -9.22>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.64,  -0.08,  -8.82>, < -0.66,  -0.21,  -8.04>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.32,  -0.34,  -7.27>, < -0.66,  -0.21,  -8.04>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.32,  -0.34,  -7.27>, < -0.21,   0.43,  -6.46>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,   1.19,  -5.64>, < -0.21,   0.43,  -6.46>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.32,  -0.34,  -7.27>, < -0.04,   0.80,  -7.66>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.40,   1.94,  -8.05>, < -0.04,   0.80,  -7.66>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.32,  -0.34,  -7.27>, <  0.97,   0.77,  -6.80>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.63,   1.89,  -6.32>, <  0.97,   0.77,  -6.80>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.32,  -0.34,  -7.27>, <  1.47,  -0.15,  -7.68>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.63,   0.03,  -8.10>, <  1.47,  -0.15,  -7.68>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.63,   0.03,  -8.10>, <  3.31,   0.99,  -7.72>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.99,   1.95,  -7.34>, <  3.31,   0.99,  -7.72>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.63,   0.03,  -8.10>, <  2.13,   0.96,  -7.21>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.63,   1.89,  -6.32>, <  2.13,   0.96,  -7.21>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.63,   0.03,  -8.10>, <  2.34,   1.18,  -8.51>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.04,   2.33,  -8.92>, <  2.34,   1.18,  -8.51>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.98,   1.43,  -7.96>, < -6.01,   1.28,  -7.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.03,   1.12,  -6.37>, < -6.01,   1.28,  -7.16>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.98,   1.43,  -7.96>, < -5.82,   1.62,  -8.36>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.66,   1.81,  -8.77>, < -5.82,   1.62,  -8.36>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.98,   1.43,  -7.96>, < -7.98,   1.60,  -8.73>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.12,   0.50,  -3.30>, < -0.12,   0.33,  -2.52>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.98,   1.43,  -7.96>, < -6.81,   1.77,  -9.13>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.24,   0.85,  -4.08>, <  1.06,   0.51,  -2.91>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.24,   0.85,  -4.08>, <  0.24,   1.02,  -4.86>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,   1.19,  -5.64>, <  0.24,   1.02,  -4.86>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.24,   0.85,  -4.08>, <  0.06,   0.67,  -3.69>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.12,   0.50,  -3.30>, <  0.06,   0.67,  -3.69>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.24,   0.85,  -4.08>, <  2.42,   1.04,  -4.51>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.61,   1.23,  -4.94>, <  2.42,   1.04,  -4.51>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.24,   0.85,  -4.08>, <  1.43,   1.37,  -5.20>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.63,   1.89,  -6.32>, <  1.43,   1.37,  -5.20>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.66,   1.81,  -8.77>, < -4.84,   1.46,  -7.57>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.03,   1.12,  -6.37>, < -4.84,   1.46,  -7.57>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.66,   1.81,  -8.77>, < -3.68,   1.65,  -7.99>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,   1.50,  -7.21>, < -3.68,   1.65,  -7.99>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.66,   1.81,  -8.77>, < -3.50,   1.99,  -9.20>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.35,   2.18,  -9.63>, < -3.50,   1.99,  -9.20>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.66,   1.81,  -8.77>, < -5.64,   1.96,  -9.53>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.24,   0.85,  -4.08>, <  2.22,   0.69,  -3.32>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -4.66,   1.81,  -8.77>, < -4.46,   2.15,  -9.96>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.61,   1.23,  -4.94>, <  3.41,   0.89,  -3.75>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.61,   1.23,  -4.94>, <  3.20,   2.30,  -5.59>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.80,   3.36,  -6.24>, <  3.20,   2.30,  -5.59>, Rbond texture{pigment {color rgb <1.00, 0.05, 0.05> transmit 0.0} finish{ase2}}}
cylinder {<  3.61,   1.23,  -4.94>, <  4.76,   1.43,  -5.38>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.92,   1.63,  -5.82>, <  4.76,   1.43,  -5.38>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.61,   1.23,  -4.94>, <  3.80,   1.59,  -6.14>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.99,   1.95,  -7.34>, <  3.80,   1.59,  -6.14>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.61,   1.23,  -4.94>, <  2.62,   1.56,  -5.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.63,   1.89,  -6.32>, <  2.62,   1.56,  -5.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.35,   2.18,  -9.63>, < -2.53,   1.84,  -8.42>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,   1.50,  -7.21>, < -2.53,   1.84,  -8.42>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.35,   2.18,  -9.63>, < -1.37,   2.06,  -8.84>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.40,   1.94,  -8.05>, < -1.37,   2.06,  -8.84>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.35,   2.18,  -9.63>, < -1.17,   2.44, -10.06>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.00,   2.70, -10.50>, < -1.17,   2.44, -10.06>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.35,   2.18,  -9.63>, < -3.30,   2.34, -10.39>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.61,   1.23,  -4.94>, <  4.56,   1.07,  -4.18>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.35,   2.18,  -9.63>, < -2.14,   2.54, -10.83>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.92,   1.63,  -5.82>, <  5.72,   1.27,  -4.62>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.92,   1.63,  -5.82>, <  4.96,   1.79,  -6.58>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.99,   1.95,  -7.34>, <  4.96,   1.79,  -6.58>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.92,   1.63,  -5.82>, <  6.12,   1.98,  -7.02>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.09,   0.82,  -4.83>, < -3.28,   0.47,  -3.64>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.92,   1.63,  -5.82>, <  7.10,   1.82,  -6.25>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.12,   0.50,  -3.30>, < -2.30,   0.31,  -2.87>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.09,   0.82,  -4.83>, < -1.92,   1.01,  -5.24>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,   1.19,  -5.64>, < -1.92,   1.01,  -5.24>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.09,   0.82,  -4.83>, < -2.10,   0.66,  -4.07>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.12,   0.50,  -3.30>, < -2.10,   0.66,  -4.07>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.09,   0.82,  -4.83>, < -4.06,   0.97,  -5.60>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.03,   1.12,  -6.37>, < -4.06,   0.97,  -5.60>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.09,   0.82,  -4.83>, < -2.90,   1.16,  -6.02>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,   1.50,  -7.21>, < -2.90,   1.16,  -6.02>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.12,   0.50,  -3.30>, < -0.93,   0.85,  -4.47>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,   1.19,  -5.64>, < -0.93,   0.85,  -4.47>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.63,   1.89,  -6.32>, <  0.44,   1.54,  -5.98>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,   1.19,  -5.64>, <  0.44,   1.54,  -5.98>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.63,   1.89,  -6.32>, <  0.61,   1.91,  -7.19>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.40,   1.94,  -8.05>, <  0.61,   1.91,  -7.19>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.63,   1.89,  -6.32>, <  2.21,   2.62,  -6.28>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.80,   3.36,  -6.24>, <  2.21,   2.62,  -6.28>, Rbond texture{pigment {color rgb <1.00, 0.05, 0.05> transmit 0.0} finish{ase2}}}
cylinder {<  1.63,   1.89,  -6.32>, <  2.00,   2.99,  -5.95>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,   4.09,  -5.58>, <  2.00,   2.99,  -5.95>, Rbond texture{pigment {color rgb <0.56, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  1.63,   1.89,  -6.32>, <  2.81,   1.92,  -6.83>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.99,   1.95,  -7.34>, <  2.81,   1.92,  -6.83>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  1.63,   1.89,  -6.32>, <  1.83,   2.11,  -7.62>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.04,   2.33,  -8.92>, <  1.83,   2.11,  -7.62>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.99,   1.95,  -7.34>, <  3.40,   2.66,  -6.79>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.80,   3.36,  -6.24>, <  3.40,   2.66,  -6.79>, Rbond texture{pigment {color rgb <1.00, 0.05, 0.05> transmit 0.0} finish{ase2}}}
cylinder {<  3.99,   1.95,  -7.34>, <  3.02,   2.14,  -8.13>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.04,   2.33,  -8.92>, <  3.02,   2.14,  -8.13>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.99,   1.95,  -7.34>, <  5.15,   2.14,  -7.78>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -3.09,   0.82,  -4.83>, < -4.25,   0.63,  -4.40>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  3.99,   1.95,  -7.34>, <  4.18,   2.30,  -8.55>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.03,   1.12,  -6.37>, < -5.22,   0.78,  -5.17>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.03,   1.12,  -6.37>, < -3.87,   1.31,  -6.79>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,   1.50,  -7.21>, < -3.87,   1.31,  -6.79>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,   1.19,  -5.64>, < -1.73,   1.35,  -6.43>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,   1.50,  -7.21>, < -1.73,   1.35,  -6.43>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.75,   1.19,  -5.64>, < -0.57,   1.57,  -6.85>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.40,   1.94,  -8.05>, < -0.57,   1.57,  -6.85>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -2.71,   1.50,  -7.21>, < -1.56,   1.72,  -7.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.40,   1.94,  -8.05>, < -1.56,   1.72,  -7.63>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.00,   2.70, -10.50>, < -0.20,   2.32,  -9.27>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.40,   1.94,  -8.05>, < -0.20,   2.32,  -9.27>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.00,   2.70, -10.50>, <  1.02,   2.52,  -9.71>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.04,   2.33,  -8.92>, <  1.02,   2.52,  -9.71>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.00,   2.70, -10.50>, < -0.97,   2.80, -11.27>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  5.92,   1.63,  -5.82>, <  6.89,   1.54,  -5.06>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.00,   2.70, -10.50>, <  1.21,   2.82, -10.92>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.98,   1.43,  -7.96>, < -8.19,   1.31,  -7.54>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  0.00,   2.70, -10.50>, <  0.21,   2.99, -11.69>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -1.12,   0.50,  -3.30>, < -1.33,   0.21,  -2.11>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.04,   2.33,  -8.92>, <  0.82,   2.13,  -8.48>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.40,   1.94,  -8.05>, <  0.82,   2.13,  -8.48>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.04,   2.33,  -8.92>, <  3.21,   2.48,  -9.33>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -5.03,   1.12,  -6.37>, < -6.19,   0.97,  -5.96>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {<  2.04,   2.33,  -8.92>, <  2.23,   2.64, -10.13>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -6.98,   1.43,  -7.96>, < -7.17,   1.13,  -6.75>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.40,   1.94,  -8.05>, < -0.38,   2.97,  -7.76>, Rbond texture{pigment {color rgb <0.31, 0.82, 0.31> transmit 0.0} finish{ase2}}}
cylinder {< -0.36,   4.01,  -7.47>, < -0.38,   2.97,  -7.76>, Rbond texture{pigment {color rgb <0.56, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,   4.09,  -5.58>, <  2.59,   3.73,  -5.91>, Rbond texture{pigment {color rgb <0.56, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  2.80,   3.36,  -6.24>, <  2.59,   3.73,  -5.91>, Rbond texture{pigment {color rgb <1.00, 0.05, 0.05> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,   4.09,  -5.58>, <  2.77,   4.13,  -5.21>, Rbond texture{pigment {color rgb <0.56, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  3.18,   4.17,  -4.85>, <  2.77,   4.13,  -5.21>, Rbond texture{pigment {color rgb <1.00, 1.00, 1.00> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,   4.09,  -5.58>, <  2.49,   4.53,  -6.04>, Rbond texture{pigment {color rgb <0.56, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  2.61,   4.96,  -6.51>, <  2.49,   4.53,  -6.04>, Rbond texture{pigment {color rgb <1.00, 1.00, 1.00> transmit 0.0} finish{ase2}}}
cylinder {<  2.37,   4.09,  -5.58>, <  1.51,   4.14,  -5.79>, Rbond texture{pigment {color rgb <0.56, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  0.66,   4.19,  -6.01>, <  1.51,   4.14,  -5.79>, Rbond texture{pigment {color rgb <1.00, 1.00, 1.00> transmit 0.0} finish{ase2}}}
cylinder {<  2.61,   4.96,  -6.51>, <  2.70,   4.16,  -6.38>, Rbond texture{pigment {color rgb <1.00, 1.00, 1.00> transmit 0.0} finish{ase2}}}
cylinder {<  2.80,   3.36,  -6.24>, <  2.70,   4.16,  -6.38>, Rbond texture{pigment {color rgb <1.00, 0.05, 0.05> transmit 0.0} finish{ase2}}}
cylinder {<  3.18,   4.17,  -4.85>, <  2.99,   3.77,  -5.55>, Rbond texture{pigment {color rgb <1.00, 1.00, 1.00> transmit 0.0} finish{ase2}}}
cylinder {<  2.80,   3.36,  -6.24>, <  2.99,   3.77,  -5.55>, Rbond texture{pigment {color rgb <1.00, 0.05, 0.05> transmit 0.0} finish{ase2}}}
// no constraints
