# -*- coding: utf-8 -*-
module Hiroshimarb
  # メンバーを表現するクラス
  autoload "DSL", 'hiroshimarb/dsl'
  class Member
    class << self
      def all
        @members ||= load
      end

      def load
        relative_path = "..","..","resource","member.rb"
        resource_file = File.join(File.dirname(__FILE__), relative_path)
        # resource の中で Member.define が呼ばれる
        require resource_file
        @members
      end

      def define(&block)
        @members = DSL.new.instance_exec &block
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

    def to_rdf
      require 'rdf'
      require 'rdf/vocab'
      schema = ::RDF::Vocab::SCHEMA

      subject = ::RDF::URI.new("http://hiroshimarb.github.io/member/#{github}")
      ::RDF::Graph.new.tap do |graph|
        [
         [ ::RDF.type, schema.Person],
         [ schema.name, name],
         [ schema.url, ::RDF::URI.new("http://github.com/#{github}") ],
         [ schema.url, ::RDF::URI.new("http://twitter.com/#{twitter}") ],
         [ schema.description, profile ],
         [ schema.url, ::RDF::URI.new(website) ],
        ].each do |p, o|
        graph << ::RDF::Statement.new(subject, p, o)
        end
      end
    end
  end
end
