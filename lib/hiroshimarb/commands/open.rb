# -*- coding: utf-8 -*-
require 'rubygems'
require 'launchy'
require 'uri'
require 'hiroshimarb/command'

module Hiroshimarb::Commands
  class Open < Hiroshimarb::Command

    @@default_key = 'hiroshimarb'

    def call(*args)
      command = args.first
      command ||= @@default_key
      Launchy.open key2url(command)
    end

    def key2url(key)
      case key
      when 'hiroshimarb'
        'http://hiroshimarb.github.com'
      when 'oc-h'
        'http://oc-h.jp'
      when 'ipad'
        URI.encode 'http://kita.dyndns.org/wiki/?広島弁吹き替えシリーズ'
      when 'city'
        'http://www.city.hiroshima.lg.jp'
      when 'pref'
        'http://www.pref.hiroshima.lg.jp'
      end
    end
  end
end
