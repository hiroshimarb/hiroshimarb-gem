# -*- coding: utf-8 -*-
require 'hiroshimarb/event'

module Hiroshimarb
  describe Event do
    describe '.all' do
      subject { Event.all }
      it { should have(5).items }
    end

    describe '.recent' do
      subject { Event.recent }
      its(:title) { should eq('広島Ruby勉強会 #031') }
      it '日付は2012年 4月6日' do
        date = subject.start_datetime
        expect(date.strftime('%Y-%m-%d')).to eq('2013-04-06')
      end
    end
  end
end
