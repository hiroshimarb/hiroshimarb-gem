require "hiroshimarb/version"
require 'hiroshimarb/cli'

module Hiroshimarb
  extend CLI

  autoload(:Information, "hiroshimarb/information")
  autoload(:Open, "hiroshimarb/open")

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
      when 'event'
        event
      else
        help
      end
    end
  end
end
