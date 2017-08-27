class Photo < SolidRuby::Printed
  def initialize
  end

  def part(_show)
    res = import(f: 'photo.stl')
      .translate(y: 13).debug

    # res += (cube(120 - 4 - 6, 20, 90).center_xy.translate(y: -8) -
    #   cube(120 - 4 - 4 - 6, 51, 91).center_xy.translate(z: -0.5))
      #.translate(y: -10)
    #res.scale([0.33, 0.33, 0.33])
  end
end
