# -*- coding: utf-8 -*-
module Hiroshimarb::Commands
  class Event < Hiroshimarb::Command
    def call(*args)
      sub_command = args.first
      if sub_command == "all"
        puts all
      else
        puts recent
      end
    end

    def recent
      <<EOD
2012-12-01 (土) 14:00-18:00 広島Ruby勉強会 #026

  http://hiroshimarb.github.com/blog/2012/11/16/hiroshimarb-26/
EOD
    end

    def all
      rest = <<EOD
2012-11-03 (土) 14:00-18:00 広島Ruby勉強会 #025

  http://hiroshimarb.github.com/blog/2012/10/15/hiroshimarb-25/

EOD
      rest + recent
    end
  end
end
