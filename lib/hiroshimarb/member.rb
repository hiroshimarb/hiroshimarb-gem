# -*- coding: utf-8 -*-
module Hiroshimarb
  # メンバーを表現すくクラス
  class Member
    class << self
      def all
      end
    end

    attr_accessor :name, :github, :website, :twitter, :profile

    def to_s
      <<EOD
   name       #{name}
   github id  #{github}
   twitter id #{twitter}
   website    #{website}
   profile
     #{profile}
EOD
    end
  end
end
