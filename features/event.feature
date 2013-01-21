# language: ja
機能: hiroshima.rb のイベント情報を表示する
  サブコマンド `event` を使用すると hiroshima.rb の近日のイベントを調べることができる。

     $ hiroshimarb event

   シナリオ: もっとも近いイベントについての表示
     もし "hiroshimarb event" を実行
     ならば 以下の内容を表示:
       """
       2012-12-01 (土) 14:00-18:00 広島Ruby勉強会 #026

         http://hiroshimarb.github.com/blog/2012/11/16/hiroshimarb-26/


       """
   シナリオ: イベントについての表示
     もし "hiroshimarb event all" を実行
     ならば 以下の内容を表示:
       """
       2012-11-03 (土) 14:00-18:00 広島Ruby勉強会 #025

         http://hiroshimarb.github.com/blog/2012/10/15/hiroshimarb-25/

       2012-12-01 (土) 14:00-18:00 広島Ruby勉強会 #026

         http://hiroshimarb.github.com/blog/2012/11/16/hiroshimarb-26/


       """
