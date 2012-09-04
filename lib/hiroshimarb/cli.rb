module Hiroshimarb
  # コマンドラインから呼びだされる場合のサブコマンドを実装する
  module CLI
    def open
      Launchy.open 'http://hiroshimarb.github.com'
    end

    def Help
        puts <<EOD
Usage: hiroshimarb command
Available commands:
  open    : open the Hiroshima.rb website in a web browser
EOD
    end
  end
end
