# -*- coding: utf-8 -*-
require 'hiroshimarb/cli'

describe Hiroshimarb::CLI do
  let(:cli) do
    Object.new.extend Hiroshimarb::CLI
  end

  describe '#open' do
    subject { cli.open(arg) }

    context '引数なし' do
      let(:arg) { nil }
      it "Hiroshima.rbのウェブサイトを表示" do
        Launchy.should_receive(:open).with('http://hiroshimarb.github.com')
        subject
      end
    end

    context '引数 "oc-h"' do
      let(:arg) { "oc-h" }
      it "おしい広島県のウェブサイトを表示" do
        Launchy.should_receive(:open).with('http://oc-h.jp')
        subject
      end
    end
  end

  describe '#info' do
    it 'Hiroshim.rbの情報を出力'
  end

  describe '#member' do
    subject { cli.member }
    it 'Hiroshim.rbのメンバーを出力' do
      Hiroshimarb::Member.stub(:all) { %W{hoge mogu}  }
      $stdout = StringIO.new
      subject
      $stdout.seek 0
      expect($stdout.read).to eq("hoge\n" + '-'*80 + "\nmogu\n")
    end
  end

  describe '#help' do
    subject { cli.help }
    it '使い方を出力' do
      $stdout = StringIO.new
      subject
      $stdout.seek 0
      expect($stdout.read).to match("Usage")
    end
  end
end
