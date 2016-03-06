#!/usr/bin/env rake

require 'miro'

namespace :miro do
  pastel = Pastel.new

  desc 'Extract dominate colors from with Miro'
  task :run do
    Miro.options[:method]            = 'histogram'
    Miro.options[:color_count]       = 2
    Miro.options[:resolution]        = '256x256'
    Miro.options[:image_magick_path] = '/usr/local/bin/convert'

    root   = File.expand_path '../', __dir__
    images = File.expand_path 'images', root
    sample = File.expand_path 'sample.png', images

    message = pastel.yellow "Extracting dominate colors from `#{sample}`..."

    puts message

    colors = Miro::DominantColors.new sample

    puts colors.to_hex
  end
end