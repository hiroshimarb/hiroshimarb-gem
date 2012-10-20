# -*- coding: utf-8 -*-
require 'hiroshimarb'
require 'launchy'

describe Hiroshimarb do
  describe '.execute' do
    subject { Hiroshimarb.execute argv }
    context "when 第1引数が 'open'" do
      let(:argv) { ['open', 'hiroshimarb'] }

      it "open メソッドが呼ばれる" do
        Launchy.should_receive(:open) { }
        subject
      end
    end

    context "when 第1引数が 'info'" do
      let(:argv) { ['info'] }

      it "info メソッドが呼ばれる" do
        Hiroshimarb.should_receive(:info)
        subject
      end
    end

    context "when 第1引数が 'member'" do
      let(:argv) { ['member'] }

      it "member メソッドが呼ばれる" do
        Hiroshimarb.should_receive(:member)
        subject
      end
    end

    context "when 引数がない場合'" do
      let(:argv) { [] }

      it "help メソッドが呼ばれる" do
        Hiroshimarb.should_receive(:help)
        subject
      end
    end
  end

  describe "Infomation" do
    subject { Hiroshimarb::Information }
    its(:class) { should eq(Class) }
  end
end
