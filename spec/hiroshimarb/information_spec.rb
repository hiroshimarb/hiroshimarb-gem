# -*- coding: utf-8 -*-
require 'hiroshimarb/information'

module Hiroshimarb
  describe  Information do
    describe '.information' do
      subject { Information.information }

      it "Hiroshima.rbについての情報を返す" do
        should match("Hiroshima.rb")
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
