# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'honeybadger/thor/version'

Gem::Specification.new do |spec|
  spec.name          = "honeybadger-thor"
  spec.version       = Honeybadger::Thor::VERSION
  spec.authors       = ["Ryan Sonnek"]
  spec.email         = ["ryan@codecrate.com"]
  spec.description   = %q{Notify Honeybadger of exceptions in Thor tasks}
  spec.summary       = %q{Record exceptions for errors in Thor tasks}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor'
  spec.add_dependency 'honeybadger'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
