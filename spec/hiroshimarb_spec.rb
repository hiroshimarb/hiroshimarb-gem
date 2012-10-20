# -*- coding: utf-8 -*-
require 'hiroshimarb'
require 'launchy'

describe Hiroshimarb do
  describe '.execute' do
    subject { Hiroshimarb.execute argv }

    let(:argv) { %w{open} }

    before :each do
      Hiroshimarb::Command.should_receive(:find) { proc { "open!!" } }
    end

    it { should eq("open!!") }
  end
end
