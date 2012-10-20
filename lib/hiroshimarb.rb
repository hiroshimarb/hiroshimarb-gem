require "hiroshimarb/version"

module Hiroshimarb
  autoload(:Command, "hiroshimarb/command")
  autoload(:Commands, "hiroshimarb/commands")

  class << self
    def execute(argv)
      Commands.load_commands
      return help if argv.count == 0

      first = argv.shift
      if command = Command.find(first)
        command.call *argv
      else
        help
      end
    end

    def help(*argv)
      Commands::Help.new.call *argv
    end
  end
end
