# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-cheddar/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Will Raxworthy"]
  gem.email         = ["me@willrax.com"]
  gem.description   = %q{Omniauth strategy for Cheddar}
  gem.summary       = %q{Omniauth strategy for Cheddar}
  gem.homepage      = "https://github.com/willrax/omniauth-cheddar"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-cheddar"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Cheddar::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'

end
