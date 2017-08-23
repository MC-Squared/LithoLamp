class LampAssembly < SolidRuby::Assembly

  # Assemblies are used to show how different parts interact on your design.

  # Skip generation of the 'output' method for this assembly.
  # (will still generate 'show')
  skip :output

  def part(show)
    # work out step size for frames
    thickness = 10
    full_photo_height = 100
    full_z = full_photo_height + thickness * 2.0
    step_size = full_z / 3.0

    lamp_params= {
      frame_thickness: thickness,
      full_photo_height: full_photo_height,
      diameter: 165,
      tolerance: 0.5,
      step_size: step_size,
      cable_tie_width: 3
    }

    # Create a test cube
    res = nil #Photo.new.translate(z: 20)

    # res += EndCap.new(lamp_params)
    #   .translate(z: 0)
    #
    # res += EndCap.new(160 + 5, {step_size: step_size, steps: 1, thickness: thickness})
    #   .rotate(y: 180, z: 120)
    #   .translate(z: 240)

    res += Frame.new(lamp_params, 2)
      .rotate(z: -120)
      .translate(x: 2, z: thickness)

    #
    res += Frame.new(lamp_params, 3)
      .rotate(z: 120)
      .translate(z: thickness)

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
