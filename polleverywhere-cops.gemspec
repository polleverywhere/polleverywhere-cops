# -*- encoding: utf-8 -*-
require File.expand_path("../lib/rubocop/polleverywhere/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name             = "polleverywhere-cops"
  gem.version          = RuboCop::PollEverywhere::Version::STRING
  gem.license          = "MIT"
  gem.authors          = ["Poll Everywhere"]
  gem.email            = ["geeks@polleverywhere.com"]
  gem.homepage         = "https://github.com/polleverywhere/polleverywhere-cops"
  gem.summary          = "Custom RuboCop cops for Poll Everywhere"
  gem.description      = "Custom RuboCop cops for Poll Everywhere"
  gem.files            = `git ls-files`.split("\n")
  gem.require_paths    = ["lib"]
  gem.extra_rdoc_files = ["README.md"]
  gem.rdoc_options     = ["--main", "README.md"]

  gem.add_runtime_dependency "rubocop", ">= 0.51.0"
end
