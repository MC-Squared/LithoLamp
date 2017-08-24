$fn=64;
difference(){union(){difference(){cylinder(h = 92, r = 82.500, $fn = 360);
translate(v = [0, 0, -0.010])
cylinder(h = 92.020, ifn = 360, r = 62.500, $fn = 360);
}
translate(v = [0, 0, 93.000])
rotate(a = [0, 0, 45.000])
rotate_extrude(angle = 15, co = 10, $fn = 64){translate(v = [72.500, 0])
circle(r = 2, $fn = 36);
}
translate(v = [0, 0, 93.000])
rotate(a = [0, 0, 82.500])
rotate_extrude(angle = 15, co = 10, $fn = 64){translate(v = [72.500, 0])
circle(r = 2, $fn = 36);
}
translate(v = [0, 0, 93.000])
rotate(a = [0, 0, 120.000])
rotate_extrude(angle = 15, co = 10, $fn = 64){translate(v = [72.500, 0])
circle(r = 2, $fn = 36);
}
}
translate(v = [0, 0, 1.000])
rotate_extrude(co = 10, $fn = 64){translate(v = [72.500, 0])
circle(r = 2.250, $fn = 36);
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 95){translate(v = [-82.500, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 95){translate(v = [82.500, 0])
mirror(v = [1, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, -1, 71.500])
intersection(){translate(v = [0, 47.500])
translate(v = [-60.000, 0])
cube(size = [120, 40.000, 21]);
difference(){cylinder(h = 21, r = 82.500);
translate(v = [0, 0, -0.010])
cylinder(h = 21.020, r = 78.500);
}
}
translate(v = [0, -1, 18])
intersection(){translate(v = [-60.000, 0])
cube(size = [120, 165, 54.000]);
difference(){cylinder(h = 54.000, r = 82.500);
translate(v = [0, 0, -0.010])
cylinder(h = 54.020, r = 81.500);
}
}
translate(v = [0, 0, 20])
translate(v = [-58.000, 0])
cube(size = [116, 116, 52.000]);
translate(v = [65.117, 39.417, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2, 0])
translate(v = [-4.250, -1.250])
cube(size = [8.500, 2.500, 93]);
translate(v = [-6.500, -0.500])
cylinder(h = 93, r = 1.750);
}
mirror(v = [1, 0])
translate(v = [65.117, 39.417, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2, 0])
translate(v = [-4.250, -1.250])
cube(size = [8.500, 2.500, 93]);
translate(v = [-6.500, -0.500])
cylinder(h = 93, r = 1.750);
}
translate(v = [0, -41.964, -0.500])
translate(v = [-83.500, -82.500])
cube(size = [167, 165, 97.000]);
}
