# -*- coding: utf-8 -*-
require 'spec_helper'
require 'hiroshimarb/event'

module Hiroshimarb
  describe Event do
    describe '.all' do
      subject { Event.all }
      it { should have(10).items }
    end

    describe '.recent' do
      subject { Event.recent }
      its(:title) { should eq('広島 Ruby 勉強会 #035') }
      it '日付は2013年 11月2日' do
        date = subject.start_datetime
        expect(date.strftime('%Y-%m-%d')).to eq('2013-11-02')
      end
    end
  end
end
