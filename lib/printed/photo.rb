class Photo < SolidRuby::Printed
  def initialize
  end

  def part(_show)
    import(f: 'photo.stl')
      .translate(y: 13)
      .debug
  end
end
