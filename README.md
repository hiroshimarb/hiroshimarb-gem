# Hiroshima.rb [![Build Status](https://secure.travis-ci.org/hiroshimarb/hiroshimarb-gem.png)](http://travis-ci.org/hiroshimarb/hiroshimarb-gem)

この gem は Hiroshima.rb が提供する gem です。
基本的にネタです。
まずは hiroshimarb コマンドを提供したいと思いますが、未定です。

## Installation

    $ gem install hiroshimarb

## Usage

### open コマンド

    $ hiroshimarb open

ブラウザで Hiroshima.rb のウェブサイトを表示します。

`open` コマンドにはサブコマンドが用意されていて、指定するサブコマンドによって開くサイトが変化します。
用意されているサブコマンドは以下の通りです。

<table>
    <tr>
        <td>hiroshimarb</td><td>Hiroshima.rb</td>
    </tr>
    <tr>
        <td>ipad</td><td>広島弁吹替シリーズ</td>
    </tr>
    <tr>
        <td>oc-h</td><td>おしい広島県</td>
    </tr>
    <tr>
        <td>city</td><td>広島市</td>
    </tr>
    <tr>
        <td>pref</td><td>広島県</td>
    </tr>
</table>

### member コマンド

    $ hiroshimarb member

Hiroshima.rb のメンバー一覧を表示します。

### info コマンド

    $ hiroshimarb info

Hiroshima.rb についての情報を表示します。

### event コマンド

    $ hiroshimarb event

Hiroshima.rb の次回のイベントについての情報を表示します。

### aa コマンド

    $ hiroshimarb aa

Hiroshima.rb のアスキーアートを表示します。


### convert コマンド

    $ hiroshimarb convert 'いい天気ですね'

広島弁に変換された文字列を表示します。

