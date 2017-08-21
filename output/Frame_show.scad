$fn=64;
translate(v = [0, -80])
difference(){union(){difference(){cylinder(h = 140.000, r = 82.500);
translate(v = [0, 0, -0.010])
cylinder(h = 140.020, r = 62.500);
translate(v = [0, 0.500, -0.500])
linear_extrude(height = 141.000){translate(v = [-82.500, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, 0.500, -0.500])
linear_extrude(height = 141.000){translate(v = [82.500, 0])
mirror(v = [1, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, -155, -0.500])
translate(v = [-83.500, 0])
cube(size = [167, 165, 141.000]);
translate(v = [0, -1])
intersection(){translate(v = [0, 0, 20])
translate(v = [-60.000, 0])
cube(size = [120, 120, 100.000]);
difference(){cylinder(h = 140.000, r = 82.500);
translate(v = [0, 0, -0.010])
cylinder(h = 140.020, r = 78.500);
}
}
translate(v = [0, 0, 20])
translate(v = [-50.000, 0])
cube(size = [100, 100, 100.000]);
}
translate(v = [63.250, 35.334])
#cylinder(h = 140.000, r = 2.500);
}
translate(v = [-62.000, 37.584, -0.500])
cylinder(h = 141.000, r = 2.750);
}
