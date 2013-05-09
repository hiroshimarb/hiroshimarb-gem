# -*- coding: utf-8 -*-
require 'date'
require 'yaml'

module Hiroshimarb
  # イベントを表現するクラス
  class Event
    attr_accessor :start_datetime, :end_datetime, :url, :title

    class << self
      def all
        @events || load_yaml
      end

      def recent
        all.last
      end

      def resource_file_path
        root = File.join(File.dirname(__FILE__), "..", "..")
        File.join(root, filename)
      end

      def filename
        ENV["resource"] || File.join("resource", "event.yaml")
      end

      def new_with_hash(hash)
        event = Event.new
        event.title = hash["title"]
        event.url = hash["url"]
        event.date_parse hash["date"]
        event
      end

      def load_yaml
        resource_file = resource_file_path
        events = YAML.parse_file(resource_file).to_ruby.map do |event_hash|
          Event.new_with_hash event_hash
        end
        events.sort { |a,b| a.start_datetime <=> b.end_datetime }
      end
    end

    # 2012-12-01 14:00 - 18:00 のような形式を処理する
    def date_parse(datetime_str)
      start_str, end_str = datetime_str.split(' - ')
      date_str = start_str.split(' ')[0]
      end_str = "#{date_str} #{end_str}"
      self.start_datetime = DateTime.parse(start_str + " JST")
      self.end_datetime = DateTime.parse(end_str + " JST")
    end
  end
end
