class Base < SolidRuby::Printed
  def initialize
    lp = Params::LAMP_PARAMS
    @diameter = lp[:diameter]
    @base_diameter = 200
    @tolerance = lp[:tolerance]
    @frame_t = lp[:frame_thickness] / 2.0

    @power_cable_t = 7
    #@step_size = lp[:step_size]
    #@pos_ridge = false
    #@tie_width = lp[:cable_tie_width]
    #@anchor_offset = 0
  end

  def part(_show)
    res = cylinder(d: @base_diameter, h: @frame_t)

    # power cable entry
    res -= cube(x: @base_diameter, y: @power_cable_t, z: @power_cable_t)
      .center_y
      .translate(z: -0.01)

    res -= cube(@power_cable_t, @power_cable_t, @frame_t + 1).translate(z: -0.5).center_xy

    # (0..2).each do |i|
    #   res -= Spline.new(1.3, true)
    #     .rotate(x: 90)
    #     .translate(y: @diameter/2.0 - @frame_t/3.0 - @tolerance/2.0, z:  - 0.05)
    #     .rotate(z: 60 + i*120)
    # end

    res += BottomCap.new.translate(z: @frame_t + 10.01) #.debug
    res

    #res += cube(80, 40, 20).center_xy.translate(z: @frame_t).debug
    # extrusion_inner_radius = 5;
    # max_extrusion_radius = 10;
    # thread_spacing = 6;
    # num_turns = 3;
    #
    # epsilon = 0.005;
    # helix_slices=35;
    # extrusion_slices=20;

    # res = nil
    # (0..10).each do |i|
    #   s = square(1.25)
    #     .rotate(z: 45 + (i % 2) * 8)
    #     .translate(x: 8)
    #     .rotate_extrude(a: 180)
    #
    #   if i % 2 == 1
    #     s.rotate(y: 2)
    #   else
    #     s.rotate(y: -2)
    #     s.mirror(y: 1)
    #     s.translate(z: 1.15)
    #   end
    #
    #
    #   s.translate(z: 1.25 * ((i / 2) * 1.0))
    #
    #   res += s
    # end
    # res += PrintedThread.new(
    #   diameter: @diameter/2.0,
    #   length: @frame_t,
    #   pitch: @frame_t/3.0
    # ).show.translate(z: @frame_t)
    # res += square(5)
    #   .rotate(z: 45)
    #   .translate(x: 50)
    #   .rotate_extrude(a: 180)
    #   .rotate(z: 180)
    #   .translate(x: -50)
    #   .rotate(y: -2)
    #
    # res += square(5)
    #   .rotate(z: 45)
    #   .translate(x: 50)
    #   .rotate_extrude(a: 180)
    #   .rotate(z: 180)
    #   .translate(x: -50)
    #   .rotate(y: -2)
    #   .translate(z: 7.2)

    #res = cylinder(d: 6.5, h: 11) + res
    #res -= cube(100)

    # res += square(5)
    #   .rotate(z: 45)
    #   .translate(x: 20)
    #   .rotate_extrude(a: 90)
    #   .rotate(x: -10)
    #   .rotate(y: 20)
    #   .rotate(z: 90)

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
