class Frame < SolidRuby::Printed
  def initialize(h=3)
    @thickness = 20
    @tolerance = 0.5
    @photo_x = 120
    @photo_y = 10
    @photo_z = 100

    @photo_z *= h/3.0
    @photo_z -= (((@thickness*2)/3.0) * (3-h))

    @x = @photo_x
    @y = @photo_y
    @z = @photo_z + @thickness * 2
  end

  def part(_show)
    diam = 160 + 5
    res = cylinder(d: diam, h: @z, id: diam - (@thickness*2), fn: 32, ifn: 32)

    res -= triangle(a: diam/2.0, alpha: 60, beta: 90)
      .translate(x: -diam/2.0)
      .linear_extrude(h: @z+1)
      .translate(y: @tolerance/2.0, z: -0.5)

    res -= triangle(a: diam/2.0, alpha: 60, beta: 90)
      .mirror(x: 1)
      .translate(x: diam/2.0)
      .linear_extrude(h: @z+1)
      .translate(y: @tolerance/2.0, z: -0.5)

    res -= cube(diam+2, diam, @z+1)
      .center_x
      .translate(y: -diam+10, z:-0.5)

    res -= (cube(@photo_x, @diam, @photo_z)
      .center_x
      .translate(z: @thickness) *
    cylinder(d: diam, h: @z, id: diam - 8))
      .translate(y: -1)

    res -= cube(@photo_x-20, @diam, @photo_z)
      .center_x
      .translate(z: @thickness)

    t = triangle(a: diam/2.0 - @thickness, alpha: 60, beta: 90)
    res += cylinder(d: @thickness/4.0, h: @z)
      .translate(x: t.a + 0.75, y: t.c - 0.75)
      
    res -= cylinder(d: @thickness/4.0 + (@tolerance * 2), h: @z+1)
      .translate(x: t.a + 0.75, y: t.c - 0.75, z:-0.5)
      .rotate(z: 120)

    res.translate(y: -80)
  end
end
