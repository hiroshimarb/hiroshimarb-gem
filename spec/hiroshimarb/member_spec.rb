# -*- coding: utf-8 -*-
require 'hiroshimarb/member'

describe Hiroshimarb::Member do
  before :each do
    include Hiroshimarb
  end

  describe '.all' do
    it
  end

  describe '#to_s' do
    subject { member.to_s }

    let(:member) do
      m = Hiroshimarb::Member.new
      m.name = 'ruby Hiroshima'
      m.github = 'hiroshimarb'
      m.website = 'http://hiroshimarb.github.com/'
      m.profile = 'Hiroshima.rb'
      m
    end

    it do
      should eq(<<EOD)
   name       ruby Hiroshima
   github id  hiroshimarb
   twitter id 
   website    http://hiroshimarb.github.com/
   profile
     Hiroshima.rb
EOD
    end
  end
end
