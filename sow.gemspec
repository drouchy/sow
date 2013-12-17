# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sow/version'

Gem::Specification.new do |spec|
  spec.name          = "sow"
  spec.version       = Sow::VERSION
  spec.authors       = ["David Rouchy"]
  spec.email         = ["drouchy@gmail.com"]
  spec.description   = %q{ease the pain while working with remote servers}
  spec.summary       = %q{facilate running command on remote servers. Can even bounce on multiple servers}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'methadone', '~> 1.3.1'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rdoc'
  spec.add_development_dependency 'aruba'
  spec.add_development_dependency 'rake', '~> 0.9.2'
  spec.add_development_dependency 'rspec', '~> 2.14.1'
end
