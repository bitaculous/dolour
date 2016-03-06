# The Dolour class, inherited from `Task`.
class Dolour < Task
  desc 'extract', 'Extract the dominate colors'
  def extract
    root   = File.expand_path '../', __dir__
    images = File.expand_path 'images', root

    Dir["#{images}/*.*"].each do |image|
      invoke 'miro:extract', [image]
      invoke 'colorscore:extract', [image]
    end
  end
end