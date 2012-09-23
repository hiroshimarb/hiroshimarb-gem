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
      puts <<EOD
Hiroshima.rbについて
================================================================================

「Hiroshima.rb」はプログラミング言語Rubyの地域コミュニティです。
広島はもちろん、地域に関係なくRubyをもっと盛り上げることを目標に、「ついでに情報交換やスキル向上ができたらいいなぁ。」ぐらいのゆるいコミュニティです。
「楽しいRuby」をモットーに参加者みんなで育ていくコミュニティを目指してます。

イベント
================================================================================

5月と1月を除いた毎月第一土曜日に勉強会やもくもくする会を行っています。

参加資格
================================================================================

* Rubyが好きな人
* Rubyを使っている人
* Rubyに興味ある人
* Rubyで作られたアプリを使用している人
* Ruby以外のLL(Lightweight Language)に興味があったり、使っている人
* プログラミングに関係なくRubyが好きな人
* とにかく広島を盛り上げたい人- 広島に限らず地域コミュニティーを盛り上げたい人
EOD
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
