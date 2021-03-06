class Cap < SolidRuby::Printed
  def initialize
    lp = Params::LAMP_PARAMS
    @ridge_h = lp[:ridge_height]
    @diameter = lp[:diameter]
    @tolerance = lp[:tolerance]
    @frame_t = lp[:frame_thickness]
    @step_size = lp[:step_size]
    @pos_ridge = false
    @tie_width = lp[:cable_tie_width]
    @anchor_offset = 0
    @cap_h = @frame_t
  end

  def ridge
    square(@ridge_h)
      .rotate(z: 45)
      .translate(x: @diameter/2.0 - @frame_t/1.5)
      .rotate_extrude
      .translate(z: @cap_h - Math.sqrt((@ridge_h/2.0)**2 + (@ridge_h/2.0)**2))
  end

  def tie_anchor
    cube(@tie_width, @frame_t/2.0, @frame_t/1.75)
      .center_xy.fillet(r: 1.5, edges: :vertical) -
     cylinder(d: @tie_width + @tolerance, h: @frame_t)
       .rotate(y: 90).translate(x: -@frame_t/2.0, z: @frame_t/3.0)
  end

  def part(_show)
    res = cylinder(d: @diameter, h: @cap_h)

    # ridge
    if @pos_ridge
      res += ridge
    else
      res -= ridge
    end

    (0..2).each do |i|
      res -= Spline.new(0.3, true)
        .rotate(x: 90)
        .translate(y: @diameter/2.0 - @frame_t/3.0 - @tolerance/2.0, z: @cap_h - (@step_size*0.3) + 0.05)
        .rotate(z: 60 + i*120)

        res += tie_anchor
          .translate(y: @diameter/2.0 - @frame_t*2.0 + @anchor_offset, z: @cap_h - 0.05)
          .rotate(z: 60 + i*120)
    end



    #res.rotate(x: 180).translate(z: @frame_t)
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
