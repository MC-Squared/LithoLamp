class Spline < SolidRuby::Printed
  def initialize(lamp_params={}, steps=2)
    #@frame_t = lamp_params[:frame_thickness] || 20
    @ridge_h = lamp_params[:ridge_height] || 2
    @fn = lamp_params[:fn] || 24
    @step_size = lamp_params[:step_size] || 46
    @steps = steps
    @tolerance = lamp_params[:tolerance] || 0.5 * 3
  end

  def part(_show)
    res = cube(x: @ridge_h*10.0, y: @ridge_h, z: @step_size * @steps)
      .center_xy +
    cylinder(d: @ridge_h*1.5, h: @step_size * @steps)
      .translate(x: -@ridge_h*5.0, y: -@ridge_h/4.0) +
    cylinder(d: @ridge_h*1.5, h: @step_size * @steps)
      .translate(x: @ridge_h*5.0, y: -@ridge_h/4.0)

    #puts _show
    # lay flat for output
    unless (_show)
      res.rotate(x: -90)
        .translate(z: @ridge_h/2.0)
    end

    res
  end
end
