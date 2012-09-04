# -*- coding: utf-8 -*-
require 'hiroshimarb/cli'

describe Hiroshimarb::CLI do
  let(:cli) do
    Object.new.extend Hiroshimarb::CLI
  end

  describe '#open' do
    subject { cli.open }
    it "Hiroshima.rbのウェブサイトを表示" do
      Launchy.should_receive(:open).with('http://hiroshimarb.github.com')
      subject
    end
  end

  describe '#info' do
    it 'Hiroshim.rbの情報を出力'
  end

  describe '#member' do
    it 'Hiroshim.rbのメンバーを出力'
  end

  describe '#help' do
    it '使い方を出力'
  end
end
