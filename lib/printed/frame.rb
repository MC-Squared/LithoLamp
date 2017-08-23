class Frame < SolidRuby::Printed
  def initialize(lamp_params={}, steps=3) #args={step_size: 46, steps: 3, thickness: 20})
    @frame_t = lamp_params[:frame_thickness] || 20
    @diameter = lamp_params[:diameter] || 165
    @ridge_h = lamp_params[:ridge_height] || 2
    @fn = lamp_params[:fn] || 16
    @step_size = lamp_params[:step_size] || 46
    @tolerance = lamp_params[:tolerance] || 0.5
    @tie_width = lamp_params[:cable_tie_width] || 3

    @steps = steps

    @photo_x = 120
    @photo_y = 8
    @photo_border = 2

    # @step_size = args[:step_size]
    # @steps = args[:steps]

    @x = @photo_x
    @y = @photo_y
    @z = @step_size * @steps

    @photo_z = @z - (@frame_t*2.0)
  end

  def tie_hole(x, y)
    res = cylinder(d: @tie_width, h: @frame_t)
      .rotate(y: 90, z: -45)
      .translate(x: x - @frame_t/2.5, y: y + @frame_t/2.0)

    res += cylinder(d: @tie_width, h: @frame_t*1.1)
      .rotate(y: 90, z: 0)
      .translate(x: x - @frame_t*1.45, y: y + @frame_t/2.0)
  end

  def part(_show)
    diam = 160 + 5
    height = @z
    ridge_h = 2
    fn = 32

    # main frame
    res = cylinder(d: diam, h: height, id: diam - (@frame_t*2.0), fn: fn, ifn: 32)

    #top ridge
    res += cylinder(d: diam - @frame_t, h: ridge_h, id: diam - @frame_t - ridge_h, fn: fn, ifn: 32)
      .translate(z: @z)

    # bottom ridge
    res -= cylinder(d: diam - @frame_t + (@tolerance/2.0), h: ridge_h + @tolerance, id: diam - @frame_t - ridge_h - (@tolerance/2.0), fn: fn, ifn: 32)
      .translate(z: -0.01)

    # cut cylinder into 1/3 slice
    res -= triangle(a: diam/2.0, alpha: 60, beta: 90)
      .translate(x: -diam/2.0)
      .linear_extrude(h: @z + ridge_h + 1)
      .translate(y: @tolerance/2.0, z: -0.5)

    res -= triangle(a: diam/2.0, alpha: 60, beta: 90)
      .mirror(x: 1)
      .translate(x: diam/2.0)
      .linear_extrude(h: @z + ridge_h + 1)
      .translate(y: @tolerance/2.0, z: -0.5)

    # lithophane top slot
    res -= (cube(@photo_x, @diam, @frame_t + 1)
      .center_x *
    cylinder(d: diam, h: @frame_t + 1, id: diam - @photo_y))
      .translate(z: @z - @frame_t - 0.5, y: -1)

    # lithophane recess
    res -= (cube(@photo_x, @diam, @photo_z + @photo_border)
      .center_x *
    cylinder(d: diam, h: @photo_z + @photo_border, id: diam - @photo_border))
      .translate(z: @frame_t - @photo_border, y: -1)

    # window cutout
    res -= cube(@photo_x-(@photo_border*2) , @diam, @photo_z)
      .center_x
      .translate(z: @frame_t)

    t = triangle(b: diam/2.0 - @frame_t/6.0, alpha: 60, beta: 90)

    # edge slots
    # res += cylinder(d: @ridge_h, h: @z)
    #   .translate(x: t.a, y: t.c)
    #   #.debug
    # res -= cylinder(d: @ridge_h + @tolerance, h: @z)
    #   .translate(x: t.a, y: t.c)
    #   .mirror(x: 1)

    t = triangle(b: diam/2.0 - @frame_t/2.0, alpha: 60, beta: 90)

    res -= tie_hole(t.a, t.c).translate(z: @z - @frame_t/2.0)

    res -= tie_hole(t.a, t.c).translate(z: @frame_t/2.0)

    res -= tie_hole(t.a, t.c).translate(z: @z - @frame_t/2.0)
      .mirror(x: 1)

    res -= tie_hole(t.a, t.c).translate(z: @frame_t/2.0)
      .mirror(x: 1)

    if @z > @step_size
      res -= tie_hole(t.a, t.c).translate(z: @step_size - @frame_t/2.0)
      res -= tie_hole(t.a, t.c).translate(z: @step_size - @frame_t/2.0)
        .mirror(x: 1)
    end

    if @z > (@step_size * 2.0)
      res -= tie_hole(t.a, t.c).translate(z: @step_size*2.0 - @frame_t/2.0)
      res -= tie_hole(t.a, t.c).translate(z: @step_size*2.0 - @frame_t/2.0)
        .mirror(x: 1)
    end

    # remove rear half of cylinder
    res -= cube(diam+2, diam, @z + ridge_h + 1)
      .center_xy
      .translate(y: -t.c - @frame_t/2.5, z:-0.5)
  end
end
