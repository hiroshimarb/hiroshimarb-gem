require "hiroshimarb/version"
require 'rubygems'
require 'launchy'

module Hiroshimarb
  class << self
    def execute(argv)
      if argv.first == 'open'
        Launchy.open 'http://hiroshimarb.github.com'
      else
        puts <<EOD
Usage: hiroshimarb command
Available commands:
  open    : open the Hiroshima.rb website in a web browser
EOD
      end
    end
  end
end
