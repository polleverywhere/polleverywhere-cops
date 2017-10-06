# -*- encoding: utf-8 -*-
require File.expand_path("../lib/rubocop/polleverywhere/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name               = "polleverywhere-cops"
  gem.version            = RuboCop::PollEverywhere::Version::STRING
  gem.license            = "MIT"
  gem.authors            = ["Michael Foley"]
  gem.email              = ["mike@polleverywhere.com"]
  gem.homepage           = "https://www.polleverywhere.com"
  gem.summary            = "Custom Poll Everywhere Rubocop cops"
  gem.description        = "Custom Poll Everywhere Rubocop cops"
  gem.files              = `git ls-files`.split("\n")
  gem.require_paths      = ["lib"]
  gem.extra_rdoc_files   = ["README.md"]
  gem.rdoc_options       = ["--main", "README.md"]

  gem.add_runtime_dependency "rubocop", ">= 0.48.1"
end
