# require 'chunky_png'
#
# # Convert a greyscale PNG file to a openscad heightmap data file
#
#  lheight = 0.3 # makerbot layer height
#
#  farg = Array.new
#  ARGV.each do|a|
#   farg << a
# end
#  puts "input: " + farg[0]
#
# hmap = Hash.new
# image = ChunkyPNG::Image.from_file(farg[0])
# # (0..image.dimension.width-1).each do |x|
# #   (0..image.dimension.height-1).each do |y|
# #     #currentRed = ChunkyPNG::Color.r(image[x,y])
# #     #currentGreen = ChunkyPNG::Color.g(image[x,y])
# #     #currentBlue = ChunkyPNG::Color.b(image[x,y])
# #     bb = ChunkyPNG::Color.b(image[x,y])
# #     hmap[bb] = bb
# #     #print bb
# #     #print " "
# #     end
# #
# #     #puts
# #     end
# #
# #     puts
# #     puts hmap.length
# #
# #     marr = hmap.keys.sort
# #     tmap = Hash.new
# #     index = 1
# #     marr.each do |k|
# #         tmap[k] = index
# #         index = index + 1
# #     end
# #
# #     puts tmap
#
# bmax = 0
#
#
# outfile = 'oscadMap.dat'
#  File.open(outfile, 'w') do |f2|
#   # use "\n" for two lines of text
#   (0..image.dimension.width-1).each do |x|
#   (0..image.dimension.height-1).each do |y|
#     #next if x % 3 == 0 || y % 3 == 0
#     bb = (ChunkyPNG::Color.r(image[x,y]) * 0.2126) +
#       (ChunkyPNG::Color.g(image[x,y]) * 0.7152) +
#       (ChunkyPNG::Color.b(image[x,y]) * 0.0722)
#     #bb = bb.to_i + 1
#     # puts bb
#     bbr = (1 - (bb / 256.0)) * 3.25 + 0.75
#
#     bbr += 10 * Math.cos((x / image.dimension.width.to_f) * (2 * Math::PI))
#
#     puts image.dimension.width
#
#     # 1 to 8
#     bbr = bbr.round(1) # (bbr / 0.1).ceil * 0.1
#     #bbr = (((bbr / 10.0) / 3) * 30.0).round(1)
#     bmax = bbr if bbr > bmax
#     # puts bmax
#     f2.print bbr.to_s + " "
#   end
#     f2.puts
# end
#
#   f2.flush
#   f2.close
#   puts "output: " + outfile
# end
