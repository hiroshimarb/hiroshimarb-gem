# -*- coding: utf-8 -*-
require File.expand_path('../lib/hiroshimarb/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tomohiko Himura"]
  gem.email         = ["eiel.hal@gmail.com"]
  gem.description   = %q{provide `hiroshimarb` command. hiroshimarb is Hiroshima.rb. Hiroshima.rb is local community of Ruby in Hiroshima/Japan}
  gem.summary       = %q{provide `hiroshimarb` command. hiroshimarb is Hiroshima.rb}
  gem.homepage      = "http://github.com/hiroshimarb/hiroshimarb-gem"
  gem.rubyforge_project = 'github'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "hiroshimarb"
  gem.require_paths = ["lib"]
  gem.version       = Hiroshimarb::VERSION

  gem.add_dependency "launchy", "~> 2.1.2"

  gem.add_development_dependency "rspec", "~> 2.11"
end
