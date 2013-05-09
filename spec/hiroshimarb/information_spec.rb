# -*- coding: utf-8 -*-
require 'spec_helper'
require 'hiroshimarb/information'

module Hiroshimarb
  describe  Information do
    describe '.information' do
      subject { Information.information }

      it "Hiroshima.rbについて" do
        should match("Hiroshima.rb")
      end

      it "イベントの日程" do
        should match("毎月第一土曜日")
      end
    end

    describe '.about' do
      subject { Information.about }

      it "Hiroshima.rbについて" do
        should match("Hiroshima.rbについて")
      end
    end
  end
end
