# -*- coding: utf-8 -*-
require 'hiroshimarb/cli'

describe Hiroshimarb::CLI do
  let(:cli) do
    Object.new.extend Hiroshimarb::CLI
  end

  let(:stdout) do
    $stdout.seek 0
    $stdout.read
  end

  before :each do
    $stdout = StringIO.new
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

    context '引数 "ipad"' do
      let(:arg) { "ipad" }
      it "広島弁吹替シリーズのサイトを表示" do
        Launchy.should_receive(:open).with('http://kita.dyndns.org/wiki/?%E5%BA%83%E5%B3%B6%E5%BC%81%E5%90%B9%E3%81%8D%E6%9B%BF%E3%81%88%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA')
        subject
      end
    end

    context '引数 "city"' do
      let(:arg) { 'city' }
      it '広島市のサイトを表示' do
        Launchy.should_receive(:open).with('http://www.city.hiroshima.lg.jp')
        subject
      end
    end

    context '引数 "pref"' do
      let(:arg) { 'pref' }
      it '広島市のサイトを表示' do
        Launchy.should_receive(:open).with('http://www.pref.hiroshima.lg.jp')
        subject
      end
    end
  end

  describe '#info' do
    subject { cli.info }
    it "Hiroshima.rbについて出力される" do
      subject
      expect(stdout).to match("Hiroshima.rbについて")
    end

    it "イベントについて出力される" do
      subject
      expect(stdout).to match("勉強会やもくもくする会")
    end
  end

  describe '#member' do
    subject { cli.member }
    it 'Hiroshim.rbのメンバーを出力' do
      Hiroshimarb::Member.stub(:all) { %W{hoge mogu}  }
      subject
      expect(stdout).to eq("hoge\n" + '-'*80 + "\nmogu\n")
    end
  end

  describe '#help' do
    subject { cli.help }
    it '使い方を出力' do
      subject
      expect(stdout).to match("Usage")
    end
  end
end
