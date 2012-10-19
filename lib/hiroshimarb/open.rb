# -*- coding: utf-8 -*-
require 'rubygems'
require 'launchy'

module Hiroshimarb
  class Open
    class << self
      def open(key = nil)
        key ||= 'hiroshimarb'
        url = case key
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
        Launchy.open url
      end
    end
  end
end
