# language: ja
機能: hiroshima.rb のイベント情報を表示する
  サブコマンド `event` を使用すると hiroshima.rb の近日のイベントを調べることができる。

     $ hiroshimarb event

   シナリオ: イベントについての表示
     もし "hiroshimarb event" を実行
     ならば 以下の内容を表示:
       """
       2012-11-03 (土) 14:00-18:00 広島Ruby勉強会 #025

         http://hiroshimarb.github.com/blog/2012/10/15/hiroshimarb-25/


       """
