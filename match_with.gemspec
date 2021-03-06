# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'match_with/version'

Gem::Specification.new do |spec|
  spec.name          = "match_with"
  spec.version       = MatchWith::VERSION
  spec.authors       = ["kingston"]
  spec.email         = ["jenorish@gmail.com"]
  spec.summary       = %q{human readable regex}
  spec.description   = %q{We can write regex in simple english}
  spec.homepage      = "https://github.com/jenorish/match_with"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "regularity"
end
