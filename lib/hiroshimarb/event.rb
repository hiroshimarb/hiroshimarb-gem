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
        File.join(root, "resource", "event.yaml")
      end

      def load_yaml
        resource_file = resource_file_path
        events = YAML.parse_file(resource_file).to_ruby.map do |event_hash|
          event = Event.new
          event.title = event_hash["title"]
          event.url = event_hash["url"]
          event.date_parse event_hash["date"]
          event
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
