require 'hiroshimarb/commands/open.rb'

module Hiroshimarb::Commands
  def self.load_commands
    commands_dir = File.join(File.dirname(__FILE__), "commands")
    path = File.join(commands_dir, "*.rb")
    Dir.glob(path).each do |file|
      require file
    end
  end
end
