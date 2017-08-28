class Base < SolidRuby::Printed
  def initialize
    lp = Params::LAMP_PARAMS
    @ridge_h = lp[:ridge_height]
    @diameter = lp[:diameter]
    @tolerance = lp[:tolerance]
    @frame_t = lp[:frame_thickness]
    @pos_ridge = pos_ridge
  end

  def ridge
    square(@ridge_h)
      .rotate(z: 45)
      .translate(x: @diameter/2.0 - @frame_t/1.5)
      .rotate_extrude
      .translate(z: @frame_t - Math.sqrt((@ridge_h/2.0)**2 + (@ridge_h/2.0)**2))
  end

  def part(_show)
    res = cylinder(d: @diameter, h: @frame_t)

    # ridge
    if @pos_ridge
      res += ridge
    else
      res -= ridge
    end

    (0..2).each do |i|
      res -= Spline.new(0.3, true)
        .rotate(x: 90)
        .translate(y: @diameter/2.0 - @frame_t/3.0 - @tolerance/2.0, z: @frame_t - (@step_size*0.3) + 0.05)
        .rotate(z: 60 + i*120)

    end



    # res += Frame.new(1)
    #   .rotate(x: -90)
    #   .translate(y: @diameter/2.0 - @frame_t* 2.0 - 2, z: 43)
    # res += cylinder(d: @diameter - @frame_t,
    #   h: @ridge_h,
    #   id: @diameter - @frame_t - @ridge_h,
    #   fn: @fn, ifn: @fn)
    #   .translate(z: @frame_t + @ridge_h - 0.01)

    res
  end
end
