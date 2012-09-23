require "hiroshimarb/version"
require 'hiroshimarb/cli'

module Hiroshimarb
  extend CLI

  autoload(:Information, "hiroshimarb/information")

  class << self
    def execute(argv)
      return help if argv.count == 0

      command = argv.shift
      case command
      when 'open'
        open *argv
      when 'info'
        info
      when 'member'
        member
      else
        help
      end
    end
  end
end
