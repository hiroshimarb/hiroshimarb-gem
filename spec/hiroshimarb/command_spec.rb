require 'hiroshimarb/command'

class Sample < Hiroshimarb::Command
end

module Hiroshimarb
  describe Command do
    describe '.find' do
      subject { Command.find command }
      let(:command) { 'sample' }
      it { should be_kind_of(Command) }
      it { should be_kind_of(Sample) }
    end
  end
end
