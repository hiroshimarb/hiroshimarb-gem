# Hiroshima.rb [![Build Status](https://secure.travis-ci.org/hiroshimarb/hiroshimarb-gem.png)](http://travis-ci.org/hiroshimarb/hiroshimarb-gem)

This is the Hiroshima.rb gem.
This is a basic overview.
I would like to supply information on hiroshimarb commands, but not yet.

## Installation

    $ gem install hiroshimarb

## Usage

### open command

    $ hiroshimarb open

Show the Hiroshima.rb website in your web browser.

`open` has some sub-commands for other websites.

<table>
    <tr>
        <td>hiroshimarb</td><td>Hiroshima.rb</td>
    </tr>
    <tr>
        <td>ipad</td><td>A series of iProduct ads dubbed into Hiroshima dialect</td>
    </tr>
    <tr>
        <td>oc-h</td><td>Delicious Hiroshima prefecture! (oc = oshii = delicious)</td>
    </tr>
    <tr>
        <td>city</td><td>Hiroshima city</td>
    </tr>
    <tr>
        <td>pref</td><td>Hiroshima prefecture</td>
    </tr>
</table>

### member command

    $ hiroshimarb member

List the members of Hiroshima.rb.

### info command

    $ hiroshimarb info

Display information about Hiroshima.rb.

### event command

    $ hiroshimarb event

Display info on the next Hiroshima.rb event.

### aa command

    $ hiroshimarb aa

Display ascii art of Hiroshima.rb


### convert command

    $ hiroshimarb convert 'いい天気ですね'

Convert the string into Hiroshima dialect.
Hiroshima dialect features often in Yakuza movies.
The example above will convert "ii tenki desu ne?" (nice weather, isn't it?) into "ii tenki ja no?"
