# -*- coding: utf-8 -*-
require 'hiroshimarb/member'
require 'rubygems'
require 'launchy'

module Hiroshimarb
  # コマンドラインから呼びだされる場合のサブコマンドを実装する
  module CLI
    # Hiroshim.rbのウェブサイトをブラウザで開く
    def open(key = nil)
      key ||= 'hiroshimarb'
      url = case key
            when 'hiroshimarb'
              'http://hiroshimarb.github.com'
            when 'oc-h'
              'http://oc-h.jp'
            end
      Launchy.open url
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
          :    oc-h        - おしい広島県
  member  : display the member of Hiroshima.rb
EOD
    end
  end
end
