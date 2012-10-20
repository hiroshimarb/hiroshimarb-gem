require 'hiroshimarb/command'

class Open < Hiroshimarb::Command
end

module Hiroshimarb
  describe '.find' do
    subject { Command.find command }
    let(:command) { 'open' }
    it { should be_kind_of(Command) }
    it { should be_kind_of(Open) }
  end

  describe '.commands' do
    subject { Command.commands }
    it { should eq(open: Open) }
  end
end
