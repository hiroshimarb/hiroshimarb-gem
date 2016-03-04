require 'hiroshimarb/rdf'

module Hiroshimarb::Commands
  class RDF < Hiroshimarb::Command
    def call(*args)
      puts Hiroshimarb::RDF.to_json
    end
  end
end
