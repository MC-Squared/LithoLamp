class LampAssembly < SolidRuby::Assembly

  # Assemblies are used to show how different parts interact on your design.

  # Skip generation of the 'output' method for this assembly.
  # (will still generate 'show')
  skip :output

  def part(show)
    thickness = Params::LAMP_PARAMS[:frame_thickness]

    # Create a test cube
    res = nil #Photo.new.translate(y: 56, z: thickness*2)

    res += Frame.new(3)
      .show
      .translate(x: 0, z: thickness)

    # res += Frame.new(2)
    #   .show
    #   .rotate(z: -120)
    #   .translate(x: 0, z: thickness)

    res += Frame.new(1)
      .show
      .rotate(z: 120)
      .translate(z: thickness)

    # res += Spline.new.show
    #   .rotate(z: 180)
    #   .translate(y: - 74.5)

    #res += TopCap.new.show.translate(z: 160)

    res += BottomCap.new #.rotate(x: 180, z: 60).translate(z: 200)

    res += Base.new.translate(z: - 30)
    # res += Frame.new(lamp_params, 3)
    #   .translate(z: 20 + (step_size))
    #
    # res += Frame.new(lamp_params, 2)
    #   .rotate(z: -120)
    #   .translate(z: 20 + (step_size*2))

    # res += Frame.new(step_size: step_size, steps: 3, thickness: thickness)
    #   .translate(z: 20)

    # res += Frame.new
    #   .rotate(z: 120)
    #   .translate(z: 140/3.0 + 1)
    #
    # res += Frame.new
    #   .rotate(z: -120)
    #   .translate(z: 140/3.0*2 + 1)
    #
    # res += Frame.new(2)
    #   .translate(z: 140 + 1)

    res
  end
end
