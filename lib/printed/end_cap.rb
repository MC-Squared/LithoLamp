class EndCap < SolidRuby::Printed
  def initialize(diam=160)
    @diam = diam
    @z = 20
  end

  def part(_show)
    res = cylinder(d: @diam, h: @z, fn: 32, ifn: 32)

    res += Frame.new(1)
      .translate(z: @z - 0.01)

    res.rotate(z: 120)
  end
end
