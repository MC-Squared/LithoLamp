$fn=64;
difference(){union(){difference(){cylinder(h = 138, r = 82.500, $fn = 16);
translate(v = [0, 0, -0.010])
cylinder(h = 138.020, ifn = 16, r = 62.500, $fn = 16);
}
translate(v = [0, 0, 138])
difference(){cylinder(h = 2, r = 72.500, $fn = 16);
translate(v = [0, 0, -0.010])
cylinder(h = 2.020, ifn = 16, r = 71.500, $fn = 16);
}
}
translate(v = [0, 0, -0.010])
difference(){cylinder(h = 2.500, r = 72.625, $fn = 16);
translate(v = [0, 0, -0.010])
cylinder(h = 2.520, ifn = 16, r = 71.375, $fn = 16);
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 141){translate(v = [-82.500, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 141){translate(v = [82.500, 0])
mirror(v = [1, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, -1, 117.500])
intersection(){translate(v = [-60.000, 0])
cube(size = [120, 165, 21]);
difference(){cylinder(h = 21, r = 82.500);
translate(v = [0, 0, -0.010])
cylinder(h = 21.020, r = 78.500);
}
}
translate(v = [0, -1, 18])
intersection(){translate(v = [-60.000, 0])
cube(size = [120, 165, 100.000]);
difference(){cylinder(h = 100.000, r = 82.500);
translate(v = [0, 0, -0.010])
cylinder(h = 100.020, r = 81.500);
}
}
translate(v = [0, 0, 20])
translate(v = [-58.000, 0])
cube(size = [116, 116, 98.000]);
translate(v = [65.117, 39.417, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2.000, -1.000])
cube(size = [4.000, 2, 139]);
translate(v = [-3.000, 0])
cylinder(h = 139, r = 1.500);
}
mirror(v = [1, 0])
translate(v = [65.117, 39.417, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2.000, -1.000])
cube(size = [4.000, 2, 139]);
translate(v = [-3.000, 0])
cylinder(h = 139, r = 1.500);
}
translate(v = [0, -41.964, -0.500])
translate(v = [-83.500, -82.500])
cube(size = [167, 165, 141]);
}
