# -*- coding: utf-8 -*-
require 'hiroshimarb/dsl'

module Hiroshimarb
  describe DSL do
    let(:dsl) { DSL.new }

    describe '#member' do
      subject { dsl.member }
      it { should have(1).items }
    end

    describe '#name' do
      subject { dsl.name "hoge" }

      it "name が設定できる" do
        dsl.member
        subject
        member = dsl.instance_exec { @member }
        expect(member.name).to eq("hoge")
      end
    end
  end
end
