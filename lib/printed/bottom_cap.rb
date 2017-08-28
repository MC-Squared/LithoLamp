class BottomCap < Cap
  def initialize
    super
    @pos_ridge = true
    @anchor_offset += @frame_t/2.0
  end

  def part(_show)
    res = super(_show) -
      cylinder(d: @diameter/2.0, h: @frame_t + 1)
        .translate(z: -0.5)
  end
end
