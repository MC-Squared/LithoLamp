class Frame < SolidRuby::Printed
  def initialize(steps=3) #args={step_size: 46, steps: 3, thickness: 20})

    lp = Params::LAMP_PARAMS
    @steps = steps
    @ridge_h = lp[:ridge_height]
    @step_size = lp[:step_size]
    @diameter = lp[:diameter]
    @tolerance = lp[:tolerance]
    @frame_t = lp[:frame_thickness]
    @photo_border = lp[:photo_border]
    @photo_x = lp[:photo_x]
    @photo_y = lp[:photo_y]
    @photo_z = lp[:photo_z]
    @steps = steps
    @tie_width = lp[:cable_tie_width]

    @x = @photo_x
    @y = @photo_y
    @z = @step_size * @steps

    @photo_z = @z - (@frame_t*2.0)
  end

  def tie_anchor
      (cube(@frame_t, @frame_t, @tie_width * 3.0).center_xy -
      cylinder(d: @tie_width + @tolerance, h: @frame_t)
        .rotate(x: 90, z: -45)
        .translate(x: @frame_t/4.0, z: @tie_width*1.5) -
      cylinder(d: @tie_width + @tolerance, h: @frame_t)
        .translate(x: -@frame_t/8.0, y: -@frame_t/4.0, z: -0.5))
      .translate(x: -@tie_width/2.0, y: -@tie_width*2.0)
      .rotate(z: -90)
  end

  def part(_show)
    # main frame
    res = cylinder(d: @diameter, h: @z, id: @diameter - (@frame_t*2.0))

    # bottom ridge
    h = @ridge_h + @tolerance
    res -= square(h)
      .rotate(z: 45)
      .translate(x: @diameter/2.0 - @frame_t/1.5)
      .rotate_extrude
      .translate(z: -Math.sqrt((h/2.0)**2 + (h/2.0)**2))

    # top ridge
    res += square(@ridge_h)
      .rotate(z: 45)
      .translate(x: @diameter/2.0 - @frame_t/1.5)
      .rotate_extrude
      .translate(z: @z - Math.sqrt((@ridge_h/2.0)**2 + (@ridge_h/2.0)**2))

    # window cutout for light
    res -= cube(@photo_x-(@photo_border*2) , @diameter/3.0, @photo_z - (@photo_border*2.0))
      .center_x
      .translate(y: (@diameter/3.0)/2.0, z: @frame_t + @photo_border)

    res -= (cube(@photo_x, @frame_t*2.0, @photo_z)
      .center_x
      .translate(y: @diameter/2.0 - @frame_t*1.75) *
    cylinder(d: @diameter + 0.01, h: @photo_z + 1, id: @diameter - @photo_y))
      .translate(z: @frame_t, y: 0)

    #window support structure
    # res += (cube(@photo_x - @photo_border*2.0 - @tolerance*2.0, @frame_t*3.0, @photo_z)
    #   .center_x
    #   .translate(y: @diameter/2.0 - @frame_t*3.0) *
    # cylinder(d: @diameter - @photo_y, h: @photo_z - @photo_border*2.0 - @tolerance*2.0,
    #   id: @diameter - (@frame_t*2.0), fn: @fn, ifn: @fn))
    #   .translate(z: @frame_t + @photo_border + @tolerance)

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

    t = triangle(b: @diameter/2.0 - @frame_t/2.5, alpha: 60, beta: 90)

    # spline slots
    res -= Spline.new(3.5, true).show
      .rotate(z: -60)
      .translate(x: t.a, y: t.c, z: -1)

    res -= Spline.new(@steps + 0.5, true).show
      .rotate(z: -60)
      .translate(x: t.a, y: t.c, z: -1)
      .rotate(z: 120)

    t = triangle(b: @diameter/2.0 - @frame_t, alpha: 50, beta: 90)

    res += tie_anchor
      .translate(x: t.a, y: t.c, z: @frame_t/4.0)

    res += tie_anchor
      .translate(x: t.a, y: t.c, z: @frame_t/4.0)
      .mirror(x: 1)

    res += tie_anchor
      .translate(x: t.a, y: t.c, z: @z - (@tie_width*3.0) - @frame_t/4.0)

    res += tie_anchor
      .translate(x: t.a, y: t.c, z: @z - (@tie_width*3.0) - @frame_t/4.0)
      .mirror(x: 1)

    #return res
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
    res -= cube(@diameter+2, @diameter, @z + (@ridge_h *2.0) + 1)
      .center_xy
      .translate(y: -@diameter/3.8 + 1, z:-0.5)

    # position curve-down for printing
    unless _show
      res.translate(y: -@diameter/2.0, z: -@z/2.0)
        .rotate(x: 90)
        .translate(z: t.c + @frame_t/3.5)
    end

    # res *= import(f: 'photo.stl')
    #   .translate(y: @diameter/2.0 - @frame_t/2.0 - 2, z: @frame_t)
      #.debug

    res
  end
end
