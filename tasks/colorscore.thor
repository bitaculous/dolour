require 'colorscore'

# The Colorscore class, inherited from `Task`.
class Colorscore < Task
  desc 'extract <IMAGE>', 'Extract the dominate colors with Colorscore'
  def extract(image, color_count = 5)
    if File.exist? image
      log "Extracting the dominate colors from `#{image}` with Colorscore...", :yellow

      histogram = ::Colorscore::Histogram.new image, color_count

      histogram.scores.each do |score|
        value = score[0]
        hex   = score[1].hex

        puts "##{hex} (#{value})"
      end
    end
  end
end