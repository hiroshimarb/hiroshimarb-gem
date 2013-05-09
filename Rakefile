#!/usr/bin/env rake
require "bundler/gem_tasks"
require "bundler/setup"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new("spec")

require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end

task default: [:spec, :features]
