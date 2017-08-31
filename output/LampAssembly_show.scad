$fn=36;
union(){difference(){union(){translate(v = [-10.000, -1.000])
cube(size = [20.000, 2, 46.000]);
translate(v = [-10.000, -0.500])
cylinder(h = 46.000, r = 1.500);
translate(v = [10.000, -0.500])
cylinder(h = 46.000, r = 1.500);
}
translate(v = [0, -0.750, -1])
rotate(a = [-45, 0, 0])
#cube(size = [26.000, 3.000, 12.000], center = true);
translate(v = [0, -0.750, 46.500])
rotate(a = [-45, 0, 0])
#cube(size = [26.000, 3.000, 12.000], center = true);
}
translate(v = [0, 0, 48])
difference(){union(){translate(v = [-10.000, -1.000])
cube(size = [20.000, 2, 46.000]);
translate(v = [-10.000, -0.500])
cylinder(h = 46.000, r = 1.500);
translate(v = [10.000, -0.500])
cylinder(h = 46.000, r = 1.500);
}
translate(v = [0, -0.750, -1])
rotate(a = [-45, 0, 0])
#cube(size = [26.000, 3.000, 12.000], center = true);
translate(v = [0, -0.750, 46.500])
rotate(a = [-45, 0, 0])
#cube(size = [26.000, 3.000, 12.000], center = true);
}
}
