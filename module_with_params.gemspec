# -*- encoding: utf-8 -*-
require File.expand_path('../lib/module_with_params/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Julien Ammous"]
  gem.email         = []
  gem.description   = %q{include module with parameters}
  gem.summary       = %q{module with parameters}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split("\n")
  gem.name          = "module_with_params"
  gem.require_paths = ["lib"]
  gem.version       = ModuleWithParams::VERSION
end
