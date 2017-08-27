class Base < SolidRuby::Printed
  def initialize
    lp = Params::LAMP_PARAMS
    @ridge_h = lp[:ridge_height]
    @diameter = lp[:diameter]
    @tolerance = lp[:tolerance]
    @frame_t = lp[:frame_thickness]
  end

  def part(_show)
    res = cylinder(d: @diameter, h: @frame_t)

    # ridge
    res += square(@ridge_h)
      .rotate(z: 45)
      .translate(x: @diameter/2.0 - @frame_t/1.5)
      .rotate_extrude
      .translate(z: @frame_t - Math.sqrt((@ridge_h/2.0)**2 + (@ridge_h/2.0)**2))

    (0..2).each do |i|
      res += Spline.new(0.5)
        .rotate(x: 90)
        .translate(y: @diameter/2.0 - @frame_t/3.0, z: @frame_t - 0.01)
        .rotate(z: 60 + i*120)
        .debug
    end

    # res += Frame.new(1)
    #   .rotate(x: -90)
    #   .translate(y: @diameter/2.0 - @frame_t* 2.0 - 2, z: 43)
    # res += cylinder(d: @diameter - @frame_t,
    #   h: @ridge_h,
    #   id: @diameter - @frame_t - @ridge_h,
    #   fn: @fn, ifn: @fn)
    #   .translate(z: @frame_t + @ridge_h - 0.01)


    # locking tab
    # (0..2).each do |i|
    #   res += (cube(x: @frame_t*2.5, y: @frame_t/3.0, z: @frame_t)
    #     .center_xy
    #     .fillet(edges: :vertical, r: 5) -
    #     cylinder(d: @tie_hole*1.5, h: @frame_t)
    #       .rotate(x: 90)
    #       .translate(x: @frame_t*0.75, y: @frame_t/2.0, z: @frame_t/2.0) -
    #     cylinder(d: @tie_hole*1.5, h: @frame_t)
    #       .rotate(x: 90)
    #       .translate(x: -@frame_t*0.75, y: @frame_t/2.0, z: @frame_t/2.0))
    #     .translate(y: @diameter/2.0 - @frame_t*1.5, z: @frame_t)
    #     .rotate(z: 60 + 120 * i)
    # end

    res
  end
end
