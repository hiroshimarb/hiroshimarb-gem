# -*- coding: utf-8 -*-
require 'hiroshimarb/member'

module Hiroshimarb
  describe Member do
    describe '.all' do
      subject { Member.all }
      it { should have(3).items }
    end

    describe '#to_s' do
      subject { member.to_s }

      let(:member) do
        m = Member.new
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
end
