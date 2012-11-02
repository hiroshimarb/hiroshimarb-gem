require 'hiroshimarb/member'

module Hiroshimarb::Commands
  class Member < Hiroshimarb::Command
    def call(*args)
      Hiroshimarb::Member.all.reduce(nil) do |acc, member|
        puts acc if acc
        puts member.to_s
        acc = '-'*80
      end
    end
  end
end
