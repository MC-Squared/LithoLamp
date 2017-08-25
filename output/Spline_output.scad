$fn=64;
translate(v = [0, 0, 1.000])
rotate(a = [-90, 0, 0])
union(){translate(v = [-10.000, -1.000])
cube(size = [20.000, 2, 92]);
translate(v = [-10.000, -0.500])
cylinder(h = 92, r = 1.500);
translate(v = [10.000, -0.500])
cylinder(h = 92, r = 1.500);
}
