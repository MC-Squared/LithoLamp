require_relative 'params'

class Spline < SolidRuby::Printed
  def initialize(steps=2, add_tolerance=false)

    lp = Params::LAMP_PARAMS
    @steps = steps
    @spline_w = lp[:spline_width]
    @step_size = lp[:step_size]
    @tolerance = add_tolerance ? lp[:tolerance] : 0
  end

  def part(_show)
    res = cube(x: @spline_w*10.0, y: @spline_w + @tolerance, z: @step_size * @steps)
      .center_xy +
    cylinder(d: @spline_w*1.5 + @tolerance, h: @step_size * @steps)
       .translate(x: -@spline_w*5.0, y: -@spline_w/4.0) +
     cylinder(d: @spline_w*1.5 + @tolerance, h: @step_size * @steps)
       .translate(x: @spline_w*5.0, y: -@spline_w/4.0)

    # lay flat for output
    unless (_show)
      res.rotate(x: -90)
        .translate(z: @spline_w/2.0)
    end

    res
  end
end
