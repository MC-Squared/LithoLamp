$fn=64;
translate(v = [0, -80])
difference(){cylinder(h = 140.000, r = 82.500);
translate(v = [0, 0, -0.010])
cylinder(h = 140.020, r = 62.500);
translate(v = [0, 1, -0.500])
linear_extrude(height = 141.000){translate(v = [-83, 0])
polygon(points = [[0, 0], [82.000, 0.000], [0, 47.343], [0, 0]]);
}
translate(v = [0, 1, -0.500])
linear_extrude(height = 141.000){translate(v = [82, 0])
mirror(v = [1, 0])
polygon(points = [[0, 0], [82.000, 0.000], [0, 47.343], [0, 0]]);
}
translate(v = [0, -155, -0.500])
translate(v = [-83.500, 0])
cube(size = [167, 165, 141.000]);
translate(v = [0, 0, 20])
translate(v = [-60.000, 0])
cube(size = [120, 100, 100.000]);
}
