require_relative 'params'

class Spline < SolidRuby::Printed
  def initialize(steps=2)

    lp = Params::LAMP_PARAMS
    @steps = steps
    @ridge_h = lp[:ridge_height]
    @step_size = lp[:step_size]
  end

  def part(_show)
    res = cube(x: @ridge_h*10.0, y: @ridge_h, z: @step_size * @steps)
      .center_xy +
    cylinder(d: @ridge_h*1.5, h: @step_size * @steps)
       .translate(x: -@ridge_h*5.0, y: -@ridge_h/4.0) +
     cylinder(d: @ridge_h*1.5, h: @step_size * @steps)
       .translate(x: @ridge_h*5.0, y: -@ridge_h/4.0)

    # lay flat for output
    unless (_show)
      res.rotate(x: -90)
        .translate(z: @ridge_h/2.0)
    end

    res
  end
end
