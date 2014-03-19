# -*- coding: utf-8 -*-
require 'spec_helper'
require 'hiroshimarb/event'

module Hiroshimarb
  describe Event do
    let(:root_path) do
      File.join(File.dirname(__FILE__), '..', '..')
    end

    describe 'ローカルデータで' do
      before :each do
        ENV['resource'] = File.join(root_path, 'resource', 'event.yaml')
      end

      it do
        expect { Event.all }.to_not raise_error
      end
    end

    describe 'テストデータで' do
      before :each do
        ENV['resource'] = File.join(root_path, 'spec', 'resource', 'event.yaml')
      end

      describe '.all' do
        subject { Event.all }
        it { should have(4).items }
      end

      describe '.recent' do
        subject { Event.recent }
        its(:title) { should eq('Hiroshima.rb #037') }
        it '日付は2014年 3月14日' do
          date = subject.start_datetime
          expect(date.strftime('%Y-%m-%d')).to eq('2014-03-06')
        end
      end
    end
  end
end
