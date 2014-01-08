# -*- coding: utf-8 -*-
require 'spec_helper'
require 'hiroshimarb/event'

module Hiroshimarb
  describe Event do
    describe '.all' do
      subject { Event.all }
      it { should have(11).items }
    end

    describe '.recent' do
      subject { Event.recent }
      its(:title) { should eq('オープンセミナー2014@広島') }
      it '日付は2014年 2月1日' do
        date = subject.start_datetime
        expect(date.strftime('%Y-%m-%d')).to eq('2014-02-01')
      end
    end
  end
end
