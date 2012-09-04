require 'hiroshimarb/member'

module Hiroshimarb
  class DSL < BasicObject
    def initialize
      @members = []
    end

    def member(&block)
      @member = ::Hiroshimarb::Member.new
      @members << @member
      block.call if block
      @members
    end

    [:name, :github, :twitter, :website, :profile].each do |method_name|
      define_method method_name do |value|
        proxy_name = "#{method_name}="
        @member.send proxy_name, value
      end
    end
  end
end
