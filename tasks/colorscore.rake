#!/usr/bin/env rake

require 'colorscore'
require 'pastel'

namespace :colorscore do
  pastel = Pastel.new

  desc 'Extract dominate colors from with Colorscore'
  task :run do
    include Colorscore

    root   = File.expand_path '../', __dir__
    images = File.expand_path 'images', root
    sample = File.expand_path 'sample.png', images

    message = pastel.yellow "Extracting dominate colors from `#{sample}`..."

    puts message

    histogram = Histogram.new sample

    histogram.scores.each do |score|
      puts score.to_s
    end
  end
end