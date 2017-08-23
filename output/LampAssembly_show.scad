$fn=64;
union(){translate(v = [0, 0, 10])
rotate(a = [0, 0, -120])
difference(){union(){difference(){cylinder(h = 80.000, r = 82.500, $fn = 32);
translate(v = [0, 0, -0.010])
cylinder(h = 80.020, ifn = 32, r = 72.500, $fn = 32);
}
translate(v = [0, 0, 80.000])
difference(){cylinder(h = 2, r = 77.500, $fn = 32);
translate(v = [0, 0, -0.010])
cylinder(h = 2.020, ifn = 32, r = 76.500, $fn = 32);
}
}
translate(v = [0, 0, -0.010])
difference(){cylinder(h = 2.500, r = 77.625, $fn = 32);
translate(v = [0, 0, -0.010])
cylinder(h = 2.520, ifn = 32, r = 76.375, $fn = 32);
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 83.000){translate(v = [-82.500, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 83.000){translate(v = [82.500, 0])
mirror(v = [1, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, -1, 69.500])
intersection(){translate(v = [-60.000, 0])
cube(size = [120, 120, 11]);
difference(){cylinder(h = 11, r = 82.500);
translate(v = [0, 0, -0.010])
cylinder(h = 11.020, r = 78.500);
}
}
translate(v = [0, -1, 8])
intersection(){translate(v = [-60.000, 0])
cube(size = [120, 120, 62.000]);
difference(){cylinder(h = 62.000, r = 82.500);
translate(v = [0, 0, -0.010])
cylinder(h = 62.020, r = 81.500);
}
}
translate(v = [0, 0, 10])
translate(v = [-58.000, 0])
cube(size = [116, 116, 60.000]);
translate(v = [68.004, 41.083, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2.000, -1.000])
cube(size = [4.000, 2, 81.000]);
translate(v = [-3.000, 0])
cylinder(h = 81.000, r = 1.500);
}
mirror(v = [1, 0])
translate(v = [68.004, 41.083, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2.000, -1.000])
cube(size = [4.000, 2, 81.000]);
translate(v = [-3.000, 0])
cylinder(h = 81.000, r = 1.500);
}
translate(v = [0, -41.607, -0.500])
translate(v = [-83.500, -82.500])
cube(size = [167, 165, 83.000]);
}
translate(v = [0, 0, 10])
rotate(a = [0, 0, 120])
difference(){union(){difference(){cylinder(h = 120.000, r = 82.500, $fn = 32);
translate(v = [0, 0, -0.010])
cylinder(h = 120.020, ifn = 32, r = 72.500, $fn = 32);
}
translate(v = [0, 0, 120.000])
difference(){cylinder(h = 2, r = 77.500, $fn = 32);
translate(v = [0, 0, -0.010])
cylinder(h = 2.020, ifn = 32, r = 76.500, $fn = 32);
}
}
translate(v = [0, 0, -0.010])
difference(){cylinder(h = 2.500, r = 77.625, $fn = 32);
translate(v = [0, 0, -0.010])
cylinder(h = 2.520, ifn = 32, r = 76.375, $fn = 32);
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 123.000){translate(v = [-82.500, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 123.000){translate(v = [82.500, 0])
mirror(v = [1, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, -1, 109.500])
intersection(){translate(v = [-60.000, 0])
cube(size = [120, 120, 11]);
difference(){cylinder(h = 11, r = 82.500);
translate(v = [0, 0, -0.010])
cylinder(h = 11.020, r = 78.500);
}
}
translate(v = [0, -1, 8])
intersection(){translate(v = [-60.000, 0])
cube(size = [120, 120, 102.000]);
difference(){cylinder(h = 102.000, r = 82.500);
translate(v = [0, 0, -0.010])
cylinder(h = 102.020, r = 81.500);
}
}
translate(v = [0, 0, 10])
translate(v = [-58.000, 0])
cube(size = [116, 116, 100.000]);
translate(v = [68.004, 41.083, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2.000, -1.000])
cube(size = [4.000, 2, 121.000]);
translate(v = [-3.000, 0])
cylinder(h = 121.000, r = 1.500);
}
mirror(v = [1, 0])
translate(v = [68.004, 41.083, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2.000, -1.000])
cube(size = [4.000, 2, 121.000]);
translate(v = [-3.000, 0])
cylinder(h = 121.000, r = 1.500);
}
translate(v = [0, -41.607, -0.500])
translate(v = [-83.500, -82.500])
cube(size = [167, 165, 123.000]);
}
}
