module Hiroshimarb

  # コマンドを実装する際の基底クラス
  class Command

    class << self

      def commands
        @commands ||= {}
      end

      def inherited(subclass)
        name = subclass.command_name
        commands[name] = subclass
      end

      def find(command_name)
        commands[command_name.to_sym].new
      end

      def command_name
        name.split('::').last.downcase.to_sym
      end
    end

    def call(arg)
    end

  end
end
