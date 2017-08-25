$fn=64;
union(){union(){translate(v = [0, 0, 20])
rotate(a = [0, 0, -120])
difference(){union(){difference(){cylinder(h = 93.333, r = 82.500, $fn = 36);
translate(v = [0, 0, -0.010])
cylinder(h = 93.353, ifn = 36, r = 62.500, $fn = 36);
translate(v = [0, 0, -1.768])
rotate_extrude(){translate(v = [69.167, 0])
rotate(a = [0, 0, 45])
square(size = 2.500);
}
}
translate(v = [0, 0, 91.919])
rotate_extrude(){translate(v = [69.167, 0])
rotate(a = [0, 0, 45])
square(size = 2);
}
}
translate(v = [0, 27.500, 22])
translate(v = [-56.000, 0])
cube(size = [112, 55.000, 49.333]);
translate(v = [0, 0, 20])
intersection(){translate(v = [0, 47.500])
translate(v = [-58.000, 0])
cube(size = [116, 40.000, 53.333]);
difference(){cylinder(h = 54.333, r = 82.505, $fn = 36);
translate(v = [0, 0, -0.010])
cylinder(h = 54.353, ifn = 36, r = 78.500, $fn = 36);
}
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 96.333){translate(v = [-82.500, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 96.333){translate(v = [82.500, 0])
mirror(v = [1, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [62.787, 40.250, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2, 0])
translate(v = [-4.250, -1.250])
cube(size = [8.500, 2.500, 94.333]);
translate(v = [-6.500, -0.500])
cylinder(h = 94.333, r = 1.750);
}
mirror(v = [1, 0])
translate(v = [62.787, 40.250, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2, 0])
translate(v = [-4.250, -1.250])
cube(size = [8.500, 2.500, 94.333]);
translate(v = [-6.500, -0.500])
cylinder(h = 94.333, r = 1.750);
}
translate(v = [0, -42.421, -0.500])
translate(v = [-83.500, -82.500])
cube(size = [167, 165, 98.333]);
}
translate(v = [0, 0, 20])
rotate(a = [0, 0, 120])
difference(){union(){difference(){cylinder(h = 140.000, r = 82.500, $fn = 36);
translate(v = [0, 0, -0.010])
cylinder(h = 140.020, ifn = 36, r = 62.500, $fn = 36);
translate(v = [0, 0, -1.768])
rotate_extrude(){translate(v = [69.167, 0])
rotate(a = [0, 0, 45])
square(size = 2.500);
}
}
translate(v = [0, 0, 138.586])
rotate_extrude(){translate(v = [69.167, 0])
rotate(a = [0, 0, 45])
square(size = 2);
}
}
translate(v = [0, 27.500, 22])
translate(v = [-56.000, 0])
cube(size = [112, 55.000, 96.000]);
translate(v = [0, 0, 20])
intersection(){translate(v = [0, 47.500])
translate(v = [-58.000, 0])
cube(size = [116, 40.000, 100.000]);
difference(){cylinder(h = 101.000, r = 82.505, $fn = 36);
translate(v = [0, 0, -0.010])
cylinder(h = 101.020, ifn = 36, r = 78.500, $fn = 36);
}
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 143.000){translate(v = [-82.500, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 143.000){translate(v = [82.500, 0])
mirror(v = [1, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [62.787, 40.250, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2, 0])
translate(v = [-4.250, -1.250])
cube(size = [8.500, 2.500, 141.000]);
translate(v = [-6.500, -0.500])
cylinder(h = 141.000, r = 1.750);
}
mirror(v = [1, 0])
translate(v = [62.787, 40.250, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2, 0])
translate(v = [-4.250, -1.250])
cube(size = [8.500, 2.500, 141.000]);
translate(v = [-6.500, -0.500])
cylinder(h = 141.000, r = 1.750);
}
translate(v = [0, -42.421, -0.500])
translate(v = [-83.500, -82.500])
cube(size = [167, 165, 145.000]);
}
}
translate(v = [0, -74.500])
rotate(a = [0, 0, 180])
union(){translate(v = [-10.000, -1.000])
cube(size = [20.000, 2, 93.333]);
translate(v = [-10.000, -0.500])
cylinder(h = 93.333, r = 1.500);
translate(v = [10.000, -0.500])
cylinder(h = 93.333, r = 1.500);
}
}
