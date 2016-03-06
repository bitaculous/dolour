require 'miro'

# The Miro class, inherited from `Task`.
class Miro < Task
  desc 'extract <IMAGE>', 'Extract the dominate colors with Miro'
  def extract(image, color_count = 5, resolution = '512x512', method = 'histogram', image_magick_path = '/usr/local/bin/convert')
    if File.exist? image
      log "Extracting the dominate colors from `#{image}` with Miro...", :yellow

      ::Miro.options[:color_count]       = color_count
      ::Miro.options[:resolution]        = resolution
      ::Miro.options[:method]            = method
      ::Miro.options[:image_magick_path] = image_magick_path

      colors = ::Miro::DominantColors.new image

      puts colors.to_hex
    end
  end
end