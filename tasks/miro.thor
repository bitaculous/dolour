require 'miro'
require 'fastimage'

# The Miro class, inherited from `Task`.
class Miro < Task
  desc 'extract <IMAGE> <COLOR_COUNT = 4>', 'Extract the dominate colors with Miro'
  def extract(image, color_count = 4, resolution = 'auto', method = 'pixel_group', image_magick_path = '/usr/local/bin/convert')
    if File.exist? image
      log "Extracting the dominate colors from `#{image}` with Miro...", :yellow

      if resolution == 'auto'
        size = FastImage.size image

        resolution = "#{size[0]}x#{size[1]}"
      end

      ::Miro.options[:color_count]       = color_count
      ::Miro.options[:resolution]        = resolution
      ::Miro.options[:method]            = method
      ::Miro.options[:image_magick_path] = image_magick_path

      colors = ::Miro::DominantColors.new image

      puts colors.to_hex
    end
  end
end