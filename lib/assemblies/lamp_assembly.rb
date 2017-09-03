class LampAssembly < SolidRuby::Assembly

  # Assemblies are used to show how different parts interact on your design.

  # Skip generation of the 'output' method for this assembly.
  # (will still generate 'show')
  skip :output

  def part(show)
    thickness = Params::LAMP_PARAMS[:frame_thickness]
    diameter = Params::LAMP_PARAMS[:diameter]
    step_size = Params::LAMP_PARAMS[:step_size]

    # Create a test cube
    res = nil #Photo.new.translate(y: 56, z: thickness*2)

    res += Frame.new(3)
      .show
      .translate(x: 0, z: thickness)

    res += Frame.new(2)
      .show
      .rotate(z: -120)
      .translate(x: 0, z: thickness)

    res += Frame.new(1)
      .show
      .rotate(z: 120)
      .translate(z: thickness)

    res += Frame.new(3)
      .show
      .rotate(z: 120)
      .translate(z: step_size*1.0 + thickness*1.0)

    res += Frame.new(3)
      .show
      .rotate(z: -120)
      .translate(z: step_size*2.0 + thickness*1.0)

    res += Frame.new(2)
      .show
      .rotate(z: 0)
      .translate(z: step_size*3.0 + thickness*1.0)

    res += Frame.new(1)
      .show
      .rotate(z: 120)
      .translate(z: step_size*4.0 + thickness*1.0)

    # res += Spline.new.show
    #   .translate(y: diameter/2.0 - thickness/2.5)
    #   .rotate(z: 60)
      #.debug

    res += TopCap.new.show.translate(z: step_size * 5.0 + thickness)

    res += BottomCap.new.translate(z: thickness/2.0) #.rotate(x: 180, z: 60).translate(z: 200)

    res += Base.new #.translate(z: - thickness/2.0)

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
