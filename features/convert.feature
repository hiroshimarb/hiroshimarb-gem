# language: ja
機能: 広島弁に変換する
  サブコマンドに `convert` , 引数に `${日本語}`  を使用すると 広島弁に変換します。

      $ hiroshimarb convert '今日は、いい天気ですね。'

  シナリオ: Hiroshima.rbについて
    もし "hiroshimarb convert '今日は、いい天気ですね。'" を実行
    ならば 以下の内容を表示:
      """
      [広島弁に変換]
      今日は、いい天気じゃの。

      """
