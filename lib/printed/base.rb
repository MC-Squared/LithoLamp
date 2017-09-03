class Base < SolidRuby::Printed
  def initialize
    lp = Params::LAMP_PARAMS
    @diameter = lp[:diameter]
    @base_diameter = 200
    @tolerance = lp[:tolerance]
    @frame_t = lp[:frame_thickness]
    @base_h = @frame_t / 2.0
    @ridge_h = lp[:ridge_height]

    @power_cable_t = 7
    @power_switch_w = 5
    @power_switch_l = 10
    #@step_size = lp[:step_size]
    #@pos_ridge = false
    #@tie_width = lp[:cable_tie_width]
    #@anchor_offset = 0
  end

  def part(_show)
    res = cylinder(d: @base_diameter, h: @base_h)

    # power cable entry
    res -= cylinder(h: @base_diameter, d: @power_cable_t + @tolerance)
      .rotate(y: 90)
      .translate(z: @base_h/2.0)

    res -= cylinder(d: @power_cable_t * 3, h: @base_h)
      .translate(z: @base_h/2.0)

    # power switch placement
    res -= cylinder(h: @base_diameter/2.0 - @frame_t/2.0, d: @power_cable_t + @tolerance)
      .rotate(y: -90)
      .translate(x: 0.01, z: @base_h/2.0) #.debug

    res -= cube(x: @power_switch_w, y: @power_switch_l, z: @base_h/2.0)
      .center_y
      .translate(x: -@base_diameter/2.0 + @frame_t/2.0, z: @base_h/2.0 + 0.01) #.debug

    # locking tabs
    tabs = nil
    (0..5).each do |i|
      tabs += cube(x: @ridge_h * 2.0, y: @ridge_h * 2.0, z: @ridge_h)
        .translate(y: @diameter/4.0 - @ridge_h*2.0, z: @base_h - 0.01)
        .rotate(z: i * 60) #.debug
    end

    tabs -= square(@ridge_h + @tolerance)
      .rotate(z: 45)
      .translate(x: @diameter/4.0)
      .rotate_extrude
      .translate(z: @base_h - Math.sqrt((@ridge_h/2.0)**2 + (@ridge_h/2.0)**2))

    res += tabs

    res += BottomCap.new.translate(z: @frame_t + 10.01) #.debug
    res
  end
end
