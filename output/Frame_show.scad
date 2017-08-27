$fn=320;
difference(){union(){difference(){cylinder(h = 138.000, r = 82.500);
translate(v = [0, 0, -0.010])
cylinder(h = 138.020, r = 62.500);
translate(v = [0, 0, -1.768])
rotate_extrude(){translate(v = [69.167, 0])
rotate(a = [0, 0, 45])
square(size = 2.500);
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
difference(){cylinder(h = 99.000, r = 82.505);
translate(v = [0, 0, -0.010])
cylinder(h = 99.020, r = 78.500);
}
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 141.000){translate(v = [-82.500, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [0, 0.250, -0.500])
linear_extrude(height = 141.000){translate(v = [82.500, 0])
mirror(v = [1, 0])
polygon(points = [[0, 0], [82.500, 0.000], [0, 47.631], [0, 0]]);
}
translate(v = [62.787, 40.250, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2, 0])
translate(v = [-4.250, -1.250])
cube(size = [8.500, 2.500, 139.000]);
translate(v = [-6.500, -0.500])
cylinder(h = 139.000, r = 1.750);
}
mirror(v = [1, 0])
translate(v = [62.787, 40.250, -0.500])
rotate(a = [0, 0, -60])
union(){translate(v = [-2, 0])
translate(v = [-4.250, -1.250])
cube(size = [8.500, 2.500, 139.000]);
translate(v = [-6.500, -0.500])
cylinder(h = 139.000, r = 1.750);
}
translate(v = [0, -42.421, -0.500])
translate(v = [-83.500, -82.500])
cube(size = [167, 165, 143.000]);
}
