# -*- coding: utf-8 -*-
require 'hiroshimarb/command'

module Hiroshimarb::Commands
  class Help < Hiroshimarb::Command
    def call(*args)
      puts <<EOD
Usage: hiroshimarb command
Available commands:
  open    : open the website relevant to Hiroshima in a web browser
          : subcommands
          :    hiroshimarb - Hiroshim.rb [default]
          :    ipad        - 広島弁吹替シリーズ
          :    oc-h        - おしい広島県
          :    city        - 広島市
          :    pref        - 広島県
  info    : disploy information of Hiroshimar.rb
  member  : display the member of Hiroshima.rb
  event   : display next event of Hiroshima.rb
EOD
    end
  end
end
