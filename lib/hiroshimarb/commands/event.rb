# -*- coding: utf-8 -*-
module Hiroshimarb::Commands
  class Event < Hiroshimarb::Command
    def call(*args)
      puts <<EOD
2012-11-03 (土) 14:00-18:00 広島Ruby勉強会 #025

  http://hiroshimarb.github.com/blog/2012/10/15/hiroshimarb-25/

EOD
    end
  end
end
