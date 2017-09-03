class BottomCap < Cap
  def initialize
    super
    @pos_ridge = true
    @anchor_offset += @frame_t/2.0
    @cap_h = @frame_t/2.0
  end

  def part(_show)
    res = super(_show) -
      cylinder(d: @diameter/2.0, h: @frame_t + 1)
        .translate(z: -0.5)

    # locking tabs for base
    tabs = nil
    (0..5).each do |i|
      tabs += cube(x: @ridge_h * 2.0, y: @ridge_h * 2.0, z: @ridge_h)
        .translate(y: @diameter/4.0 - @ridge_h*2.0)#, z: @base_h - 0.01)
        .rotate(z: i * 60) #.debug
    end

    res += tabs * square(@ridge_h)
      .rotate(z: 45)
      .translate(x: @diameter/4.0)
      .rotate_extrude
      .translate(z: -Math.sqrt((@ridge_h/2.0)**2 + (@ridge_h/2.0)**2))
  end
end
