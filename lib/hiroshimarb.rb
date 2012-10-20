require "hiroshimarb/version"

module Hiroshimarb
  autoload(:Command, "hiroshimarb/command")
  autoload(:Commands, "hiroshimarb/commands")

  class << self
    def execute(argv)
      return help if argv.count == 0

      first = argv.shift
      if command = Command.find(first)
        command.call *argv
      else
        help
      end
    end
  end
end
