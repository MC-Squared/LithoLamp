class EndCap < SolidRuby::Printed
  def initialize(lamp_params = {})
    @frame_t = lamp_params[:frame_thickness] || 20
    @diameter = lamp_params[:diameter] || 165
    @ridge_h = lamp_params[:ridge_height] || 2
    @fn = lamp_params[:fn] || 24
    @tie_hole = lamp_params[:cable_tie_width] || 3
  end

  def part(_show)
    res = cylinder(d: @diameter, h: @frame_t, fn: @fn, ifn: @fn)

    # ridge
    res += cylinder(d: @diameter - @frame_t,
      h: @ridge_h,
      id: @diameter - @frame_t - @ridge_h,
      fn: @fn, ifn: @fn)
      .translate(z: @frame_t + @ridge_h - 0.01)


    # locking tab
    (0..2).each do |i|
      res += (cube(x: @frame_t*2.5, y: @frame_t/3.0, z: @frame_t)
        .center_xy
        .fillet(edges: :vertical, r: 5) -
        cylinder(d: @tie_hole*1.5, h: @frame_t)
          .rotate(x: 90)
          .translate(x: @frame_t*0.75, y: @frame_t/2.0, z: @frame_t/2.0) -
        cylinder(d: @tie_hole*1.5, h: @frame_t)
          .rotate(x: 90)
          .translate(x: -@frame_t*0.75, y: @frame_t/2.0, z: @frame_t/2.0))
        .translate(y: @diameter/2.0 - @frame_t*1.5, z: @frame_t)
        .rotate(z: 60 + 120 * i)
    end

    res
  end
end
