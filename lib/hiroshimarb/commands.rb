require 'hiroshimarb/commands/open.rb'

module Hiroshimarb::Commands
  def self.load_commands
    commands_dir = File.join(File.dirname(__FILE__), "commonds")
    Dir.glob(commands_dir).each do |file|
      require file
    end
  end
end
