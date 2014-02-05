# -*- coding: utf-8 -*-
require 'spec_helper'
require 'hiroshimarb/event'

module Hiroshimarb
  describe Event do
    describe '.all' do
      subject { Event.all }
      it { should have(12).items }
    end

    describe '.recent' do
      subject { Event.recent }
      its(:title) { should eq('Hiroshima.rb #036') }
      it '日付は2014年 2月1日' do
        date = subject.start_datetime
        expect(date.strftime('%Y-%m-%d')).to eq('2014-02-20')
      end
    end
  end
end
