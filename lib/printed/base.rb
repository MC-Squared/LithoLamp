class Base < SolidRuby::Printed
  def initialize
    lp = Params::LAMP_PARAMS
    @diameter = lp[:diameter]
    @tolerance = lp[:tolerance]
    @frame_t = lp[:frame_thickness]
    #@step_size = lp[:step_size]
    #@pos_ridge = false
    #@tie_width = lp[:cable_tie_width]
    #@anchor_offset = 0
  end

  def part(_show)
    res = cylinder(d: @diameter * 1.5, h: @frame_t)

    # power cable entry
    res -= cube(x: @diameter, y: 10, z: 10).translate(z: -0.01)



    res
    res = square(5)
      .rotate(z: 45)
      .translate(x: 20)
      .rotate_extrude(a: 90)
      .rotate(x: -10)
      .rotate(y: 10)

    res += square(5)
      .rotate(z: 45)
      .translate(x: 20)
      .rotate_extrude(a: 90)
      .rotate(x: -10)
      .rotate(y: 20)
      .rotate(z: 90)

    # res += square(5)
    #   .rotate(z: 45)
    #   .translate(x: 20)
    #   .rotate_extrude(a: 90)
    #   .rotate(x: 10)
    #   .rotate(y: 10)
    #   .translate(z: 10)
    #
    # res += square(5)
    #   .rotate(z: 45)
    #   .translate(x: 20)
    #   .rotate_extrude(a: 90)
    #   .rotate(x: -10)
    #   .translate(z: 10)
    #   .mirror(y: 1)
    #
    # res += square(5)
    #   .rotate(z: 45)
    #   .translate(x: 20)
    #   .rotate_extrude(a: 90)
    #   .rotate(x: -10)
    #   .translate(z: 10)
    #   .mirror(y: 1)
    #   .mirror(x: 1)
      #.translate(z, z: 1: @frame_t - Math.sqrt((@ridge_h/2.0)**2 + (@ridge_h/2.0)**2))
  end
end
