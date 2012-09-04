require 'rubygems'
require 'launchy'

module Hiroshimarb
  # コマンドラインから呼びだされる場合のサブコマンドを実装する
  module CLI
    # Hiroshim.rbのウェブサイトをブラウザで開く
    def open
      Launchy.open 'http://hiroshimarb.github.com'
    end

    # Hiroshim.rbの情報を標準出力へ表示
    def info
      help
    end

    # Hiroshima.rbのメンバーを標準出力へ表示
    def member
      help
    end

    def help
        puts <<EOD
Usage: hiroshimarb command
Available commands:
  open    : open the Hiroshima.rb website in a web browser
EOD
    end
  end
end
