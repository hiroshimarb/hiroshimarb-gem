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
