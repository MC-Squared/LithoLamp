class LampAssembly < SolidRuby::Assembly

  # Assemblies are used to show how different parts interact on your design.

  # Skip generation of the 'output' method for this assembly.
  # (will still generate 'show')
  skip :output

  def part(show)
    # Create a test cube
    res = nil #Photo.new.translate(z: 20)

    res += Frame.new

    res += Frame.new
      .rotate(z: 120)
      .translate(x: -69.3, y: -120, z: 140/3.0 + 1)

    res += Frame.new(1)
      .rotate(z: 120)
      .translate(x: -69.1, y: -119.7)

    res += Frame.new
      .rotate(z: -120)
      .translate(x: 69.1, y: -119.7, z: 140/3.0*2 + 1)

    res += Frame.new(2)
      .rotate(z: -120)
      .translate(x: 69.1, y: -119.7)
    # always make sure the lowest statement always returns the object that you're working on
    res
  end
end
