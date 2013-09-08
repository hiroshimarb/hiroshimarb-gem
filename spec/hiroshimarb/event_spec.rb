# -*- coding: utf-8 -*-
require 'spec_helper'
require 'hiroshimarb/event'

module Hiroshimarb
  describe Event do
    describe '.all' do
      subject { Event.all }
      it { should have(9).items }
    end

    describe '.recent' do
      subject { Event.recent }
      its(:title) { should eq('第二回　中国地方DB勉強会') }
      it '日付は2013年 10月5日' do
        date = subject.start_datetime
        expect(date.strftime('%Y-%m-%d')).to eq('2013-10-05')
      end
    end
  end
end
