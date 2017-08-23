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
    height = @z

    # main frame
    res = cylinder(d: @diameter, h: height, id: @diameter - (@frame_t*2.0), fn: @fn, ifn: @fn)

    #top ridge
    res += cylinder(d: @diameter - @frame_t, h: @ridge_h, id: @diameter - @frame_t - @ridge_h, fn: @fn, ifn: @fn)
      .translate(z: @z)

    # bottom ridge
    res -= cylinder(d: @diameter - @frame_t + (@tolerance/2.0), h: @ridge_h + @tolerance, id: @diameter - @frame_t - @ridge_h - (@tolerance/2.0), fn: @fn, ifn: @fn)
      .translate(z: -0.01)

    # cut cylinder into 1/3 slice
    res -= triangle(a: @diameter/2.0, alpha: 60, beta: 90)
      .translate(x: -@diameter/2.0)
      .linear_extrude(h: @z + @ridge_h + 1)
      .translate(y: @tolerance/2.0, z: -0.5)

    res -= triangle(a: @diameter/2.0, alpha: 60, beta: 90)
      .mirror(x: 1)
      .translate(x: @diameter/2.0)
      .linear_extrude(h: @z + @ridge_h + 1)
      .translate(y: @tolerance/2.0, z: -0.5)

    # lithophane top slot
    res -= (cube(@photo_x, @diameter, @frame_t + 1)
      .center_x *
    cylinder(d: @diameter, h: @frame_t + 1, id: @diameter - @photo_y))
      .translate(z: @z - @frame_t - 0.5, y: -1)

    # lithophane recess
    res -= (cube(@photo_x, @diameter, @photo_z + @photo_border)
      .center_x *
    cylinder(d: @diameter, h: @photo_z + @photo_border, id: @diameter - @photo_border))
      .translate(z: @frame_t - @photo_border, y: -1)

    # window cutout
    res -= cube(@photo_x-(@photo_border*2) , @diam, @photo_z)
      .center_x
      .translate(z: @frame_t)

    t = triangle(b: @diameter/2.0 - @frame_t/4.0, alpha: 60, beta: 90)

    # edge slots
    res -= #cylinder(d: @ridge_h, h: @z+1)
      (cube(x: @ridge_h*2.0, y: @ridge_h, z: @z+1)
        .center_xy +
      cylinder(d: @ridge_h*1.5, h: @z+1)
        .translate(x: -@ridge_h*1.5)
      )
        .rotate(z: -60)
        .translate(x: t.a - @ridge_h, y: t.c + @ridge_h/3.0, z:-0.5)
      #.debug
    res -= #cylinder(d: @ridge_h, h: @z+1)
      (cube(x: @ridge_h*2.0, y: @ridge_h, z: @z+1)
        .center_xy +
      cylinder(d: @ridge_h*1.5, h: @z+1)
        .translate(x: -@ridge_h*1.5)
      )
        .rotate(z: -60)
        .translate(x: t.a - @ridge_h, y: t.c + @ridge_h/3.0, z:-0.5)
        .mirror(x: 1)

    t = triangle(b: @diameter/2.0 - @frame_t/2.0, alpha: 60, beta: 90)

    # res -= tie_hole(t.a, t.c).translate(z: @z - @frame_t/2.0)
    #
    # res -= tie_hole(t.a, t.c).translate(z: @frame_t/2.0)
    #
    # res -= tie_hole(t.a, t.c).translate(z: @z - @frame_t/2.0)
    #   .mirror(x: 1)
    #
    # res -= tie_hole(t.a, t.c).translate(z: @frame_t/2.0)
    #   .mirror(x: 1)

    # if @z > @step_size
    #   res -= tie_hole(t.a, t.c).translate(z: @step_size - @frame_t/2.0)
    #   res -= tie_hole(t.a, t.c).translate(z: @step_size - @frame_t/2.0)
    #     .mirror(x: 1)
    # end
    #
    # if @z > (@step_size * 2.0)
    #   res -= tie_hole(t.a, t.c).translate(z: @step_size*2.0 - @frame_t/2.0)
    #   res -= tie_hole(t.a, t.c).translate(z: @step_size*2.0 - @frame_t/2.0)
    #     .mirror(x: 1)
    # end

    # remove rear half of cylinder
    res -= cube(@diameter+2, @diameter, @z + @ridge_h + 1)
      .center_xy
      .translate(y: -t.c - @frame_t/3.5, z:-0.5)
  end
end
