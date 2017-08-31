class TopCap < Cap
  def initialize
    super
    @pos_ridge = false
    @vent_w = 3
    @vent_l = 10
  end

  def part(_show)

    res = super(_show)

    res -= cylinder(d: @diameter/2.5, h: @frame_t, fn: 32)
      .rotate(z: 30)
      .translate(z: @frame_t/3.0)#.debug

    (0..5).each do |i|
      res -= cube(x: @vent_l, y: @vent_w, z: @frame_t/2.0).center_xy
        .translate(y: @diameter/3.0,
          z: -0.01)
        .rotate(z: 30 + i*360/6)
    end

    (0..5).each do |i|
      res -= cylinder(d: @vent_w*2.0, h: @diameter/3.0)
        .rotate(x: 90, z: 0)
        .translate(z: @frame_t/2.0)
        .rotate(z: i*360/6)
    end

    res -= circle(d: @vent_w*2.0)
      .translate(x: @diameter/3.0 + @vent_w/2.0)
      .rotate_extrude
      .translate(z: @frame_t/2.0)

    #res -= cube(@diameter*1.5).center_xy.translate(z: -@diameter*1.5 + 7.2)

    if _show
      res.rotate(x: 180).translate(z: @frame_t)
    end

    res
  end
end
