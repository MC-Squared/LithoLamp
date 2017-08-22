class LampAssembly < SolidRuby::Assembly

  # Assemblies are used to show how different parts interact on your design.

  # Skip generation of the 'output' method for this assembly.
  # (will still generate 'show')
  skip :output

  def part(show)
    # Create a test cube
    res = nil #Photo.new.translate(z: 20)

    res += EndCap.new(160 + 5)
      .translate(z: -80)

    res += EndCap.new(160 + 5)
      .rotate(y: 180, z: -120)
      .translate(z: 260)

    res += Frame.new(2)
      .rotate(z: -120)

    res += Frame.new

    res += Frame.new
      .rotate(z: 120)
      .translate(z: 140/3.0 + 1)

    res += Frame.new
      .rotate(z: -120)
      .translate(z: 140/3.0*2 + 1)

    res += Frame.new(2)
      .translate(z: 140 + 1)

    res
  end
end
