# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sparkly/version'

Gem::Specification.new do |spec|
  spec.name          = "sparkly"
  spec.version       = Sparkly::VERSION
  spec.authors       = ["TODO: Autor name"]
  spec.email         = ["TODO: Email address"]
  spec.description   = %q{Okinawa Star Infomation}
  spec.summary       = %q{Okinawa Star Infomation}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec+features)})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "sinatra"
  spec.add_runtime_dependency "nokogiri"
  spec.add_runtime_dependency "haml"
  spec.add_runtime_dependency "thin"
  spec.add_runtime_dependency "rinne"
end
