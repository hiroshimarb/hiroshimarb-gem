# -*- coding: utf-8 -*-
require 'hiroshimarb/member'
require 'rubygems'
require 'launchy'
require 'uri'

module Hiroshimarb
  # コマンドラインから呼びだされる場合のサブコマンドを実装する
  module CLI
    # Hiroshim.rbのウェブサイトをブラウザで開く
    def open(key = nil)
      Open.open(key)
    end

    # Hiroshim.rbの情報を標準出力へ表示
    def info
      puts Information.information
    end

    # Hiroshima.rbのメンバーを標準出力へ表示
    def member
      Member.all.reduce(nil) do |acc, member|
        puts acc if acc
        puts member.to_s
        acc = '-'*80
      end
    end

    def help
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
EOD
    end
  end
end
