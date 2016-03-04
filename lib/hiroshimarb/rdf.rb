# -*- coding: utf-8 -*-
module Hiroshimarb
  class RDF
    class << self
      def to_rdf
        require 'rdf'
        require 'hiroshimarb/member'
        require 'rdf/vocab'
        schema = ::RDF::Vocab::SCHEMA

        graph = ::RDF::Graph.new
        subject = ::RDF::URI.new("http://hiroshimarb.github.io/")
        [
         [ ::RDF.type, schema.Organization ],
         [ schema.name, 'Hiroshima.rb' ],
        ].each do |p, o|
          graph << ::RDF::Statement.new(subject, p, o)
        end
        Member.load.reduce(graph) do |acc,v|
          acc << v
        end
      end

      def to_json
        require 'json/ld'
        to_rdf.dump(:jsonld, standard_prefixes: true)
      end
    end
  end
end
