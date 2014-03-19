# -*- coding: utf-8 -*-

もし /^"(.*?)" を実行$/ do |command|
  run command
end

ならば /^"(.*?)"という内容を含む$/ do |str|
  all_stdout.should match(str)
end

ならば /^以下の内容を表示:$/ do |string|
  expect(all_stdout).to eq(string)
end

前提 /^イベントの情報源は"(.*?)"$/ do |filename|
  root_path = File.join(File.dirname(__FILE__),"..", "..")
  ENV['resource'] = File.join(root_path, filename)
end
