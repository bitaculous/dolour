require 'colorscore'

# The Colorscore class, inherited from `Task`.
class Colorscore < Task
  desc 'extract <IMAGE>', 'Extract the dominate colors with Colorscore'
  def extract(image)
    if File.exist? image
      log "Extracting the dominate colors from `#{image}` with Colorscore...", :yellow

      histogram = ::Colorscore::Histogram.new image

      histogram.scores.each do |score|
        puts score.to_s
      end
    end
  end
end