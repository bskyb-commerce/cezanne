# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cezanne/version'

Gem::Specification.new do |spec|
  spec.name          = "cezanne"
  spec.version       = Cezanne::VERSION
  spec.authors       = ["Sky Haiku"]
  spec.email         = ["skyhaikuteam@gmail.com"]
  spec.summary       = %q{Visual regression testing tool}
  spec.description   = %q{Let Cezanne help you make sure your views look alright}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "selenium-webdriver"

  spec.add_dependency "rmagick"
  spec.add_dependency "dropscreen"
end
