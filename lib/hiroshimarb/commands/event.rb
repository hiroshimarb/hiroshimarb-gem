# -*- coding: utf-8 -*-
require 'hiroshimarb/event'

module Hiroshimarb::Commands
  class Event < Hiroshimarb::Command
    WDAYS = %w{日 月 火 水 木 金 土}

    def call(*args)
      sub_command = args.first
      if sub_command == "all"
        ::Hiroshimarb::Event.all.each do |event|
          puts event_format(event)
        end
      else
        puts event_format(::Hiroshimarb::Event.recent)
      end
    end

    def event_format(event)
      <<EOD
#{time_format(event)} #{event.title}

  #{event.url}

EOD
    end

    def time_format(event)
      start = event.start_datetime
      ent = event.end_datetime
      wday = WDAYS[start.wday]
      date = start.strftime("%Y-%m-%d")
      format = '%H:%M'
      start_time = start.strftime(format)
      end_time = ent.strftime(format)
      "#{date} (#{wday}) #{start_time}-#{end_time}"
    end
  end
end
