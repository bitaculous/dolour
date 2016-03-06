require 'miro'

# The Miro class, inherited from `Task`.
class Miro < Task
  desc 'extract <IMAGE>', 'Extract the dominate colors with Miro'
  def extract(image)
    if File.exist? image
      log "Extracting the dominate colors from `#{image}` with Miro...", :yellow

      Miro.options[:method]            = 'histogram'
      Miro.options[:color_count]       = 4
      Miro.options[:resolution]        = '512x512'
      Miro.options[:image_magick_path] = '/usr/local/bin/convert'

      colors = ::Miro::DominantColors.new image

      puts colors.to_hex
    end
  end
end