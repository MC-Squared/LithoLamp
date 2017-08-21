class LampAssembly < SolidRuby::Assembly

  # Assemblies are used to show how different parts interact on your design.

  # Skip generation of the 'output' method for this assembly.
  # (will still generate 'show')
  skip :output

  def part(show)
    # Create a test cube
    res = nil #Photo.new.translate(z: 20)

    res += Frame.new

    # res += Frame.new
    #   .rotate(z: 120)
    #   .translate(x: -65, y: -110, z: 140/3.0)
    #
    # res += Frame.new
    #   .rotate(z: -120)
    #   .translate(x: 65, y: -110, z: 140/3.0*2)
    # always make sure the lowest statement always returns the object that you're working on
    res
  end
end
