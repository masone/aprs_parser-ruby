# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aprs_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "aprs_parser"
  spec.version       = AprsParser::VERSION
  spec.authors       = ["Christian Felder (masone)"]
  spec.email         = ["ema@rh-productions.ch"]

  spec.summary       = "Ruby APRS parser"
  spec.description   = "Ruby APRS parser, wrapper for libfap"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/aprs_parser/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "minitest"  
end
