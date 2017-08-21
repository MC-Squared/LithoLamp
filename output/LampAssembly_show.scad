$fn=64;
union(){translate(v = [0, -80])
difference(){cylinder(h = 140, r = 82.500);
translate(v = [0, 0, -0.010])
cylinder(h = 140.020, r = 72.500);
translate(v = [25, -72.500, -0.500])
rotate(a = [0, 0, 60])
translate(v = [-240.000, -25.000])
cube(size = [480, 50, 141]);
translate(v = [-25, -72.500, -0.500])
rotate(a = [0, 0, -60])
translate(v = [-240.000, -25.000])
cube(size = [480, 50, 141]);
translate(v = [0, 0, 20])
translate(v = [-60.000, 0])
cube(size = [120, 100, 100]);
}
}
