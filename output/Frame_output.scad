$fn=64;
translate(v = [0, 0, 41.964])
rotate(a = [90, 0, 0])
translate(v = [0, -82.500, -69.000])
difference(){union(){difference(){cylinder(h = 138, r = 82.500, $fn = 36);
translate(v = [0, 0, -0.010])
cylinder(h = 138.020, ifn = 36, r = 62.500, $fn = 36);
translate(v = [0, 0, -2.475])
rotate_extrude(){translate(v = [69.167, 0])
rotate(a = [0, 0, 45])
square(size = 3.500);
}
}
translate(v = [0, 0, 136.586])
rotate_extrude(){translate(v = [69.167, 0])
rotate(a = [0, 0, 45])
square(size = 2);
}
}
translate(v = [0, 27.500, 22])
translate(v = [-56.000, 0])
cube(size = [112, 55.000, 94.000]);
translate(v = [0, 0, 20])
intersection(){translate(v = [0, 47.500])
translate(v = [-58.000, 0])
cube(size = [116, 40.000, 98.000]);
difference(){cylinder(h = 99.000, r = 82.505, $fn = 36);
translate(v = [0, 0, -0.010])
cylinder(h = 99.020, ifn = 36, r = 78.500, $fn = 36);
}
}
translate(v = [0, 0.750, -0.500])
linear_extrude(height = 141){translate(v = [-82.500, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, 0.750, -0.500])
linear_extrude(height = 141){translate(v = [82.500, 0])
mirror(v = [1, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [62.787, 40.250, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2, 0])
translate(v = [-4.750, -1.750])
cube(size = [9.500, 3.500, 139]);
translate(v = [-7.500, -0.500])
cylinder(h = 139, r = 2.250);
}
mirror(v = [1, 0])
translate(v = [62.787, 40.250, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2, 0])
translate(v = [-4.750, -1.750])
cube(size = [9.500, 3.500, 139]);
translate(v = [-7.500, -0.500])
cylinder(h = 139, r = 2.250);
}
translate(v = [0, -42.421, -0.500])
translate(v = [-83.500, -82.500])
cube(size = [167, 165, 143.000]);
}
