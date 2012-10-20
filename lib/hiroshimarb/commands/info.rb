require 'hiroshimarb/information'

module Hiroshimarb::Commands
  class Info < Hiroshimarb::Command
    def call(*args)
      puts Hiroshimarb::Information.information
    end
  end
end
