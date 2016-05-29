# The Dolour class, inherited from `Task`.
class Dolour < Task
  desc 'extract', 'Extract the dominate colors'
  def extract(color_count = 4)
    root   = File.expand_path '../', __dir__
    images = File.expand_path 'images', root

    Dir["#{images}/*.*"].each do |image|
      # invoke 'miro:extract', [image, color_count]
      system "thor miro:extract #{image} #{color_count}"

      # invoke 'colorscore:extract', [image, color_count]
      system "thor colorscore:extract #{image} #{color_count}"
    end
  end
end