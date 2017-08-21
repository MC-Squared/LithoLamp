class Frame < SolidRuby::Printed
  def initialize
    @photo_x = 120
    @photo_y = 100
    @photo_z = 100

    @thickness = 20
    @x = @photo_x
    @y = @photo_y
    @z = @photo_z + @thickness * 2
  end

  def part(_show)
    diam = 160 + 5
    res = cylinder(d: diam, h: @z, id: diam - @thickness)

    res -= cube(@x*4, 50, @z+1)
      .center_xy
      .rotate(z: 60)
      .translate(x: 25, y: -diam/2.0 + @thickness/2.0, z: -0.5)

    res -= cube(@x*4, 50, @z+1)
      .center_xy
      .rotate(z: -60)
      .translate(x: -25, y: -diam/2.0 + @thickness/2.0, z: -0.5)

    res -= cube(@photo_x, @photo_y, @photo_z)
      .center_x
      .translate(z: @thickness)

    res.translate(y: -80)
    # res += cylinder(d: 160 + 5 - @thickness, h: c.h)
    #   .translate(y: -56)
    #   .color("GREY")
  end
end
